# -*- coding: UTF-8 -*-

class etfVO:
    def __init__(self, etfField):
        self.RFStreamID = etfField[0].strip()
        self.SecurityID = etfField[1].strip()
        self.ContractID = etfField[2].strip()
        self.ContractSymbol = etfField[3].strip()
        self.UnderlyingSecurityID = etfField[4].strip()
        self.UnderlyingSymbol = etfField[5].strip()
        self.UnderlyingType = etfField[6].strip()
        self.OptionType = etfField[7].strip()
        self.CallOrPut = etfField[8].strip()
        self.ContractMultiplierUnit = etfField[9].strip()
        self.ExercisePrice = etfField[10].strip()
        self.StartDate = etfField[11].strip()
        self.EndDate = etfField[12].strip()
        self.ExerciseDate = etfField[13].strip()
        self.DeliveryDate = etfField[14].strip()
        self.ExpireDate = etfField[15].strip()
        self.UpdateVersion = etfField[16].strip()
        self.TotalLongPosition = etfField[17].strip()
        self.SecurityClosePx = etfField[18].strip()
        self.SettlePrice = etfField[19].strip()
        self.UnderlyingClosePx = etfField[20].strip()
        self.PriceLimitType = etfField[21].strip()
        self.DailyPriceUpLimit = etfField[22].strip()
        self.DailyPriceDownLimit = etfField[23].strip()
        self.MarginUnit = etfField[24].strip()
        self.MarginRatioParam1 = etfField[25].strip()
        self.MarginRatioParam2 = etfField[26].strip()
        self.RoundLot = etfField[27].strip()
        self.LmtOrdMinFloor = etfField[28].strip()
        self.LmtOrdMaxFloor = etfField[29].strip()
        self.MktOrdMinFloor = etfField[30].strip()
        self.MktOrdMaxFloor = etfField[31].strip()
        self.TickSize = etfField[32].strip()
        self.SecurityStatusFlag = etfField[33].strip()
        self.AutoSplitDate = etfField[34].strip()
