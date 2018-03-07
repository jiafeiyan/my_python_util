-- ******************************
-- ��������ϵͳ��̨ϵͳ��Ӧ��ϵ��
-- ******************************
create table sync.t_TradeSystemBrokerSystem
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,BrokerSystemID   varchar(8) binary  not null COMMENT '��̨ϵͳ����'
	  ,PRIMARY KEY (TradeSystemID,BrokerSystemID)
) COMMENT='����ϵͳ��̨ϵͳ��Ӧ��ϵ';



-- ******************************
-- ������̨ϵͳ��Ա��Ӧ��ϵ��
-- ******************************
create table sync.t_BrokerSystemParticipant
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	  ,PRIMARY KEY (TradingDay,ParticipantID)
) COMMENT='��̨ϵͳ��Ա��Ӧ��ϵ';



-- ******************************
-- ������������
-- ******************************
create table sync.t_Exchange
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,ExchangeID   varchar(8) binary  not null COMMENT '����������'
	,ExchangeName   varchar(30) binary  not null COMMENT '����������'
	  ,PRIMARY KEY (TradeSystemID,ExchangeID)
) COMMENT='������';



-- ******************************
-- �����������
-- ******************************
create table sync.t_SettlementGroup
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementGroupName   varchar(20) binary  not null COMMENT '����������'
	,ExchangeID   varchar(8) binary  not null COMMENT '����������'
	,SettlementGroupType   char(1) binary  not null COMMENT '����������'
	,Currency   varchar(3) binary  not null COMMENT '����'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID)
) COMMENT='������';



-- ******************************
-- ����ҵ��������
-- ******************************
create table sync.t_BusinessConfig
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,FunctionCode   varchar(24) binary  not null COMMENT '���ܴ���'
	,OperationType   varchar(24) binary  not null COMMENT '��������'
	,Description   varchar(400) binary   COMMENT '��������'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,FunctionCode)
) COMMENT='ҵ�������';



-- ******************************
-- �����ʽ��˻���
-- ******************************
create table sync.t_Account
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,AccountID   varchar(12) binary  not null COMMENT '�ʽ��ʺ�'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,Currency   varchar(3) binary  not null COMMENT '����'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,AccountID)
) COMMENT='�ʽ��˻�';



-- ******************************
-- ��������׼�����˻���
-- ******************************
create table sync.t_BaseReserveAccount
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,AccountID   varchar(12) binary  not null COMMENT '�ʽ��ʺ�'
	,Reserve 	   decimal(19,3)   not null COMMENT '����׼����'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,AccountID)
) COMMENT='����׼�����˻�';



-- ******************************
-- ���������ʽ��˻���Ϣ��
-- ******************************
create table sync.t_TradingAccount
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,PreBalance 	   decimal(19,3)   not null COMMENT '�ϴν���׼����'
	,CurrMargin 	   decimal(19,3)   not null COMMENT '��ǰ��֤���ܶ�'
	,CloseProfit 	   decimal(19,3)   not null COMMENT 'ƽ��ӯ��'
	,Premium 	   decimal(19,3)   not null COMMENT '��ȨȨ������֧'
	,Deposit 	   decimal(19,3)   not null COMMENT '�����'
	,Withdraw 	   decimal(19,3)   not null COMMENT '������'
	,Balance 	   decimal(19,3)   not null COMMENT '�ڻ�����׼����'
	,Available 	   decimal(19,3)   not null COMMENT '�����ʽ�'
	,AccountID   varchar(12) binary  not null COMMENT '�ʽ��ʺ�'
	,FrozenMargin 	   decimal(19,3)   not null COMMENT '����ı�֤��'
	,FrozenPremium 	   decimal(19,3)   not null COMMENT '�����Ȩ����'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,AccountID)
) COMMENT='�����ʽ��˻���Ϣ';



-- ******************************
-- �������㽻�׻�Ա��ϵ��
-- ******************************
create table sync.t_ClearingTradingPart
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,ClearingPartID   varchar(10) binary   COMMENT '�����Ա'
	,ParticipantID   varchar(10) binary   COMMENT '���׻�Ա'
	  ,PRIMARY KEY (TradeSystemID,ClearingPartID,ParticipantID)
) COMMENT='���㽻�׻�Ա��ϵ';



-- ******************************
-- ������Ա��
-- ******************************
create table sync.t_Participant
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ParticipantName   varchar(50) binary  not null COMMENT '��Ա����'
	,ParticipantAbbr   varchar(8) binary  not null COMMENT '��Ա���'
	,MemberType   char(1) binary  not null COMMENT '��Ա����'
	,IsActive   INTEGER   not null COMMENT '�Ƿ��Ծ'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,ParticipantID)
) COMMENT='��Ա';



