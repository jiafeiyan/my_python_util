-- ******************************
-- ��������Ự��
-- ******************************
create table dbclear.t_Settlement
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,SettlementStatus   char(1) binary  not null COMMENT '����״̬'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID)
) COMMENT='����Ự';



-- ******************************
-- ������Ա��Լ�ֱֲ�
-- ******************************
create table dbclear.t_PartPosition
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,HedgeFlag   char(1) binary  not null COMMENT 'Ͷ���ױ���־'
	,PosiDirection   char(1) binary  not null COMMENT '�ֲֶ�շ���'
	,YdPosition    bigInt(10)    not null COMMENT '���ճֲ�'
	,Position    bigInt(10)    not null COMMENT '���ճֲ�'
	,LongFrozen    bigInt(10)    not null COMMENT '��ͷ����'
	,ShortFrozen    bigInt(10)    not null COMMENT '��ͷ����'
	,YdLongFrozen    bigInt(10)    not null COMMENT '���ն�ͷ����'
	,YdShortFrozen    bigInt(10)    not null COMMENT '���տ�ͷ����'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,TradingRole   char(1) binary  not null COMMENT '���׽�ɫ'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,HedgeFlag,PosiDirection,InstrumentID,ParticipantID,TradingRole)
) COMMENT='��Ա��Լ�ֲ�';



-- ******************************
-- �����ͻ���Լ�ֱֲ�
-- ******************************
create table dbclear.t_ClientPosition
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,HedgeFlag   char(1) binary  not null COMMENT 'Ͷ���ױ���־'
	,PosiDirection   char(1) binary  not null COMMENT '�ֲֶ�շ���'
	,YdPosition    bigInt(10)    not null COMMENT '���ճֲ�'
	,Position    bigInt(10)    not null COMMENT '���ճֲ�'
	,LongFrozen    bigInt(10)    not null COMMENT '��ͷ����'
	,ShortFrozen    bigInt(10)    not null COMMENT '��ͷ����'
	,YdLongFrozen    bigInt(10)    not null COMMENT '���ն�ͷ����'
	,YdShortFrozen    bigInt(10)    not null COMMENT '���տ�ͷ����'
	,BuyTradeVolume    bigInt(10)    not null COMMENT '������ɽ���'
	,SellTradeVolume    bigInt(10)    not null COMMENT '�������ɽ���'
	,PositionCost 	   decimal(19,3)   not null COMMENT '�ֲֳɱ�'
	,YdPositionCost 	   decimal(19,3)   not null COMMENT '���ճֲֳɱ�'
	,UseMargin 	   decimal(19,3)   not null COMMENT 'ռ�õı�֤��'
	,FrozenMargin 	   decimal(19,3)   not null COMMENT '����ı�֤��'
	,LongFrozenMargin 	   decimal(19,3)   not null COMMENT '��ͷ����ı�֤��'
	,ShortFrozenMargin 	   decimal(19,3)   not null COMMENT '��ͷ����ı�֤��'
	,FrozenPremium 	   decimal(19,3)   not null COMMENT '�����Ȩ����'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,HedgeFlag,PosiDirection,InstrumentID,ParticipantID,ClientID)
) COMMENT='�ͻ���Լ�ֲ�';



-- ******************************
-- �����ͻ��ֺ��Ʊ�ֱֲ�
-- ******************************
create table dbclear.t_ClientPositionForSecurityProfit
(
	DJDate   varchar(8) binary  not null COMMENT '�Ǽ�����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,HedgeFlag   char(1) binary  not null COMMENT 'Ͷ���ױ���־'
	,PosiDirection   char(1) binary  not null COMMENT '�ֲֶ�շ���'
	,YdPosition    bigInt(10)    not null COMMENT '���ճֲ�'
	,Position    bigInt(10)    not null COMMENT '���ճֲ�'
	,LongFrozen    bigInt(10)    not null COMMENT '��ͷ����'
	,ShortFrozen    bigInt(10)    not null COMMENT '��ͷ����'
	,YdLongFrozen    bigInt(10)    not null COMMENT '���ն�ͷ����'
	,YdShortFrozen    bigInt(10)    not null COMMENT '���տ�ͷ����'
	,BuyTradeVolume    bigInt(10)    not null COMMENT '������ɽ���'
	,SellTradeVolume    bigInt(10)    not null COMMENT '�������ɽ���'
	,PositionCost 	   decimal(19,3)   not null COMMENT '�ֲֳɱ�'
	,YdPositionCost 	   decimal(19,3)   not null COMMENT '���ճֲֳɱ�'
	,UseMargin 	   decimal(19,3)   not null COMMENT 'ռ�õı�֤��'
	,FrozenMargin 	   decimal(19,3)   not null COMMENT '����ı�֤��'
	,LongFrozenMargin 	   decimal(19,3)   not null COMMENT '��ͷ����ı�֤��'
	,ShortFrozenMargin 	   decimal(19,3)   not null COMMENT '��ͷ����ı�֤��'
	,FrozenPremium 	   decimal(19,3)   not null COMMENT '�����Ȩ����'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	  ,PRIMARY KEY (DJDate,SettlementGroupID,SettlementID,HedgeFlag,PosiDirection,InstrumentID,ParticipantID,ClientID)
) COMMENT='�ͻ��ֺ��Ʊ�ֲ�';



