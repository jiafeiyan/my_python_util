#-*- coding: UTF-8 -*-

import sys
import json

from utils import Configuration, mysql, log, parse_conf_args


def mdf_activity(context, conf):
    mysql_pool = mysql(configs=context.get("mysql").get(conf.get("mysqlId")))

    logger = log.get_logger(category="MdfActivity")

    logger.info("[mdf activity with %s] begin" % (json.dumps(conf, encoding="UTF-8", ensure_ascii=False)))

    mysql_conn = mysql_pool.get_cnx()
    mysql_conn.set_charset_collation('utf8')
    try:
        mysql_conn.start_transaction()

        cursor = mysql_conn.cursor()

        for activity in conf["activities"]:
            code = activity["code"]
            name = activity["name"]
            atype = activity["type"]
            initial_balance = activity["balance"]
            join_mode = activity["joinMode"]
            ranking_rule = activity["rankingRule"]
            begin = activity["begin"]
            end = activity["end"]
            status = activity["status"]
            settlement_groups = activity["settlement_groups"]

            logger.info("[mdf activity with {code=%s, name=%s, type=%s, joinMode=%s, rankingRule=%s, begin=%s, end=%s, status=%s, settlementgroups=%s}]......" % (code, name, atype, join_mode, ranking_rule, begin, end, status, settlement_groups))

            sql = '''SELECT activityid FROM siminfo.t_activity WHERE activityid = %s for update'''
            cursor.execute(sql, (code,))
            row = cursor.fetchone()

            if row is None:
                sys.stderr.write("Error: Activity %s is not existed.\n" % (code,))
                logger.error("[gen activity with {code=%s, name=%s, type=%s, joinMode=%s, rankingRule=%s, begin=%s, end=%s, status=%s, settlementgroups=%s}] Error: Activity %s is not existed." % (code, name, atype, join_mode, ranking_rule, begin, end, status, settlement_groups, code))
            else:
                sql = '''UPDATE siminfo.t_activity set activityname = %s, activitytype = %s, initialbalance = %s, joinmode=%s, rankingrule=%s, begindate = %s, enddate = %s, activitystatus = %s, updatedate = DATE_FORMAT(NOW(), '%Y%m%d'), updatetime = DATE_FORMAT(NOW(), '%H:%i:%S')
                                    WHERE activityid = %s'''
                cursor.execute(sql, (name, atype, initial_balance, join_mode, ranking_rule, begin, end, status, code,))

                sql = '''DELETE FROM siminfo.t_activitysettlementgroup WHERE activityid = %s'''
                cursor.execute(sql, (code,))

                relations = []
                for settlement_group_id in settlement_groups:
                    relations.append((code, settlement_group_id,))

                sql = '''INSERT INTO siminfo.t_activitysettlementgroup(activityid, settlementgroupid) values (%s, %s)'''
                cursor.executemany(sql, relations)

        mysql_conn.commit()

    except Exception as e:
        logger.error("[mdf activity with %s] Error: %s" % (json.dumps(conf, encoding="UTF-8", ensure_ascii=False), e))
    finally:
        mysql_conn.close()

    logger.info("[mdf activity with %s] end" % (json.dumps(conf, encoding="UTF-8", ensure_ascii=False)))


def main():
    base_dir, config_names, config_files, add_ons = parse_conf_args(__file__, config_names=["mysql"])

    context, conf = Configuration.load(base_dir=base_dir, config_names=config_names, config_files=config_files)

    mdf_activity(context, conf)


if __name__ == "__main__":
    main()