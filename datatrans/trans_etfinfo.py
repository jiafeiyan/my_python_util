# -*- coding: UTF-8 -*-

import os
import datetime
import json

from utils import log
from utils import parse_conf_args
from utils import path
from utils import Configuration
from utils import mysql
from etf_entity import etfVO


class trans_etfinfo:
    def __init__(self, context, configs):
        log_conf = None if context.get("log") is None else context.get("log").get(configs.get("logId"))
        # 初始化日志
        self.logger = log.get_logger(category="trans_etfinfo", configs=log_conf)
        if log_conf is None:
            self.logger.warning("trans_etfinfo未配置Log日志")
        # 初始化数据库连接
        self.mysqlDB = mysql(configs=context.get("mysql")[configs.get("mysqlId")])
        # 初始化模板路径
        self.initTemplate = context.get("init")[configs.get("initId")]
        self.etf_filename = "reff03"
        self.SettlementGroupID = "SG07"
        self.__transform()

    def __transform(self):
        etf_list = self.__check_file()
        if etf_list is None:
            return

        mysqlDB = self.mysqlDB
        # ===========处理etf_txt写入t_Instrument表==============
        self.__t_Instrument(mysqlDB=mysqlDB, etf_list=etf_list)

        # ===========判断并写入t_InstrumentProperty表(未更新)==============
        self.__t_InstrumentProperty(mysqlDB=mysqlDB, etf_list=etf_list)

        # ===========处理etf_txt写入t_MarginRate表(未更新)==============
        self.__t_MarginRate(mysqlDB=mysqlDB, etf_list=etf_list)

        # ===========处理etf_txt写入t_MarginRateDetail表==============
        self.__t_MarginRateDetail(mysqlDB=mysqlDB, etf_list=etf_list)

        # ===========处理etf_txt写入t_PriceBanding表==============
        self.__t_PriceBanding(mysqlDB=mysqlDB, etf_list=etf_list)

        # ===========处理etf_txt写入t_MarketData表==============
        self.__t_MarketData(mysqlDB=mysqlDB, etf_list=etf_list)

        # ===========处理etf_txt写入t_TradingSegmentAttr表==============
        self.__t_TradingSegmentAttr(mysqlDB=mysqlDB, etf_list=etf_list)

    # 读取处理reff03文件
    def __t_Instrument(self, mysqlDB, etf_list):
        # 判断合约是否已存在
        all_etf = []
        exist_etf = []
        sql_etf = " SELECT InstrumentID " + \
                  " FROM siminfo.t_Instrument " + \
                  " WHERE (InstrumentID, SettlementGroupID) in ("
        for etf in etf_list:
            all_etf.append(etf.SecurityID)
            sql_values = "('" + etf.SecurityID + "', '" + self.SettlementGroupID + "') "
            sql_etf = sql_etf + sql_values + ","
        sql_etf = sql_etf[0:-1] + ")"

        # 查询存在数据
        for etf in mysqlDB.select(sql_etf):
            exist_etf.append(str(etf[0]))

        # 获取差集
        inexist_etf = list(set(all_etf) ^ set(exist_etf))
        self.logger.info("%s%d%s" % ("dbf导入etf条数：", len(all_etf), "条"))
        self.logger.info("%s%d%s" % ("t_Instrument中etf存在：", len(exist_etf), "条"))
        self.logger.info("%s%d%s" % ("t_Instrument中etf不存在：", len(inexist_etf), "条"))

        # 不存在插入记录
        sql_insert_etf = """INSERT INTO siminfo.t_Instrument (
                               SettlementGroupID,ProductID,
                               ProductGroupID,UnderlyingInstrID,
                               ProductClass,PositionType,
                               UnderlyingType,StrikeType,
                               StrikePrice,OptionsType,
                               VolumeMultiple,UnderlyingMultiple,
                               InstrumentID,ExchInstrumentID,InstrumentName,
                               DeliveryYear,DeliveryMonth,AdvanceMonth
                          )VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"""

        # 存在更新记录
        sql_update_etf = """UPDATE siminfo.t_Instrument
                                    SET InstrumentName=%s,StrikePrice=%s,DeliveryYear=%s,
                                        DeliveryMonth=%s,OptionsType=%s,UnderlyingType=%s,StrikeType=%s
                                    WHERE InstrumentID = %s
                                    AND SettlementGroupID = %s"""
        sql_insert_params = []
        sql_update_params = []
        for etf in etf_list:
            if etf.SecurityID in inexist_etf:
                ProductID = 'ETF'
                ProductGroupID = 'ZQ'
                # 判断认购认沽
                if str(etf.CallOrPut) == 'C':
                    OptionsType = '1'
                elif str(etf.CallOrPut) == 'P':
                    OptionsType = '2'
                # 判断欧式美式
                if str(etf.OptionType) == 'E':
                    StrikeType = '1'
                elif str(etf.OptionType) == 'A':
                    StrikeType = '2'
                # 判断ETF还是股票
                if str(etf.UnderlyingType) == 'EBS':
                    UnderlyingType = '1'
                elif str(etf.UnderlyingType) == 'ASH':
                    UnderlyingType = '2'
                sql_insert_params.append((self.SettlementGroupID, ProductID,
                                          ProductGroupID, etf.UnderlyingSecurityID,
                                          "2", "2", UnderlyingType, StrikeType, etf.ExercisePrice, OptionsType,
                                          1, 10000, etf.SecurityID, etf.ContractID, etf.ContractSymbol,
                                          etf.DeliveryDate[0:4], etf.DeliveryDate[4:6], "012"))
                continue
            if etf.SecurityID in exist_etf:
                # 判断认购认沽
                if str(etf.CallOrPut) == 'C':
                    OptionsType = '1'
                elif str(etf.CallOrPut) == 'P':
                    OptionsType = '2'
                # 判断美式欧式
                if str(etf.OptionType) == 'E':
                    StrikeType = '1'
                elif str(etf.OptionType) == 'A':
                    StrikeType = '2'
                # 判断ETF还是股票
                if str(etf.UnderlyingType) == 'EBS':
                    UnderlyingType = '1'
                elif str(etf.UnderlyingType) == 'ASH':
                    UnderlyingType = '2'
                sql_update_params.append((etf.ContractSymbol, etf.ExercisePrice,
                                          etf.DeliveryDate[0:4], etf.DeliveryDate[4:6], OptionsType,
                                          UnderlyingType, StrikeType,
                                          etf.SecurityID, self.SettlementGroupID))
        mysqlDB.executemany(sql_insert_etf, sql_insert_params)
        mysqlDB.executemany(sql_update_etf, sql_update_params)

    # 写入t_InstrumentProperty
    def __t_InstrumentProperty(self, mysqlDB, etf_list):
        # 判断合约是否已存在
        all_etf = []
        exist_etf = []
        sql_etf = " SELECT InstrumentID " + \
                  " FROM siminfo.t_InstrumentProperty " + \
                  " WHERE (InstrumentID, SettlementGroupID) in ("
        for etf in etf_list:
            all_etf.append(etf.SecurityID)
            sql_values = "('" + etf.SecurityID + "', '" + self.SettlementGroupID + "') "
            sql_etf = sql_etf + sql_values + ","
        sql_etf = sql_etf[0:-1] + ")"

        # 查询存在数据
        for etf in mysqlDB.select(sql_etf):
            exist_etf.append(str(etf[0]))

        # 获取差集
        inexist_etf = list(set(all_etf) ^ set(exist_etf))

        self.logger.info("%s%d%s" % ("etf导入t_InstrumentProperty存在：", len(exist_etf), "条"))
        self.logger.info("%s%d%s" % ("etf导入t_InstrumentProperty不存在：", len(inexist_etf), "条"))

        # 插入不存在记录
        sql_Property = """INSERT INTO siminfo.t_InstrumentProperty (
                                      SettlementGroupID,CreateDate,OpenDate,ExpireDate,StartDelivDate,
                                      EndDelivDate,StrikeDate,BasisPrice,MaxMarketOrderVolume,MinMarketOrderVolume,
                                      MaxLimitOrderVolume,MinLimitOrderVolume,PriceTick,
                                      AllowDelivPersonOpen,InstrumentID,InstLifePhase
                                      )VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"""
        sql_params = []
        for etf in etf_list:
            if etf.SecurityID in inexist_etf:
                sql_params.append((self.SettlementGroupID, '99991219', etf.StartDate, etf.ExpireDate, etf.DeliveryDate,
                                   etf.DeliveryDate, etf.ExerciseDate, 0, etf.MktOrdMaxFloor, etf.MktOrdMinFloor,
                                   etf.LmtOrdMaxFloor, etf.LmtOrdMinFloor, etf.TickSize,
                                   0, etf.SecurityID, 1))
        mysqlDB.executemany(sql_Property, sql_params)

    # 写入t_MarginRate
    def __t_MarginRate(self, mysqlDB, etf_list):
        # 判断合约是否已存在
        all_etf = []
        exist_rate = []
        # 获取模板文件
        template = self.__loadJSON(tableName='t_MarginRate')
        if template is None:
            self.logger.error("t_MarginRate template is None")
            return
        sql_marginrate = " SELECT InstrumentID " + \
                         " FROM siminfo.t_MarginRate " + \
                         " WHERE (SettlementGroupID, MarginCalcID, InstrumentID, ParticipantID) in ("
        for etf in etf_list:
            all_etf.append(etf.SecurityID)
            SGID = self.SettlementGroupID
            sql_values = "('" + SGID + \
                         "', '" + template[SGID][1] + \
                         "', '" + etf.SecurityID + \
                         "', '" + template[SGID][3] + \
                         "') "
            sql_marginrate = sql_marginrate + sql_values + ","
        sql_marginrate = sql_marginrate[0:-1] + ")"

        for etf in mysqlDB.select(sql_marginrate):
            exist_rate.append(str(etf[0]))

        # 获取差集
        inexist_rate = list(set(all_etf) ^ set(exist_rate))
        self.logger.info("%s%d%s" % ("etf导入t_MarginRate存在：", len(exist_rate), "个合约"))
        self.logger.info("%s%d%s" % ("etf导入t_MarginRate不存在：", len(inexist_rate), "个合约"))

        # 不存在插入记录
        sql_insert_rate = """INSERT INTO siminfo.t_MarginRate (
                                        SettlementGroupID,
                                        MarginCalcID,
                                        InstrumentID,
                                        ParticipantID
                                    ) VALUES (%s,%s,%s,%s)"""
        sql_insert_params = []
        for etf in etf_list:
            if etf.SecurityID in inexist_rate:
                SGID = self.SettlementGroupID
                sql_insert_params.append((SGID, template[SGID][1], etf.SecurityID, template[SGID][3]))
        mysqlDB.executemany(sql_insert_rate, sql_insert_params)

    # 写入t_MarginRateDetail
    def __t_MarginRateDetail(self, mysqlDB, etf_list):
        # 判断合约是否已存在
        all_etf = []
        exist_detail = []
        # 获取模板文件
        template = self.__loadJSON(tableName='t_MarginRateDetail')
        if template is None:
            self.logger.error("t_MarginRateDetail template is None")
            return
        sql_marginratedetail = " SELECT InstrumentID " + \
                               " FROM siminfo.t_MarginRateDetail " + \
                               " WHERE (SettlementGroupID, TradingRole, HedgeFlag, " \
                               " InstrumentID, ParticipantID, ClientID) in ("
        for etf in etf_list:
            all_etf.append(etf.SecurityID)
            SGID = self.SettlementGroupID
            sql_values = "('" + SGID + \
                         "', '" + template[SGID][1] + \
                         "', '" + template[SGID][2] + \
                         "', '" + etf.SecurityID + \
                         "', '" + template[SGID][9] + \
                         "', '" + template[SGID][10] + \
                         "') "
            sql_marginratedetail = sql_marginratedetail + sql_values + ","
        sql_marginratedetail = sql_marginratedetail[0:-1] + ") "

        for etf in mysqlDB.select(sql_marginratedetail):
            exist_detail.append(str(etf[0]))

        # 获取差集
        inexist_detail = list(set(all_etf) ^ set(exist_detail))
        self.logger.info("%s%d%s" % ("etf导入t_MarginRateDetail存在：", len(exist_detail), "个合约"))
        self.logger.info("%s%d%s" % ("etf导入t_MarginRateDetail不存在：", len(inexist_detail), "个合约"))

        # 不存在插入记录
        sql_insert_detail = """INSERT INTO siminfo.t_MarginRateDetail (
                                      SettlementGroupID,TradingRole,HedgeFlag,
                                      ValueMode,LongMarginRatio,ShortMarginRatio,AdjustRatio1,AdjustRatio2,
                                      InstrumentID,ParticipantID,ClientID
                                  ) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"""
        # 存在更新记录
        sql_update_detail = """UPDATE siminfo.t_MarginRateDetail
                                      SET ValueMode=%s,LongMarginRatio=%s,ShortMarginRatio=%s,
                                          AdjustRatio1=%s,AdjustRatio2=%s
                                      WHERE SettlementGroupID=%s AND TradingRole=%s AND HedgeFlag=%s
                                      AND InstrumentID=%s AND ParticipantID=%s AND ClientID=%s"""
        sql_insert_params = []
        sql_update_params = []
        for etf in etf_list:
            SGID = self.SettlementGroupID
            # 插入记录
            if etf.SecurityID in inexist_detail:
                sql_insert_params.append((SGID, template[SGID][1], template[SGID][2], template[SGID][3],
                                          template[SGID][4], etf.MarginUnit, etf.MarginRatioParam1,
                                          etf.MarginRatioParam2, etf.SecurityID, template[SGID][9], template[SGID][10]))
                continue
            # 更新记录
            if etf.SecurityID in exist_detail:
                sql_update_params.append((template[SGID][3], template[SGID][4], etf.MarginUnit,
                                          etf.MarginRatioParam1, etf.MarginRatioParam2,
                                          SGID, template[SGID][1], template[SGID][2],
                                          etf.SecurityID, template[SGID][9], template[SGID][10]))
        mysqlDB.executemany(sql_insert_detail, sql_insert_params)
        mysqlDB.executemany(sql_update_detail, sql_update_params)

    # 写入t_PriceBanding
    def __t_PriceBanding(self, mysqlDB, etf_list):
        # 判断合约是否存在
        all_etf = []
        exist_price = []
        # 获取模板文件
        template = self.__loadJSON(tableName='t_PriceBanding')
        if template is None:
            self.logger.error("t_PriceBanding template is None")
            return
        sql_pricebanding = "SELECT InstrumentID FROM siminfo.t_PriceBanding " \
                           "WHERE (SettlementGroupID,InstrumentID,TradingSegmentSN) in ("
        for etf in etf_list:
            all_etf.append(etf.SecurityID)
            SGID = self.SettlementGroupID
            sql_values = "('" + SGID + \
                         "', '" + etf.SecurityID + \
                         "', '" + template[SGID][7] + \
                         "') "
            sql_pricebanding = sql_pricebanding + sql_values + ","
        sql_pricebanding = sql_pricebanding[0:-1] + ") "

        for etf in mysqlDB.select(sql_pricebanding):
            exist_price.append(str(etf[0]))

        # 获取差集
        inexist_price = list(set(all_etf) ^ set(exist_price))
        self.logger.info("%s%d%s" % ("etf导入t_PriceBanding存在：", len(exist_price), "个合约"))
        self.logger.info("%s%d%s" % ("etf导入t_PriceBanding不存在：", len(inexist_price), "个合约"))

        # 不存在插入记录
        sql_insert_price = """INSERT INTO siminfo.t_PriceBanding (
                                       SettlementGroupID,PriceLimitType,ValueMode,RoundingMode,
                                       UpperValue,LowerValue,InstrumentID,TradingSegmentSN
                                   ) VALUES (%s,%s,%s,%s,%s,%s,%s,%s) """
        # 存在更新记录
        sql_update_price = """UPDATE siminfo.t_PriceBanding
                                       SET PriceLimitType=%s,ValueMode=%s,RoundingMode=%s,UpperValue=%s,LowerValue=%s
                                       WHERE SettlementGroupID=%s AND InstrumentID=%s AND TradingSegmentSN=%s"""
        sql_insert_params = []
        sql_update_params = []
        for etf in etf_list:
            SGID = self.SettlementGroupID
            if etf.SecurityID in inexist_price:
                sql_insert_params.append((SGID, template[SGID][1], template[SGID][2], template[SGID][3],
                                          template[SGID][4], template[SGID][5], etf.SecurityID,
                                          template[SGID][7]))
                continue
            # 更新记录
            if etf.SecurityID in exist_price:
                sql_update_params.append((template[SGID][1], template[SGID][2], template[SGID][3],
                                          template[SGID][4], template[SGID][5], SGID, etf.SecurityID,
                                          template[SGID][7]))
        mysqlDB.executemany(sql_insert_price, sql_insert_params)
        mysqlDB.executemany(sql_update_price, sql_update_params)

    # 写入t_MarketData
    def __t_MarketData(self, mysqlDB, etf_list):
        # 判断行情信息是否已存在
        all_etf = []
        exist_etf = []
        sql_etf = " SELECT InstrumentID " + \
                  " FROM siminfo.t_MarketData " + \
                  " WHERE  (InstrumentID,SettlementGroupID) in ("
        for etf in etf_list:
            all_etf.append(etf.SecurityID)
            sql_values = "('" + etf.SecurityID + "', '" + self.SettlementGroupID + "') "
            sql_etf = sql_etf + sql_values + ","
        sql_etf = sql_etf[0:-1] + ")"

        # 查询存在数据
        for etf in mysqlDB.select(sql_etf):
            exist_etf.append(str(etf[0]))

        # 获取差集
        inexist_etf = list(set(all_etf) ^ set(exist_etf))
        self.logger.info("%s%d%s" % ("dbf导入etf条数：", len(all_etf), "条"))
        self.logger.info("%s%d%s" % ("t_MarketData中etf存在：", len(exist_etf), "条"))
        self.logger.info("%s%d%s" % ("t_MarketData中etf不存在：", len(inexist_etf), "条"))

        # 不存在插入记录
        sql_insert_market = """INSERT INTO siminfo.t_MarketData (
                                        TradingDay,SettlementGroupID,LastPrice,PreSettlementPrice,
                                        PreClosePrice,UnderlyingClosePx,PreOpenInterest,OpenPrice,
                                        HighestPrice,LowestPrice,Volume,Turnover,
                                        OpenInterest,ClosePrice,SettlementPrice,
                                        UpperLimitPrice,LowerLimitPrice,PreDelta,
                                        CurrDelta,UpdateTime,UpdateMillisec,InstrumentID
                                   )VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"""
        # 存在更新记录
        sql_update_market = """UPDATE siminfo.t_MarketData 
                                    SET PreSettlementPrice = %s,
                                        PreClosePrice = %s,
                                        UnderlyingClosePx=%s,
                                        UpperLimitPrice = %s,
                                        LowerLimitPrice = %s
                                    WHERE SettlementGroupID = %s AND InstrumentID = %s"""
        sql_insert_params = []
        sql_update_params = []
        for etf in etf_list:
            if etf.SecurityID in inexist_etf:
                sql_insert_params.append((self.TradingDay, self.SettlementGroupID, None, etf.SettlePrice,
                                          etf.SecurityClosePx, etf.UnderlyingClosePx, '0', None,
                                          None, None, None, None,
                                          None, None, None,
                                          etf.DailyPriceUpLimit, etf.DailyPriceDownLimit, None,
                                          None, None, None, etf.SecurityID))
                continue
            if etf.SecurityID in exist_etf:
                sql_update_params.append((etf.SettlePrice, etf.SecurityClosePx, etf.UnderlyingClosePx,
                                          etf.DailyPriceUpLimit, etf.DailyPriceDownLimit, self.SettlementGroupID,
                                          etf.SecurityID))
        mysqlDB.executemany(sql_insert_market, sql_insert_params)
        mysqlDB.executemany(sql_update_market, sql_update_params)

    # 读取处理reff03文件
    def __t_TradingSegmentAttr(self, mysqlDB, etf_list):
        # 判断合约是否已存在
        all_etf = []
        exist_segment = []
        sql_segment = " SELECT InstrumentID " + \
                      " FROM siminfo.t_TradingSegmentAttr " + \
                      " WHERE (InstrumentID, SettlementGroupID) in ("
        for etf in etf_list:
            all_etf.append(etf.SecurityID)
            sql_values = "('" + etf.SecurityID + "', '" + self.SettlementGroupID + "') "
            sql_segment = sql_segment + sql_values + ","
        sql_segment = sql_segment[0:-1] + ") GROUP BY InstrumentID"

        # 查询存在数据
        for etf in mysqlDB.select(sql_segment):
            exist_segment.append(str(etf[0]))

        # 获取差集
        inexist_segment = list(set(all_etf) ^ set(exist_segment))
        self.logger.info("%s%d%s" % ("etf导入t_TradingSegmentAttr存在：", len(exist_segment), "个合约"))
        self.logger.info("%s%d%s" % ("etf导入t_TradingSegmentAttr不存在：", len(inexist_segment), "个合约"))

        # 不存在插入记录
        sql_insert_segment = """INSERT INTO siminfo.t_TradingSegmentAttr (
                                                SettlementGroupID,TradingSegmentSN,
                                                TradingSegmentName,StartTime,
                                                InstrumentStatus,InstrumentID
                                            ) VALUES (%s,%s,%s,%s,%s,%s)"""
        # 存在更新记录
        sql_update_segment = """UPDATE siminfo.t_TradingSegmentAttr
                                                SET TradingSegmentName=%s,
                                                 StartTime=%s,InstrumentStatus=%s
                                                WHERE SettlementGroupID=%s AND InstrumentID=%s AND TradingSegmentSN=%s"""
        sql_insert_params = []
        sql_update_params = []
        SegmentAttr = self.__loadJSON(tableName='t_TradingSegmentAttr')
        if SegmentAttr is None:
            return
        for etf in etf_list:
            SGID = self.SettlementGroupID
            # 插入记录
            if etf.SecurityID in inexist_segment and SGID in SegmentAttr:
                for attr in SegmentAttr[SGID]:
                    sql_insert_params.append((
                        SGID, attr[1], attr[2], attr[3], attr[4], etf.SecurityID
                    ))
                continue
            # 更新记录
            if etf.SecurityID in exist_segment and SGID in SegmentAttr:
                for attr in SegmentAttr[SGID]:
                    sql_update_params.append((
                        attr[2], attr[3], attr[4], SGID, etf.SecurityID, attr[1]
                    ))
        mysqlDB.executemany(sql_insert_segment, sql_insert_params)
        mysqlDB.executemany(sql_update_segment, sql_update_params)

    def __check_file(self):
        env_dist = os.environ
        # 判断环境变量是否存在HOME配置
        if 'HOME' not in env_dist:
            self.logger.error("HOME not in environment variable")
            return None
        # 获取文件路径
        catalog = env_dist['HOME']
        now = datetime.datetime.now().strftime("%Y%m%d")
        self.TradingDay = now
        catalog = '%s%s%s%s%s' % (catalog, os.path.sep, 'sim_data', os.path.sep, now)
        etf = '%s%s%s%s%s' % (catalog, os.path.sep, self.etf_filename, now[4:8], '.txt')
        # 判断reff03MMDD.txt文件是否存在
        if not os.path.exists(etf):
            self.logger.error("%s%s" % (etf, " is not exists"))
            return None
        # 读取txt文件
        etf_file = open(etf)
        return self.__txt_to_etf(etf_file)

    def __txt_to_etf(self, txt):
        etf_list = []
        for lines in txt:
            VO = etfVO(lines.split("|"))
            etf_list.append(VO)
        return etf_list

    # 主要读取template数据
    def __loadJSON(self, tableName):
        _output = path.convert(self.initTemplate['initTemplate'])
        _path = "%s%s%s%s" % (_output, os.path.sep, tableName, ".json")
        if not os.path.exists(_path):
            self.logger.error("文件" + tableName + ".json不存在")
            return None
        f = open(_path)
        return json.load(f)


if __name__ == '__main__':
    base_dir, config_names, config_files = parse_conf_args(__file__, config_names=["mysql", "log", "init"])
    context, conf = Configuration.load(base_dir=base_dir, config_names=config_names, config_files=config_files)
    # 启动etf脚本
    trans_etfinfo(context=context, configs=conf)