-- ******************************
-- �����г������
-- ******************************
create table dbclear.t_MarketData
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,LastPrice 	   decimal(16,6)    COMMENT '���¼�'
	,PreSettlementPrice 	   decimal(16,6)    COMMENT '�����'
	,PreClosePrice 	   decimal(16,6)    COMMENT '������'
	,UnderlyingClosePx 	   decimal(16,6)    COMMENT '���������'
	,PreOpenInterest 	   decimal(19,3)   not null COMMENT '��ֲ���'
	,OpenPrice 	   decimal(16,6)    COMMENT '����'
	,HighestPrice 	   decimal(16,6)    COMMENT '��߼�'
	,LowestPrice 	   decimal(16,6)    COMMENT '��ͼ�'
	,Volume    bigInt(10)     COMMENT '����'
	,Turnover 	   decimal(19,3)    COMMENT '�ɽ����'
	,OpenInterest 	   decimal(19,3)    COMMENT '�ֲ���'
	,ClosePrice 	   decimal(16,6)    COMMENT '������'
	,SettlementPrice 	   decimal(16,6)    COMMENT '�����'
	,UpperLimitPrice 	   decimal(16,6)    COMMENT '��ͣ���'
	,LowerLimitPrice 	   decimal(16,6)    COMMENT '��ͣ���'
	,PreDelta 	   decimal(22,6)    COMMENT '����ʵ��'
	,CurrDelta 	   decimal(22,6)    COMMENT '����ʵ��'
	,UpdateTime   varchar(8) binary   COMMENT '����޸�ʱ��'
	,UpdateMillisec   INTEGER    COMMENT '����޸ĺ���'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,InstrumentID)
) COMMENT='�г�����';



-- ******************************
-- �����ɽ���
-- ******************************
create table dbclear.t_Trade
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,TradeID   varchar(12) binary  not null COMMENT '�ɽ����'
	,Direction   char(1) binary  not null COMMENT '��������'
	,OrderSysID   varchar(12) binary   COMMENT '�������'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,TradingRole   char(1) binary  not null COMMENT '���׽�ɫ'
	,AccountID   varchar(12) binary  not null COMMENT '�ʽ��ʺ�'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,OffsetFlag   char(1) binary  not null COMMENT '��ƽ��־'
	,HedgeFlag   char(1) binary  not null COMMENT 'Ͷ���ױ���־'
	,Price 	   decimal(16,6)   not null COMMENT '�۸�'
	,Volume    bigInt(10)    not null COMMENT '����'
	,TradeTime   varchar(8) binary  not null COMMENT '�ɽ�ʱ��'
	,TradeType   char(1) binary  not null COMMENT '�ɽ�����'
	,PriceSource   char(1) binary  not null COMMENT '�ɽ�����Դ'
	,UserID   varchar(15) binary   COMMENT '�����û�����'
	,OrderLocalID   varchar(12) binary   COMMENT '���ر������'
	,ClearingPartID   varchar(10) binary  not null COMMENT '�����Ա���'
	,BusinessUnit   varchar(20) binary   COMMENT 'ҵ��Ԫ'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,TradeID,Direction)
) COMMENT='�ɽ�';