-- ******************************
-- �����ͻ���Ϣ��
-- ******************************
create table sync.t_Client
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,ClientName   varchar(80) binary  not null COMMENT '�ͻ�����'
	,IdentifiedCardType   varchar(15) binary   COMMENT '֤������'
	,IdentifiedCardNo   varchar(50) binary   COMMENT '֤������'
	,TradingRole   char(1) binary  not null COMMENT '���׽�ɫ'
	,ClientType   char(1) binary  not null COMMENT '�ͻ�����'
	,IsActive   INTEGER   not null COMMENT '�Ƿ��Ծ'
	,HedgeFlag   char(1) binary  not null COMMENT '�ͻ���������'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,ClientID)
) COMMENT='�ͻ���Ϣ';



-- ******************************
-- ������Ա�ͻ���ϵ��
-- ******************************
create table sync.t_PartClient
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,ClientID,ParticipantID)
) COMMENT='��Ա�ͻ���ϵ';



-- ******************************
-- ������Ա��Ʒ��ɫ��
-- ******************************
create table sync.t_PartProductRole
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ProductID   varchar(8) binary  not null COMMENT '��Ʒ����'
	,TradingRole   char(1) binary  not null COMMENT '���׽�ɫ'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,ParticipantID,ProductID,TradingRole)
) COMMENT='��Ա��Ʒ��ɫ';



-- ******************************
-- ������Ա��Ʒ����Ȩ�ޱ�
-- ******************************
create table sync.t_PartProductRight
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ProductID   varchar(8) binary  not null COMMENT '��Ʒ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,TradingRight   char(1) binary  not null COMMENT '����Ȩ��'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,ProductID,ParticipantID)
) COMMENT='��Ա��Ʒ����Ȩ��';



-- ******************************
-- ������Ա�˻���ϵ��
-- ******************************
create table sync.t_PartRoleAccount
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,TradingRole   char(1) binary  not null COMMENT '���׽�ɫ'
	,AccountID   varchar(12) binary  not null COMMENT '�ʽ��ʺ�'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,ParticipantID,TradingRole)
) COMMENT='��Ա�˻���ϵ';



-- ******************************
-- �����ͻ���Ʒ����Ȩ�ޱ�
-- ******************************
create table sync.t_ClientProductRight
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ProductID   varchar(8) binary  not null COMMENT '��Ʒ����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,TradingRight   char(1) binary  not null COMMENT '����Ȩ��'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,ProductID,ClientID)
) COMMENT='�ͻ���Ʒ����Ȩ��';



-- ******************************
-- ������Ա��Լ�ֱֲ�
-- ******************************
create table sync.t_PartPosition
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,TradingDay   varchar(8) binary  not null COMMENT '������'
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
	  ,PRIMARY KEY (TradeSystemID,TradingDay,SettlementGroupID,SettlementID,HedgeFlag,PosiDirection,InstrumentID,ParticipantID,TradingRole)
) COMMENT='��Ա��Լ�ֲ�';



-- ******************************
-- �����ͻ���Լ�ֱֲ�
-- ******************************
create table sync.t_ClientPosition
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,TradingDay   varchar(8) binary  not null COMMENT '������'
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
	  ,PRIMARY KEY (TradeSystemID,TradingDay,SettlementGroupID,SettlementID,HedgeFlag,PosiDirection,InstrumentID,ParticipantID,ClientID)
) COMMENT='�ͻ���Լ�ֲ�';



-- ******************************
-- ���������û���
-- ******************************
create table sync.t_User
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,UserID   varchar(15) binary  not null COMMENT '�����û�����'
	,UserType   char(1) binary  not null COMMENT '�����û�����'
	,Password   varchar(40) binary  not null COMMENT '����'
	,IsActive   INTEGER   not null COMMENT '����ԱȨ��'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,UserID)
) COMMENT='�����û�';



-- ******************************
-- �����û�����Ȩ�ޱ�
-- ******************************
create table sync.t_UserFunctionRight
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,UserID   varchar(15) binary  not null COMMENT '�����û�����'
	,FunctionCode   varchar(24) binary  not null COMMENT '���ܴ���'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,UserID,FunctionCode)
) COMMENT='�û�����Ȩ��';



-- ******************************
-- ��������ԱIP��ַ��
-- ******************************
create table sync.t_UserIP
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,UserID   varchar(15) binary  not null COMMENT '�����û�����'
	,IPAddress   varchar(15) binary  not null COMMENT 'IP��ַ'
	,IPMask   varchar(15) binary  not null COMMENT 'IP��ַ����'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,UserID,IPAddress)
) COMMENT='����ԱIP��ַ';



