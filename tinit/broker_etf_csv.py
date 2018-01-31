# -*- coding: UTF-8 -*-

"""
生成CSV文件
"""

import csv
import os

from utils import log
from utils import parse_conf_args
from utils import path
from utils import Configuration
from utils import mysql


class broker_etf_csv:
    def __init__(self, context, configs):
        # 初始化settlementGroupID
        self.settlementGroupID = configs.get("settlementGroupID")
        log_conf = None if context.get("log") is None else context.get("log").get(configs.get("logId"))
        # 初始化日志
        self.logger = log.get_logger(category="future_to_csv", configs=log_conf)
        if log_conf is None:
            self.logger.warning("broker_etf_csv未配置Log日志")
        # 初始化数据库连接
        self.mysqlDB = mysql(configs=context.get("mysql")[configs.get("mysqlId")])
        # 初始化生成柜台CSV文件路径
        output = path.convert(context.get("csv")[configs.get("csv")]['broker'])
        self.csv_path = os.path.join(output, str(configs.get("csvRoute")), str(configs.get("settlementGroupID")))
        self.__to_csv()

    def __to_csv(self):
        mysqlDB = self.mysqlDB
        self.__data_to_csv("BUProxy", mysqlDB)
        self.__data_to_csv("BusinessUnit", mysqlDB)
        self.__data_to_csv("ExchangeTradingDay", mysqlDB)
        self.__data_to_csv("Investor", mysqlDB)
        self.__data_to_csv("InvestorLimitAmount", mysqlDB)
        self.__data_to_csv("SSEBusinessUnitAccount", mysqlDB)
        self.__data_to_csv("SSEMarketData", mysqlDB)
        self.__data_to_csv("SSEPosition", mysqlDB)

    def __data_to_csv(self, csv_name, mysqlDB):
        table_sqls = dict(
            BUProxy=dict(columns=("UserID", "InvestorID", "BusinessUnitID"),
                         sql="""SELECT InvestorID AS UserID,InvestorID AS InvestorID,InvestorID AS BusinessUnitID
                                        FROM siminfo.t_Investor"""),
            BusinessUnit=dict(columns=("InvestorID", "BusinessUnitID", "BusinessUnitName"),
                              sql="""SELECT InvestorID,InvestorID AS BusinessUnitID,
                                      CONCAT('BU', InvestorID) AS BusinessUnitName FROM siminfo.t_Investor"""),
            ExchangeTradingDay=dict(columns=("ExchangeID", "TradingDay"),
                                    sql="""SELECT '1' AS ExchangeID,t.TradingDay
                                            FROM siminfo.t_TradeSystemTradingDay t,
                                                 siminfo.t_TradeSystemSettlementGroup t1
                                            WHERE t.TradeSystemID = t1.TradeSystemID AND t1.SettlementGroupID=%s""",
                                    params=(self.settlementGroupID,)),
            Investor=dict(columns=("InvestorID", "DepartmentID", "InvestorType", "InvestorName", "IdCardType",
                                   "IdCardNo", "ContractNo", "OpenDate", "CloseDate", "Status", "InnerBranchID",
                                   "InvestorLevel", "Remark"),
                          sql="""SELECT InvestorID,'0001' AS DepartmentID,'0' AS InvestorType,InvestorName,
                                        '1' AS IdCardType,OpenID AS IdCardNo,'' AS ContractNo,'' AS OpenDate,
                                        '' AS CloseDate,'1' AS STATUS,'2023' AS InnerBranchID,'1' AS InvestorLevel,
                                        '' AS Remark
                                    FROM siminfo.t_Investor"""),
            InvestorLimitAmount=dict(columns=("InvestorID", "LongAmountLimit", "LongAmountFrozen"),
                                     sql="""SELECT InvestorID,'10000000000' AS LongAmountLimit,'0' AS LongAmountFrozen
                                            FROM siminfo.t_Investor"""),
            SSEBusinessUnitAccount=dict(columns=("UserID", "InvestorID", "BusinessUnitID", "ExchangeID",
                                                 "MarketID", "ShareholderID", "ShareholderIDType", "ProductID",
                                                 "AccountID", "CurrencyID"),
                                        sql="""SELECT t2.UserID,t.InvestorID AS InvestorID,
                                                    t.InvestorID AS BusinessUnitID,'1' AS ExchangeID,'1' AS MarketID,
                                                    t.ClientID AS ShareholderID,'3' AS ShareholderIDType,
                                                    'd' AS ProductID,t.InvestorID AS AccountID,t1.Currency AS CurrencyID
                                                FROM siminfo.t_InvestorClient t,siminfo.t_SettlementGroup t1,
                                                    siminfo.t_User t2
                                                WHERE t.SettlementGroupID = t1.SettlementGroupID
                                                AND t.SettlementGroupID = t2.SettlementGroupID
                                                AND t1.SettlementGroupID = %s""",
                                        params=(self.settlementGroupID,)),
            SSEMarketData=dict(columns=("SecurityID", "ExchangeID", "TradingDay", "SecurityName", "PreClosePrice",
                                        "OpenPrice", "UpperLimitPrice", "LowerLimitPrice", "Volume", "Turnover",
                                        "TradingCount", "LastPrice", "ClosePrice", "HighestPrice", "LowestPrice",
                                        "PERatio1", "PERatio2", "PriceUpDown1", "PriceUpDown2", "OpenInterest",
                                        "BidPrice1", "AskPrice1", "BidVolume1", "AskVolume1", "BidPrice2", "BidVolume2",
                                        "AskPrice2", "AskVolume2", "BidPrice3", "BidVolume3", "AskPrice3", "AskVolume3",
                                        "BidPrice4", "BidVolume4", "AskPrice4", "AskVolume4", "BidPrice5", "BidVolume5",
                                        "AskPrice5", "AskVolume5", "UpdateTime", "UpdateMillisec"),
                               sql="""SELECT t.InstrumentID AS SecurityID,'1' AS ExchangeID,t.TradingDay AS TradingDay,
                                            t2.InstrumentName AS SecurityName,t.PreClosePrice AS PreClosePrice,
                                            t.OpenPrice AS OpenPrice,t.UpperLimitPrice AS UpperLimitPrice,
                                            t.LowerLimitPrice AS LowerLimitPrice,t.Volume AS Volume,
                                            t.Turnover AS Turnover,"0" AS TradingCount,t.LastPrice AS LastPrice,
                                            t.ClosePrice AS ClosePrice,t.HighestPrice AS HighestPrice,
                                            t.LowestPrice AS LowestPrice,'0' AS PERatio1,'0' AS PERatio2,
                                            '0' AS PriceUpDown1,'0' AS PriceUpDown2,t.OpenInterest AS OpenInterest,
                                            '0' AS BidPrice1,'0' AS AskPrice1,'0' AS BidVolume1,'0' AS AskVolume1,
                                            '0' AS BidPrice2,'0' AS BidVolume2,'0' AS AskPrice2,'0' AS AskVolume2,
                                            '0' AS BidPrice3,'0' AS BidVolume3,'0' AS AskPrice3,'0' AS AskVolume3,
                                            '0' AS BidPrice4,'0' AS BidVolume4,'0' AS AskPrice4,'0' AS AskVolume4,
                                            '0' AS BidPrice5,'0' AS BidVolume5,'0' AS AskPrice5,'0' AS AskVolume5,
                                            t.UpdateTime AS UpdateTime,t.UpdateMillisec AS UpdateMillisec
                                        FROM siminfo.t_MarketData t,siminfo.t_Instrument t2
                                        WHERE t.SettlementGroupID = t2.SettlementGroupID
                                        AND t.InstrumentID = t2.InstrumentID
                                        AND t.SettlementGroupID = %s""",
                               params=(self.settlementGroupID,)),
            SSEPosition=dict(columns=("InvestorID", "BusinessUnitID", "MarketID", "ShareholderID", "TradingDay",
                                      "ExchangeID", "SecurityID", "PosiDirection", "HedgeFlag", "HistoryPos",
                                      "HistoryPosFrozen", "TodayPos", "TodayPosFrozen", "TotalPosCost", "LongFrozen",
                                      "ShortFrozen", "LongFrozenAmount", "ShortFrozenAmount", "OpenVolume",
                                      "CloseVolume", "OpenAmount", "CloseAmount", "Margin", "FrozenMargin",
                                      "FrozenCash", "FrozenCommission", "CashIn", "Commission", "StrikeFrozen",
                                      "StrikeFrozenAmount", "PrePosition", "HistoryPosPrice"),
                             sql="""SELECT t1.InvestorID AS InvestorID,t1.InvestorID AS BusinessUnitID,'1' AS MarketID,
                                        t.ClientID AS ShareholderID,t2.TradingDay AS TradingDay,'1' AS ExchangeID,
                                        t.InstrumentID AS SecurityID,t.PosiDirection AS PosiDirection,
                                        t.HedgeFlag AS HedgeFlag,t.YdPosition AS HistoryPos,'0' AS HistoryPosFrozen,
                                        '0' AS TodayPos,'0' AS TodayPosFrozen,t.PositionCost AS TotalPosCost,
                                        t.LongFrozen AS LongFrozen,t.ShortFrozen ShortFrozen,'0' AS LongFrozenAmount,
                                        '0' AS ShortFrozenAmount,'30' AS OpenVolume,'0' AS CloseVolume,
                                        '0' AS OpenAmount,'0' AS CloseAmount,'0' AS Margin,
                                        t.FrozenMargin AS FrozenMargin,'0' AS FrozenCash,'0' AS FrozenCommission,
                                        '0' AS cashIn,'0' AS Commission,'0' AS StrikeFrozen,'0' AS StrikeFrozenAmount,
                                        t.YdPosition AS PrePosition,'0' AS HistoryPosPrice
                                    FROM siminfo.t_ClientPosition t,siminfo.t_InvestorClient t1,
                                         siminfo.t_TradeSystemTradingDay t2,siminfo.t_TradeSystemSettlementGroup t3
                                    WHERE t.ClientID = t1.ClientID
                                    AND t.SettlementGroupID = t1.SettlementGroupID
                                    AND t1.SettlementGroupID = t3.SettlementGroupID
                                    AND t3.TradeSystemID = t2.TradeSystemID
                                    AND t.SettlementGroupID = %s""",
                             params=(self.settlementGroupID,)),

        )
        # 查询siminfo数据库数据内容
        csv_data = mysqlDB.select(table_sqls[csv_name]["sql"], table_sqls[csv_name].get("params"))
        # 生成csv文件
        self.__produce_csv(csv_name, table_sqls[csv_name], csv_data)

    # 生成csv文件
    def __produce_csv(self, csv_name, columns, csv_data):
        self.logger.info("%s%s%s" % ("开始生成 ", csv_name, ".csv"))
        _path = "%s%s%s%s" % (str(self.csv_path), os.path.sep, csv_name, '.csv')
        # 如果不存在目录则先创建
        if not os.path.exists(str(self.csv_path)):
            os.makedirs(str(self.csv_path))
        with open(_path, 'wb') as csvfile:
            if "quoting" in columns and columns['quoting']:
                writer = csv.writer(csvfile, quoting=csv.QUOTE_ALL)
            else:
                writer = csv.writer(csvfile)
            writer.writerow(columns['columns'])
            writer.writerows(csv_data)
        self.logger.info("%s%s%s" % ("生成 ", csv_name, ".csv 文件完成"))


if __name__ == '__main__':
    base_dir, config_names, config_files = parse_conf_args(__file__, config_names=["mysql", "log", "csv"])
    context, conf = Configuration.load(base_dir=base_dir, config_names=config_names, config_files=config_files)
    # 启动脚本
    broker_etf_csv(context=context, configs=conf)