-- ******************************
-- ����������
-- ******************************
create table dbclear.t_Order
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,OrderSysID   varchar(12) binary  not null COMMENT '�������'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,UserID   varchar(15) binary  not null COMMENT '�����û�����'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,OrderPriceType   char(1) binary  not null COMMENT '�����۸�����'
	,Direction   char(1) binary  not null COMMENT '��������'
	,CombOffsetFlag   varchar(4) binary  not null COMMENT '��Ͽ�ƽ��־'
	,CombHedgeFlag   varchar(4) binary  not null COMMENT '���Ͷ���ױ���־'
	,LimitPrice 	   decimal(16,6)    COMMENT '�۸�'
	,VolumeTotalOriginal    bigInt(10)    not null COMMENT '����'
	,TimeCondition   char(1) binary  not null COMMENT '��Ч������'
	,GTDDate   varchar(8) binary   COMMENT 'GTD����'
	,VolumeCondition   char(1) binary  not null COMMENT '�ɽ�������'
	,MinVolume    bigInt(10)     COMMENT '��С�ɽ���'
	,ContingentCondition   char(1) binary  not null COMMENT '��������'
	,StopPrice 	   decimal(16,6)    COMMENT 'ֹ���'
	,ForceCloseReason   char(1) binary   COMMENT 'ǿƽԭ��'
	,OrderLocalID   varchar(12) binary   COMMENT '���ر������'
	,IsAutoSuspend   INTEGER   not null COMMENT '�Զ������־'
	,OrderSource   char(1) binary  not null COMMENT '������Դ'
	,OrderStatus   char(1) binary  not null COMMENT '����״̬'
	,OrderType   char(1) binary  not null COMMENT '��������'
	,VolumeTraded    bigInt(10)    not null COMMENT '��ɽ�����'
	,VolumeTotal    bigInt(10)    not null COMMENT 'ʣ������'
	,InsertDate   varchar(8) binary  not null COMMENT '��������'
	,InsertTime   varchar(8) binary  not null COMMENT '����ʱ��'
	,ActiveTime   varchar(8) binary   COMMENT '����ʱ��'
	,SuspendTime   varchar(8) binary   COMMENT '����ʱ��'
	,UpdateTime   varchar(8) binary   COMMENT '����޸�ʱ��'
	,CancelTime   varchar(8) binary   COMMENT '����ʱ��'
	,ActiveUserID   varchar(15) binary   COMMENT '����޸Ľ����û�����'
	,Priority    bigInt(10)    not null COMMENT '����Ȩ'
	,TimeSortID    bigInt(10)    not null COMMENT '��ʱ���Ŷӵ����'
	,ClearingPartID   varchar(10) binary  not null COMMENT '�����Ա���'
	,BusinessUnit   varchar(20) binary   COMMENT 'ҵ��Ԫ'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,OrderSysID)
) COMMENT='����';



-- ******************************
-- �����ͻ���Լ����ֱֲ�
-- ******************************
create table dbclear.t_ClientDelivPosition
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,HedgeFlag   char(1) binary  not null COMMENT 'Ͷ���ױ���־'
	,PosiDirection   char(1) binary  not null COMMENT '�ֲֶ�շ���'
	,YdPosition    bigInt(10)    not null COMMENT '���ճֲ�'
	,Position    bigInt(10)    not null COMMENT '���ճֲ�'
	,LongFrozen    bigInt(10)    not null COMMENT '��ͷ����'
	,ShortFrozen    bigInt(10)    not null COMMENT '��ͷ����'
	,YdLongFrozen    bigInt(10)    not null COMMENT '���ն�ͷ����'
	,YdShortFrozen    bigInt(10)    not null COMMENT '���տ�ͷ����'
	,BuyTradeVolume    bigInt(10)    not null COMMENT '������ɽ���'
	,SellTradeVolume    bigInt(10)    not null COMMENT '�������ɽ���'
	,PositionCost 	   decimal(19,3)   not null COMMENT '�ֲֳɱ�'
	,YdPositionCost 	   decimal(19,3)   not null COMMENT '���ճֲֳɱ�'
	,UseMargin 	   decimal(19,3)   not null COMMENT 'ռ�õı�֤��'
	,FrozenMargin 	   decimal(19,3)   not null COMMENT '����ı�֤��'
	,LongFrozenMargin 	   decimal(19,3)   not null COMMENT '��ͷ����ı�֤��'
	,ShortFrozenMargin 	   decimal(19,3)   not null COMMENT '��ͷ����ı�֤��'
	,FrozenPremium 	   decimal(19,3)   not null COMMENT '�����Ȩ����'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,HedgeFlag,PosiDirection,InstrumentID,ParticipantID,ClientID)
) COMMENT='�ͻ���Լ����ֲ�';