-- ******************************
-- �������׺�Լ��
-- ******************************
create table sync.t_Instrument
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ProductID   varchar(8) binary  not null COMMENT '��Ʒ����'
	,ProductGroupID   varchar(8) binary  not null COMMENT '��Ʒ�����'
	,UnderlyingInstrID   varchar(30) binary   COMMENT '������Ʒ����'
	,ProductClass   char(1) binary  not null COMMENT '��Ʒ����'
	,PositionType   char(1) binary  not null COMMENT '�ֲ�����'
	,UnderlyingType   char(1) binary   COMMENT '�������'
	,StrikeType   char(1) binary   COMMENT '��Ȩ����'
	,StrikePrice 	   decimal(16,6)    COMMENT 'ִ�м�'
	,OptionsType   char(1) binary   COMMENT '��Ȩ����'
	,VolumeMultiple   INTEGER   not null COMMENT '��Լ��������'
	,UnderlyingMultiple 	   decimal(9,3)   not null COMMENT '��Լ������Ʒ����'
	,TotalEquity 	   decimal(19,3)    COMMENT '��Ʊ�ܹɱ���'
	,CirculationEquity 	   decimal(19,3)    COMMENT '��Ʊ��ͨ�ɱ���'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ExchInstrumentID   varchar(30) binary   COMMENT '��������Լ����'
	,InstrumentName   varchar(20) binary  not null COMMENT '��Լ����'
	,DeliveryYear   INTEGER   not null COMMENT '�������'
	,DeliveryMonth   INTEGER   not null COMMENT '������'
	,AdvanceMonth   varchar(3) binary  not null COMMENT '��ǰ�·�'
	,IsTrading   INTEGER   not null COMMENT '��ǰ�Ƿ���'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,InstrumentID)
) COMMENT='���׺�Լ';



-- ******************************
-- ������Լ�ͺ�Լ���ϵ��
-- ******************************
create table sync.t_InstrumentGroup
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,InstrumentGroupID   varchar(30) binary  not null COMMENT '��Լ�����'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,InstrumentID)
) COMMENT='��Լ�ͺ�Լ���ϵ';



-- ******************************
-- ������Լ���Ա�
-- ******************************
create table sync.t_CurrInstrumentProperty
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,CreateDate   varchar(8) binary  not null COMMENT '������'
	,OpenDate   varchar(8) binary  not null COMMENT '������'
	,ExpireDate   varchar(8) binary  not null COMMENT '������'
	,StartDelivDate   varchar(8) binary  not null COMMENT '��ʼ������'
	,EndDelivDate   varchar(8) binary  not null COMMENT '��󽻸���'
	,StrikeDate   varchar(8) binary   COMMENT '��Ȩ��Ȩ��'
	,BasisPrice 	   decimal(16,6)   not null COMMENT '���ƻ�׼��'
	,MaxMarketOrderVolume    bigInt(10)    not null COMMENT '�м۵�����µ���'
	,MinMarketOrderVolume    bigInt(10)    not null COMMENT '�м۵���С�µ���'
	,MaxLimitOrderVolume    bigInt(10)    not null COMMENT '�޼۵�����µ���'
	,MinLimitOrderVolume    bigInt(10)    not null COMMENT '�޼۵���С�µ���'
	,PriceTick 	   decimal(16,6)   not null COMMENT '��С�䶯��λ'
	,AllowDelivPersonOpen   INTEGER   not null COMMENT '��������Ȼ�˿���'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,InstLifePhase   char(1) binary  not null COMMENT '��Լ��������״̬'
	,IsFirstTradingDay   INTEGER   not null COMMENT '�Ƿ��׽�����'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,InstrumentID)
) COMMENT='��Լ����';



-- ******************************
-- ������ǰ��Լ��֤���ʱ�
-- ******************************
create table sync.t_CurrMarginRate
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,MarginCalcID   varchar(4) binary  not null COMMENT '��֤���㷨����'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,InstrumentID,ParticipantID)
) COMMENT='��ǰ��Լ��֤����';



-- ******************************
-- ������ǰ��Լ��֤���ʵ���ϸ���ݱ�
-- ******************************
create table sync.t_CurrMarginRateDetail
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,TradingRole   char(1) binary  not null COMMENT '���׽�ɫ'
	,HedgeFlag   char(1) binary  not null COMMENT 'Ͷ���ױ���־'
	,ValueMode   char(1) binary  not null COMMENT 'ȡֵ��ʽ'
	,LongMarginRatio 	   decimal(22,6)   not null COMMENT '��ͷ��֤����'
	,ShortMarginRatio 	   decimal(22,6)   not null COMMENT '��ͷ��֤����'
	,AdjustRatio1 	   decimal(22,6)    COMMENT '��֤���ʵ�������1'
	,AdjustRatio2 	   decimal(22,6)    COMMENT '��֤���ʵ�������2'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,TradingRole,HedgeFlag,InstrumentID,ParticipantID,ClientID)
) COMMENT='��ǰ��Լ��֤���ʵ���ϸ����';



