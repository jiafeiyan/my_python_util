# -*- coding: UTF-8 -*-

import os
import json
import time

from utils import log, Configuration, parse_conf_args, rsync, path, mysql


def sync_stock_prepare_data(context, conf):
    result_code = 0
    logger = log.get_logger(category="SyncEtfBrokerCsvs")

    # 初始化数据库连接
    mysqlDB = mysql(configs=context.get("mysql").get(conf.get("mysqlId")))
    # 查询当前交易日
    sql = """SELECT t1.tradingday FROM siminfo.t_tradesystemtradingday t1 WHERE t1.tradesystemid = %s"""
    res = mysqlDB.select(sql, (conf.get("tradesystemid"),))
    current_trading_day = str(res[0][0])

    # 拷贝目标地址
    base_dir = conf.get("baseDataHome")
    data_target_dir = os.path.join(base_dir, current_trading_day)

    real_dir_path = path.convert(data_target_dir)
    if not os.path.exists(real_dir_path):
        os.makedirs(str(real_dir_path))

    syncs = conf.get("Syncs")
    for sources in syncs:
        for index, file in enumerate(sources['items']):
            file = file.replace("%y", current_trading_day[0:4]) \
                .replace("%m", current_trading_day[4:6]) \
                .replace("%d", current_trading_day[6:8])
            sources['items'][index] = file

    rsync_config = {"type": "get", "target": data_target_dir, "Syncs": syncs}
    logger.info("[sync etf broker csvs with %s] begin" % json.dumps(rsync_config, encoding="UTF-8", ensure_ascii=False))
    try:
        rsync.rsync_groups(context, rsync_config)
    except Exception as e:
        logger.info("[sync etf broker csvs with %s] Error: %s" % (
            json.dumps(rsync_config, encoding="UTF-8", ensure_ascii=False), e))
        result_code = -1

    logger.info("[sync etf broker csvs with %s] end" % json.dumps(rsync_config, encoding="UTF-8", ensure_ascii=False))
    return result_code


def main():
    base_dir, config_names, config_files, add_ons = parse_conf_args(__file__, config_names=["hosts", "mysql"])

    context, conf = Configuration.load(base_dir=base_dir, config_names=config_names, config_files=config_files)

    # process_assert(sync_stock_prepare_data(context, conf))
    result = sync_stock_prepare_data(context, conf)
    # 失败处理，超时等待
    while result == -1:
        logger = log.get_logger(category="SyncEtfBrokerCsvs")
        logger.error("获取文件失败，%s分钟后重新获取" % str(conf.get("time_await")))
        await = float(conf.get("time_await")) * 60
        time.sleep(await)
        result = sync_stock_prepare_data(context, conf)


if __name__ == "__main__":
    main()