-- ******************************
-- �����ͻ����������ѱ�
-- ******************************
create table dbclear.t_ClientDelivFee
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,AccountID   varchar(12) binary  not null COMMENT '�ʽ��ʺ�'
	,ProductGroupID   varchar(8) binary  not null COMMENT '��Ʒ�����'
	,ProductID   varchar(8) binary  not null COMMENT '��Ʒ����'
	,UnderlyingInstrID   varchar(30) binary   COMMENT '������Ʒ����'
	,Position    bigInt(10)    not null COMMENT '����ֲ���'
	,ValueMode   char(1) binary  not null COMMENT 'ȡֵ��ʽ'
	,DelivFeeRatio 	   decimal(22,6)   not null COMMENT '������������'
	,MinFee 	   decimal(19,3)   not null COMMENT '��ͷ���'
	,MaxFee 	   decimal(19,3)   not null COMMENT '��߷���'
	,Price 	   decimal(16,6)   not null COMMENT '����۸�'
	,DelivFee 	   decimal(19,3)   not null COMMENT '����������'
	,Tax 	   decimal(19,3)    default '0' not null COMMENT '˰�ѵ�'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,InstrumentID,ParticipantID,ClientID,AccountID,ProductGroupID,ProductID)
) COMMENT='�ͻ�����������';



-- ******************************
-- ���������Լ��
-- ******************************
create table dbclear.t_DelivInstrument
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,InstrumentID)
) COMMENT='�����Լ';



-- ******************************
-- �����ͻ���Լ�ֱֲ�֤���
-- ******************************
create table dbclear.t_ClientPositionMargin
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,AccountID   varchar(12) binary  not null COMMENT '�ʽ��ʺ�'
	,ProductGroupID   varchar(8) binary  not null COMMENT '��Ʒ�����'
	,ProductID   varchar(8) binary  not null COMMENT '��Ʒ����'
	,UnderlyingInstrID   varchar(30) binary   COMMENT '������Ʒ����'
	,TradingRole   char(1) binary  not null COMMENT '���׽�ɫ'
	,HedgeFlag   char(1) binary  not null COMMENT 'Ͷ���ױ���־'
	,ValueMode   char(1) binary  not null COMMENT 'ȡֵ��ʽ'
	,MarginRatio 	   decimal(22,6)   not null COMMENT '��֤����'
	,PosiDirection   char(1) binary  not null COMMENT '�ֲֶ�շ���'
	,Position    bigInt(10)    not null COMMENT '���ճֲ�'
	,SettlementPrice 	   decimal(16,6)    COMMENT '�����'
	,PositionMargin 	   decimal(19,3)   not null COMMENT 'ռ�õı�֤��'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,InstrumentID,ParticipantID,ClientID,AccountID,ProductGroupID,ProductID,TradingRole,HedgeFlag,PosiDirection)
) COMMENT='�ͻ���Լ�ֱֲ�֤��';



-- ******************************
-- �����ͻ���Լ�ɽ�ӯ����
-- ******************************
create table dbclear.t_ClientTradeProfit
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,AccountID   varchar(12) binary  not null COMMENT '�ʽ��ʺ�'
	,TradeID   varchar(12) binary  not null COMMENT '�ɽ����'
	,Direction   char(1) binary  not null COMMENT '��������'
	,OffsetFlag   char(1) binary  not null COMMENT '��ƽ��־'
	,Price 	   decimal(16,6)   not null COMMENT '�۸�'
	,Volume    bigInt(10)    not null COMMENT '����'
	,Profit 	   decimal(19,3)   not null COMMENT 'ӯ��'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,InstrumentID,ParticipantID,ClientID,AccountID,TradeID,Direction,OffsetFlag)
) COMMENT='�ͻ���Լ�ɽ�ӯ��';



-- ******************************
-- �����ͻ���Լ�ֲ�ӯ����
-- ******************************
create table dbclear.t_ClientPositionProfit
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,HedgeFlag   char(1) binary  not null COMMENT 'Ͷ���ױ���־'
	,PosiDirection   char(1) binary  not null COMMENT '�ֲֶ�շ���'
	,PositionCost 	   decimal(19,3)   not null COMMENT '�ֲֳɱ�'
	,SettlementPositionCost 	   decimal(19,3)   not null COMMENT '�����ֲֳɱ�'
	,PositionProfit 	   decimal(19,3)   not null COMMENT '�ֲ�ӯ��'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,InstrumentID,ParticipantID,ClientID,HedgeFlag,PosiDirection)
) COMMENT='�ͻ���Լ�ֲ�ӯ��';