-- ******************************
-- ������ǰ��Լ�۸�󶨱�
-- ******************************
create table sync.t_CurrPriceBanding
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,PriceLimitType   char(1) binary  not null COMMENT '�޼�����'
	,ValueMode   char(1) binary  not null COMMENT 'ȡֵ��ʽ'
	,RoundingMode   char(1) binary  not null COMMENT '���뷽ʽ'
	,UpperValue 	   decimal(16,6)   not null COMMENT '����'
	,LowerValue 	   decimal(16,6)   not null COMMENT '����'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,TradingSegmentSN   INTEGER   not null COMMENT '���׽׶α��'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,InstrumentID,TradingSegmentSN)
) COMMENT='��ǰ��Լ�۸��';



-- ******************************
-- ������ǰ��Լ���׽׶����Ա�
-- ******************************
create table sync.t_CurrTradingSegmentAttr
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,TradingSegmentSN   INTEGER   not null COMMENT '���׽׶α��'
	,TradingSegmentName   varchar(20) binary   COMMENT '���׽׶�����'
	,StartTime   varchar(8) binary  not null COMMENT '��ʼʱ��'
	,InstrumentStatus   char(1) binary  not null COMMENT '��Լ����״̬'
	,DayOffset   INTEGER    default '0' not null COMMENT '����ƫ����'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,TradingSegmentSN,InstrumentID)
) COMMENT='��ǰ��Լ���׽׶�����';



-- ******************************
-- �����г���
-- ******************************
create table sync.t_Market
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,MarketID   varchar(8) binary  not null COMMENT '�г�����'
	,MarketName   varchar(20) binary  not null COMMENT '�г�����'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,MarketID)
) COMMENT='�г�';



-- ******************************
-- �����г������
-- ******************************
create table sync.t_MarketData
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
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
	  ,PRIMARY KEY (TradeSystemID,TradingDay,SettlementGroupID,InstrumentID)
) COMMENT='�г�����';



-- ******************************
-- �����г���Ʒ������
-- ******************************
create table sync.t_MarketProduct
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,MarketID   varchar(8) binary  not null COMMENT '�г�����'
	,ProductID   varchar(8) binary  not null COMMENT '��Ʒ����'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,MarketID,ProductID)
) COMMENT='�г���Ʒ����';



-- ******************************
-- �����г���Ʒ�������
-- ******************************
create table sync.t_MarketProductGroup
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,MarketID   varchar(8) binary  not null COMMENT '�г�����'
	,ProductGroupID   varchar(8) binary  not null COMMENT '��Ʒ�����'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,MarketID,ProductGroupID)
) COMMENT='�г���Ʒ�����';



-- ******************************
-- �������������
-- ******************************
create table sync.t_MarketDataTopic
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,TopicID   INTEGER   not null COMMENT '�������'
	,TopicName   varchar(60) binary  not null COMMENT '��������'
	,MarketID   varchar(8) binary  not null COMMENT '�г�����'
	,SnapShotFeq   INTEGER   not null COMMENT '����Ƶ��'
	,MarketDataDepth   INTEGER   not null COMMENT '�г��������'
	,DelaySeconds   INTEGER   not null COMMENT '�ӳ�����'
	,MarketDataMode   char(1) binary  not null COMMENT '����ģʽ'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,TopicID)
) COMMENT='��������';



-- ******************************
-- ������Ա�����г���
-- ******************************
create table sync.t_PartTopicSubscribe
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ParticipantID   varchar(10) binary  not null COMMENT '�����ߴ���'
	,ParticipantType   char(1) binary  not null COMMENT '����������'
	,TopicID   INTEGER   not null COMMENT '�������'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,ParticipantID,TopicID)
) COMMENT='��Ա�����г�';



-- ******************************
-- �������鷢��״̬��
-- ******************************
create table sync.t_MdPubStatus
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ProductID   varchar(8) binary  not null COMMENT '��Ʒ����'
	,InstrumentStatus   char(1) binary  not null COMMENT '��Լ����״̬'
	,MdPubStatus   char(1) binary  not null COMMENT '���鷢��״̬'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,ProductID,InstrumentStatus)
) COMMENT='���鷢��״̬';