-- ******************************
-- �����ͻ���Լ�����������ʱ�
-- ******************************
create table dbclear.t_ClientTransFeeRatio
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,TradingRole   char(1) binary  not null COMMENT '���׽�ɫ'
	,HedgeFlag   char(1) binary  not null COMMENT 'Ͷ���ױ���־'
	,ValueMode   char(1) binary  not null COMMENT 'ȡֵ��ʽ'
	,OpenFeeRatio 	   decimal(22,6)   not null COMMENT '������������'
	,CloseYesterdayFeeRatio 	   decimal(22,6)   not null COMMENT 'ƽ����������'
	,CloseTodayFeeRatio 	   decimal(22,6)   not null COMMENT 'ƽ����������'
	,MinOpenFee 	   decimal(19,3)    default '0' not null COMMENT '��Ϳ��ַ���'
	,MinCloseFee 	   decimal(19,3)    default '0' not null COMMENT '���ƽ�ַ���'
	,MaxOpenFee 	   decimal(19,3)    default '0' not null COMMENT '��߿��ַ���'
	,MaxCloseFee 	   decimal(19,3)    default '0' not null COMMENT '���ƽ�ַ���'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,InstrumentID,ParticipantID,ClientID,TradingRole,HedgeFlag)
) COMMENT='�ͻ���Լ������������';



-- ******************************
-- �����ͻ���Լ���������ѱ�
-- ******************************
create table dbclear.t_ClientTransFee
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,AccountID   varchar(12) binary  not null COMMENT '�ʽ��ʺ�'
	,ProductGroupID   varchar(8) binary  not null COMMENT '��Ʒ�����'
	,ProductID   varchar(8) binary  not null COMMENT '��Ʒ����'
	,UnderlyingInstrID   varchar(30) binary   COMMENT '������Ʒ����'
	,TradeID   varchar(12) binary  not null COMMENT '�ɽ����'
	,OrderSysID   varchar(12) binary  not null COMMENT '�������'
	,Direction   char(1) binary  not null COMMENT '��������'
	,TradingRole   char(1) binary  not null COMMENT '���׽�ɫ'
	,HedgeFlag   char(1) binary  not null COMMENT 'Ͷ���ױ���־'
	,OffsetFlag   char(1) binary  not null COMMENT '��ƽ��־'
	,ValueMode   char(1) binary  not null COMMENT 'ȡֵ��ʽ'
	,TransFeeRatio 	   decimal(22,6)   not null COMMENT '������������'
	,MinFee 	   decimal(19,3)   not null COMMENT '��ͷ���'
	,MaxFee 	   decimal(19,3)   not null COMMENT '��߷���'
	,Price 	   decimal(16,6)   not null COMMENT '�۸�'
	,Volume    bigInt(10)    not null COMMENT '����'
	,TransFee 	   decimal(19,3)   not null COMMENT '����������'
	,Tax 	   decimal(19,3)    default '0' not null COMMENT '˰�ѵ�'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,InstrumentID,ParticipantID,ClientID,AccountID,ProductGroupID,ProductID,TradeID,OrderSysID,Direction,TradingRole,HedgeFlag,OffsetFlag)
) COMMENT='�ͻ���Լ����������';



-- ******************************
-- �����ͻ��ʽ��
-- ******************************
create table dbclear.t_ClientFund
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,AccountID   varchar(12) binary  not null COMMENT '�ʽ��ʺ�'
	,Available 	   decimal(19,3)   not null COMMENT '�����ʽ�'
	,TransFee 	   decimal(19,3)   not null COMMENT '����������'
	,DelivFee 	   decimal(19,3)   not null COMMENT '����������'
	,PositionMargin 	   decimal(19,3)   not null COMMENT '�ֱֲ�֤��'
	,Profit 	   decimal(19,3)   not null COMMENT 'ӯ��'
	,StockValue 	   decimal(19,3)   not null COMMENT '��ֵ'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,ParticipantID,ClientID,AccountID)
) COMMENT='�ͻ��ʽ�';



