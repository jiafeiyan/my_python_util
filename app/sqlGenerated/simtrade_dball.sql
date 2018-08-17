----\siminfo_SimInfo_drop.sql
-- ɾ������ϵͳ��
drop table IF EXISTS siminfo.t_TradeSystem;

-- ɾ����̨ϵͳ��
drop table IF EXISTS siminfo.t_BrokerSystem;

-- ɾ������ϵͳ��̨ϵͳ��Ӧ��ϵ��
drop table IF EXISTS siminfo.t_TradeSystemBrokerSystem;

-- ɾ����̨ϵͳ�������Ӧ��ϵ��
drop table IF EXISTS siminfo.t_BrokerSystemSettlementGroup;

-- ɾ����������
drop table IF EXISTS siminfo.t_Exchange;

-- ɾ������ϵͳ�����ձ�
drop table IF EXISTS siminfo.t_TradeSystemTradingDay;

-- ɾ���������
drop table IF EXISTS siminfo.t_SettlementGroup;

-- ɾ������ϵͳ�������ϵ��
drop table IF EXISTS siminfo.t_TradeSystemSettlementGroup;

-- ɾ�����»��
drop table IF EXISTS siminfo.t_Activity;

-- ɾ�����»�������ϵ��
drop table IF EXISTS siminfo.t_ActivitySettlementGroup;

-- ɾ�����»Ͷ���߹�ϵ��
drop table IF EXISTS siminfo.t_ActivityInvestor;

-- ɾ��Ͷ���߱����ֲ���Ϣ��
drop table IF EXISTS siminfo.t_ActivityInvestorPosition;

-- ɾ��Ͷ���߱����ʽ���Ϣ��
drop table IF EXISTS siminfo.t_ActivityInvestorFund;

-- ɾ�����»������Ͷ���߱�
drop table IF EXISTS siminfo.t_ActivityRankableInvestor;

-- ɾ��������
drop table IF EXISTS siminfo.t_TradingCalendar;

-- ɾ�������ʽ��˻���Ϣ��
drop table IF EXISTS siminfo.t_TradingAccount;

-- ɾ����Ա��
drop table IF EXISTS siminfo.t_Participant;

-- ɾ���ͻ���
drop table IF EXISTS siminfo.t_Client;

-- ɾ����Ա�ͻ���ϵ��
drop table IF EXISTS siminfo.t_PartClient;

-- ɾ��Ͷ������Ϣ��
-- drop index siminfo.IDX_Investor_OpenIDIndex;
drop table IF EXISTS siminfo.t_Investor;

-- ɾ��Ͷ���߿ͻ���ϵ��
-- drop index siminfo.IDX_InvestorClient_InvestorClientClientIDIndex;
drop table IF EXISTS siminfo.t_InvestorClient;

-- ɾ��Ͷ��������������Ϣ��
drop table IF EXISTS siminfo.t_ActivityInvestorEvaluation;

-- ɾ�������û���
drop table IF EXISTS siminfo.t_User;

-- ɾ���û�����Ȩ�ޱ�
drop table IF EXISTS siminfo.t_UserFunctionRight;

-- ɾ������ԱIP��ַ��
drop table IF EXISTS siminfo.t_UserIP;

-- ɾ�����㽻�׻�Ա��ϵ��
drop table IF EXISTS siminfo.t_ClearingTradingPart;

-- ɾ����Ʒ���
drop table IF EXISTS siminfo.t_ProductGroup;

-- ɾ����Ʒ��
drop table IF EXISTS siminfo.t_Product;

-- ɾ����Ʒ���Ա�
drop table IF EXISTS siminfo.t_ProductProperty;

-- ɾ����Լ�ͺ�Լ���ϵ��
drop table IF EXISTS siminfo.t_InstrumentGroup;

-- ɾ����Լ��
drop table IF EXISTS siminfo.t_Instrument;

-- ɾ����Լ���Ա�
drop table IF EXISTS siminfo.t_InstrumentProperty;

-- ɾ��֤ȯȨ���
drop table IF EXISTS siminfo.t_SecurityProfit;

-- ɾ�����鷢��״̬��
drop table IF EXISTS siminfo.t_MdPubStatus;

-- ɾ���г���
drop table IF EXISTS siminfo.t_Market;

-- ɾ���г���Ʒ������
drop table IF EXISTS siminfo.t_MarketProduct;

-- ɾ���г���Ʒ�������
drop table IF EXISTS siminfo.t_MarketProductGroup;

-- ɾ�����������
drop table IF EXISTS siminfo.t_MarketDataTopic;

-- ɾ����Ա���������
drop table IF EXISTS siminfo.t_PartTopicSubscribe;

-- ɾ����Ա�˻���ϵ��
drop table IF EXISTS siminfo.t_PartRoleAccount;

-- ɾ����Ա��Ʒ��ɫ��
drop table IF EXISTS siminfo.t_PartProductRole;

-- ɾ����Ա��Ʒ����Ȩ�ޱ�
drop table IF EXISTS siminfo.t_PartProductRight;

-- ɾ���ͻ���Ʒ����Ȩ�ޱ�
drop table IF EXISTS siminfo.t_ClientProductRight;

-- ɾ����Լ���׽׶����Ա�
drop table IF EXISTS siminfo.t_TradingSegmentAttr;

-- ɾ����Լ�۸�󶨱�
drop table IF EXISTS siminfo.t_PriceBanding;

-- ɾ����Լ��֤���ʱ�
drop table IF EXISTS siminfo.t_MarginRate;

-- ɾ����Լ��֤���ʵ���ϸ���ݱ�
drop table IF EXISTS siminfo.t_MarginRateDetail;

-- ɾ����Լ�����������ʵ���ϸ���ݱ�
drop table IF EXISTS siminfo.t_TransFeeRateDetail;

-- ɾ����Լ�����������ʵ���ϸ���ݱ�
drop table IF EXISTS siminfo.t_DelivFeeRateDetail;

-- ɾ���г������
drop table IF EXISTS siminfo.t_MarketData;

-- ɾ���ʻ������
drop table IF EXISTS siminfo.t_Account;

-- ɾ������׼�����˻���
drop table IF EXISTS siminfo.t_BaseReserveAccount;

-- ɾ��ҵ�����ò������
drop table IF EXISTS siminfo.t_BusinessConfig;

-- ɾ���ͻ��ʽ��
drop table IF EXISTS siminfo.t_ClientFund;

-- ɾ��Ͷ�����ʽ��
drop table IF EXISTS siminfo.t_InvestorFund;

-- ɾ����Ա�ʽ��
drop table IF EXISTS siminfo.t_PartFund;

-- ɾ���ͻ���Լ�ֱֲ�
drop table IF EXISTS siminfo.t_ClientPosition;

-- ɾ���ͻ��ֺ��Ʊ�ֱֲ�
drop table IF EXISTS siminfo.t_ClientPositionForSecurityProfit;

-- ɾ����Ա��Լ�ֱֲ�
drop table IF EXISTS siminfo.t_PartPosition;

-- ɾ���ڻ���Լ�ֲ���ϸ��
drop table IF EXISTS siminfo.t_FuturePositionDtl;

-- ɾ����׼�����
drop table IF EXISTS siminfo.t_BenchmarkMarket;

-- ɾ���������ÿ��ƽ���������ݱ�
drop table IF EXISTS siminfo.t_TradeMatchDailyAvgReturnData;

-- ɾ��δ֪̽�����
drop table IF EXISTS siminfo.t_DiscoveryActivity;

-- ɾ��δ֪̽����������ϵ��
drop table IF EXISTS siminfo.t_DiscoveryActSettleGroup;

-- ɾ��δ֪̽���Ͷ���߹�ϵ��
drop table IF EXISTS siminfo.t_DiscoveryActivityInvestor;

-- ɾ��Ͷ����δ֪̽��������Ϣ��
drop table IF EXISTS siminfo.t_DiscoveryActInvestorEval;

-- ɾ��δ֪̽���������Ͷ���߱�
drop table IF EXISTS siminfo.t_DiscoveryActRankableInvestor;

-- ɾ��Ͷ����δ֪̽����ʽ��
drop table IF EXISTS siminfo.t_DiscoveryActInvestorFund;

-- ɾ��Ͷ����δ֪̽�����Լ�ֱֲ�
drop table IF EXISTS siminfo.t_DiscoveryActInvestorPosition;

-- ɾ��Ԥ���׼�����
drop table IF EXISTS siminfo.t_PresettingBenchmarkMarket;

-- ɾ��δ֪̽���ÿ��ƽ���������ݱ�
drop table IF EXISTS siminfo.t_DiscoveryActDayAvgRetData;

----\siminfo_SimInfo_create.sql
-- ******************************
-- ��������ϵͳ��
-- ******************************
create table siminfo.t_TradeSystem
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,TradeSystemName   varchar(20) binary  not null COMMENT '����ϵͳ����'
	  ,PRIMARY KEY (TradeSystemID)
) COMMENT='����ϵͳ';



-- ******************************
-- ������̨ϵͳ��
-- ******************************
create table siminfo.t_BrokerSystem
(
	BrokerSystemID   varchar(8) binary  not null COMMENT '��̨ϵͳ����'
	,BrokerSystemName   varchar(20) binary  not null COMMENT '��̨ϵͳ����'
	,BrokerSystemType   char(1) binary  not null COMMENT '��̨ϵͳ����'
	,TradingAddress   varchar(40) binary  not null COMMENT '��̨ϵͳ���׵�ַ'
	  ,PRIMARY KEY (BrokerSystemID)
) COMMENT='��̨ϵͳ';



-- ******************************
-- ��������ϵͳ��̨ϵͳ��Ӧ��ϵ��
-- ******************************
create table siminfo.t_TradeSystemBrokerSystem
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,BrokerSystemID   varchar(8) binary  not null COMMENT '��̨ϵͳ����'
	  ,PRIMARY KEY (TradeSystemID,BrokerSystemID)
) COMMENT='����ϵͳ��̨ϵͳ��Ӧ��ϵ';



-- ******************************
-- ������̨ϵͳ�������Ӧ��ϵ��
-- ******************************
create table siminfo.t_BrokerSystemSettlementGroup
(
	BrokerSystemID   varchar(8) binary  not null COMMENT '��̨ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	  ,PRIMARY KEY (BrokerSystemID,SettlementGroupID)
) COMMENT='��̨ϵͳ�������Ӧ��ϵ';



-- ******************************
-- ������������
-- ******************************
create table siminfo.t_Exchange
(
	ExchangeID   varchar(8) binary  not null COMMENT '����������'
	,ExchangeName   varchar(30) binary  not null COMMENT '����������'
	  ,PRIMARY KEY (ExchangeID)
) COMMENT='������';



-- ******************************
-- ��������ϵͳ�����ձ�
-- ******************************
create table siminfo.t_TradeSystemTradingDay
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,TradingDay   varchar(8) binary  not null COMMENT '������'
	,LastTradingDay   varchar(8) binary   COMMENT 'ǰһ������'
	  ,PRIMARY KEY (TradeSystemID)
) COMMENT='����ϵͳ������';



-- ******************************
-- �����������
-- ******************************
create table siminfo.t_SettlementGroup
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementGroupName   varchar(20) binary  not null COMMENT '����������'
	,ExchangeID   varchar(8) binary  not null COMMENT '����������'
	,SettlementGroupType   char(1) binary  not null COMMENT '����������'
	,Currency   varchar(3) binary  not null COMMENT '����'
	  ,PRIMARY KEY (SettlementGroupID)
) COMMENT='������';



-- ******************************
-- ��������ϵͳ�������ϵ��
-- ******************************
create table siminfo.t_TradeSystemSettlementGroup
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID)
) COMMENT='����ϵͳ�������ϵ';



-- ******************************
-- �������»��
-- ******************************
create table siminfo.t_Activity
(
	ActivityID   varchar(8) binary  not null COMMENT '���»����'
	,TermNo   INTEGER    default '0' not null COMMENT '���»�ں�'
	,ActivityName   varchar(20) binary  not null COMMENT '���»����'
	,ActivityType   varchar(4) binary  not null COMMENT '���»����'
	,ActivityStatus   char(1) binary  not null COMMENT '���»״̬'
	,InitialBalance 	   decimal(19,3)    default '100000' not null COMMENT '��ʼ�ʽ�'
	,JoinMode   char(1) binary   default '0' not null COMMENT '���뷽ʽ'
	,RankingRule   varchar(2) binary   default '00' not null COMMENT '��������'
	,CircleFreq   char(1) binary   default '0' not null COMMENT 'ѭ��Ƶ��'
	,Duration   INTEGER    default '0' not null COMMENT '����ʱ��'
	,JoinCount   INTEGER    default '0' not null COMMENT '��������'
	,CreateDate   varchar(8) binary  not null COMMENT '��������'
	,CreateTime   varchar(8) binary  not null COMMENT '����ʱ��'
	,BeginDate   varchar(8) binary   COMMENT '��ʼ����'
	,EndDate   varchar(8) binary   COMMENT '��������'
	,UpdateDate   varchar(8) binary  not null COMMENT '����޸�����'
	,UpdateTime   varchar(8) binary  not null COMMENT '����޸�ʱ��'
	  ,PRIMARY KEY (ActivityID,TermNo)
) COMMENT='���»';



-- ******************************
-- �������»�������ϵ��
-- ******************************
create table siminfo.t_ActivitySettlementGroup
(
	ActivityID   varchar(8) binary  not null COMMENT '���»����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	  ,PRIMARY KEY (ActivityID,SettlementGroupID)
) COMMENT='���»�������ϵ';



-- ******************************
-- �������»Ͷ���߹�ϵ��
-- ******************************
create table siminfo.t_ActivityInvestor
(
	ID    bigInt(10)  auto_increment    not null COMMENT '����ID'
	,ActivityID   varchar(8) binary  not null COMMENT '���»����'
	,TermNo   INTEGER    default '0' not null COMMENT '���»�ں�'
	,InvestorID   varchar(10) binary  not null COMMENT 'Ͷ���ߴ���'
	,JoinDate   varchar(8) binary   COMMENT '��������'
	,JoinStatus   char(1) binary   default '0'  COMMENT '����״̬'
	,Rankable   INTEGER    default '1'  COMMENT '�Ƿ��������'
	  ,PRIMARY KEY (ID,ActivityID,InvestorID)
) COMMENT='���»Ͷ���߹�ϵ';



-- ******************************
-- ����Ͷ���߱����ֲ���Ϣ��
-- ******************************
create table siminfo.t_ActivityInvestorPosition
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
	,InvestorID   varchar(10) binary   default '0' not null COMMENT 'Ͷ���ߴ���'
	,ActivityID   varchar(8) binary  not null COMMENT '���»����'
	,TermNo   INTEGER    default '0' not null COMMENT '���»�ں�'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,HedgeFlag,PosiDirection,InstrumentID,ParticipantID,ClientID,InvestorID,ActivityID,TermNo)
) COMMENT='Ͷ���߱����ֲ���Ϣ';



-- ******************************
-- ����Ͷ���߱����ʽ���Ϣ��
-- ******************************
create table siminfo.t_ActivityInvestorFund
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,ActivityID   varchar(8) binary  not null COMMENT '���»����'
	,TermNo   INTEGER    default '0' not null COMMENT '���»�ں�'
	,BrokerSystemID   varchar(8) binary  not null COMMENT '��̨ϵͳ����'
	,InvestorID   varchar(10) binary  not null COMMENT 'Ͷ���ߴ���'
	,PreBalance 	   decimal(19,3)   not null COMMENT '�ϴν���׼����'
	,CurrMargin 	   decimal(19,3)   not null COMMENT '��ǰ��֤���ܶ�'
	,CloseProfit 	   decimal(19,3)   not null COMMENT 'ƽ��ӯ��'
	,Premium 	   decimal(19,3)   not null COMMENT '��ȨȨ������֧'
	,Deposit 	   decimal(19,3)   not null COMMENT '�����'
	,Withdraw 	   decimal(19,3)   not null COMMENT '������'
	,Balance 	   decimal(19,3)   not null COMMENT '�ڻ�����׼����'
	,Available 	   decimal(19,3)   not null COMMENT '�����ʽ�'
	,PreMargin 	   decimal(19,3)   not null COMMENT '�ϴα�֤���ܶ�'
	,FuturesMargin 	   decimal(19,3)   not null COMMENT '�ڻ���֤��'
	,OptionsMargin 	   decimal(19,3)   not null COMMENT '��Ȩ��֤��'
	,PositionProfit 	   decimal(19,3)   not null COMMENT '�ֲ�ӯ��'
	,Profit 	   decimal(19,3)   not null COMMENT '����ӯ��'
	,Interest 	   decimal(19,3)   not null COMMENT '��Ϣ����'
	,Fee 	   decimal(19,3)   not null COMMENT '������'
	,TotalCollateral 	   decimal(19,3)   not null COMMENT '����Ѻ���'
	,CollateralForMargin 	   decimal(19,3)   not null COMMENT '����Ѻ�ֵı�֤����'
	,PreAccmulateInterest 	   decimal(19,3)   not null COMMENT '�ϴ��ʽ���Ϣ����'
	,AccumulateInterest 	   decimal(19,3)   not null COMMENT '�ʽ���Ϣ����'
	,AccumulateFee 	   decimal(19,3)   not null COMMENT '��Ѻ�����ѻ���'
	,ForzenDeposit 	   decimal(19,3)   not null COMMENT '�����ʽ�'
	,AccountStatus   char(1) binary  not null COMMENT '�ʻ�״̬'
	,InitialAsset 	   decimal(19,3)    default '0' not null COMMENT '��ʼ�ʲ��ܶ�'
	,PreMonthAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ��ܶ�'
	,PreWeekAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ��ܶ�'
	,PreAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ��ܶ�'
	,CurrentAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ��ܶ�'
	,PreStockValue 	   decimal(19,3)   not null COMMENT '���Ʊ��ֵ'
	,StockValue 	   decimal(19,3)   not null COMMENT '��Ʊ��ֵ'
	  ,PRIMARY KEY (TradingDay,ActivityID,TermNo,BrokerSystemID,InvestorID)
) COMMENT='Ͷ���߱����ʽ���Ϣ';



-- ******************************
-- �������»������Ͷ���߱�
-- ******************************
create table siminfo.t_ActivityRankableInvestor
(
	ActivityID   varchar(8) binary  not null COMMENT '���»����'
	,InvestorID   varchar(10) binary   default '0' not null COMMENT 'Ͷ���ߴ���'
	,OpenID   varchar(20) binary   COMMENT 'Ͷ���߿���ʹ�õ������֤����'
	  ,PRIMARY KEY (ActivityID,InvestorID,OpenID)
) COMMENT='���»������Ͷ����';



-- ******************************
-- ����������
-- ******************************
create table siminfo.t_TradingCalendar
(
	Day   varchar(8) binary  not null COMMENT '����'
	,Wrk   INTEGER   not null COMMENT '������'
	,Tra   INTEGER   not null COMMENT '������'
	,Sun   INTEGER   not null COMMENT '����'
	,Mon   INTEGER   not null COMMENT '��һ'
	,Tue   INTEGER   not null COMMENT '�ܶ�'
	,Wed   INTEGER   not null COMMENT '����'
	,Thu   INTEGER   not null COMMENT '����'
	,Fri   INTEGER   not null COMMENT '����'
	,Sat   INTEGER   not null COMMENT '����'
	,Bom   INTEGER   not null COMMENT '�³�'
	,Eom   INTEGER   not null COMMENT '��ĩ'
	,Spr   INTEGER   not null COMMENT '����'
	,Hol   INTEGER   not null COMMENT '��������'
	  ,PRIMARY KEY (Day)
) COMMENT='����';



-- ******************************
-- ���������ʽ��˻���Ϣ��
-- ******************************
create table siminfo.t_TradingAccount
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
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
	  ,PRIMARY KEY (SettlementGroupID,AccountID)
) COMMENT='�����ʽ��˻���Ϣ';



-- ******************************
-- ������Ա��
-- ******************************
create table siminfo.t_Participant
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ParticipantName   varchar(50) binary  not null COMMENT '��Ա����'
	,ParticipantAbbr   varchar(8) binary  not null COMMENT '��Ա���'
	,MemberType   char(1) binary  not null COMMENT '��Ա����'
	,IsActive   INTEGER   not null COMMENT '�Ƿ��Ծ'
	  ,PRIMARY KEY (SettlementGroupID,ParticipantID)
) COMMENT='��Ա';



-- ******************************
-- �����ͻ���
-- ******************************
create table siminfo.t_Client
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,ClientName   varchar(80) binary  not null COMMENT '�ͻ�����'
	,IdentifiedCardType   varchar(15) binary   COMMENT '֤������'
	,IdentifiedCardNo   varchar(50) binary   COMMENT '֤������'
	,TradingRole   char(1) binary  not null COMMENT '���׽�ɫ'
	,ClientType   char(1) binary  not null COMMENT '�ͻ�����'
	,IsActive   INTEGER   not null COMMENT '�Ƿ��Ծ'
	,HedgeFlag   char(1) binary  not null COMMENT '�ͻ���������'
	  ,PRIMARY KEY (SettlementGroupID,ClientID)
) COMMENT='�ͻ�';



-- ******************************
-- ������Ա�ͻ���ϵ��
-- ******************************
create table siminfo.t_PartClient
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	  ,PRIMARY KEY (SettlementGroupID,ClientID,ParticipantID)
) COMMENT='��Ա�ͻ���ϵ';



-- ******************************
-- ����Ͷ������Ϣ��
-- ******************************
create table siminfo.t_Investor
(
	InvestorID   varchar(10) binary  not null COMMENT 'Ͷ���ߴ���'
	,InvestorName   varchar(20) binary   COMMENT 'Ͷ��������'
	,OpenID   varchar(20) binary   COMMENT 'Ͷ���߿���ʹ�õ������֤����'
	,Password   varchar(40) binary  not null COMMENT 'Ͷ���ߵ�¼����'
	,InvestorAccountType   varchar(4) binary   default '0' not null COMMENT 'Ͷ�����˻�����'
	,InvestorStatus   char(1) binary  not null COMMENT 'Ͷ����״̬'
	  ,PRIMARY KEY (InvestorID)
) COMMENT='Ͷ������Ϣ';


-- ����Ͷ������Ϣ�����֤��������
create  index IDX_Investor_OpenIDIndex on siminfo.t_Investor
(
	OpenID asc
);


-- ******************************
-- ����Ͷ���߿ͻ���ϵ��
-- ******************************
create table siminfo.t_InvestorClient
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,InvestorID   varchar(10) binary  not null COMMENT 'Ͷ���ߴ���'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	  ,PRIMARY KEY (SettlementGroupID,InvestorID,ClientID)
) COMMENT='Ͷ���߿ͻ���ϵ';


-- ����Ͷ���߿ͻ���ϵ���Ͷ���߿ͻ���ϵ�ͻ���������
create  index IDX_InvestorClient_InvestorClientClientIDIndex on siminfo.t_InvestorClient
(
	ClientID asc
);


-- ******************************
-- ����Ͷ��������������Ϣ��
-- ******************************
create table siminfo.t_ActivityInvestorEvaluation
(
	ActivityID   varchar(8) binary  not null COMMENT '���»����'
	,TermNo   INTEGER    default '0' not null COMMENT '���»�ں�'
	,InvestorID   varchar(10) binary  not null COMMENT 'Ͷ���ߴ���'
	,InitialAsset 	   decimal(19,3)    default '0' not null COMMENT '�ڳ��ʲ�'
	,PreMonthAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ�'
	,PreWeekAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ�'
	,PreAsset 	   decimal(19,3)    default '0' not null COMMENT '���ʲ�'
	,CurrentAsset 	   decimal(19,3)    default '0' not null COMMENT '��ǰ�ʲ�'
	,TotalReturnRate 	   decimal(22,6)    default '0' not null COMMENT '��������'
	,ReturnRateOfMonth 	   decimal(22,6)    default '0' not null COMMENT '��������'
	,ReturnRateOfWeek 	   decimal(22,6)    default '0' not null COMMENT '��������'
	,ReturnRateOf1Day 	   decimal(22,6)    default '0' not null COMMENT '��������'
	,RankingStatus   char(1) binary   default '0' not null COMMENT '�Ƿ��������'
	,PreRanking    bigInt(10)     default '0' not null COMMENT '��������������'
	,Ranking    bigInt(10)     default '0' not null COMMENT '������������'
	  ,PRIMARY KEY (ActivityID,TermNo,InvestorID)
) COMMENT='Ͷ��������������Ϣ';



-- ******************************
-- ���������û���
-- ******************************
create table siminfo.t_User
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,UserID   varchar(15) binary  not null COMMENT '�����û�����'
	,UserType   char(1) binary  not null COMMENT '�����û�����'
	,Password   varchar(40) binary  not null COMMENT '����'
	,IsActive   INTEGER   not null COMMENT '����ԱȨ��'
	  ,PRIMARY KEY (SettlementGroupID,UserID)
) COMMENT='�����û�';



-- ******************************
-- �����û�����Ȩ�ޱ�
-- ******************************
create table siminfo.t_UserFunctionRight
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,UserID   varchar(15) binary  not null COMMENT '�����û�����'
	,FunctionCode   varchar(24) binary  not null COMMENT '���ܴ���'
	  ,PRIMARY KEY (SettlementGroupID,UserID,FunctionCode)
) COMMENT='�û�����Ȩ��';



-- ******************************
-- ��������ԱIP��ַ��
-- ******************************
create table siminfo.t_UserIP
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,UserID   varchar(15) binary  not null COMMENT '�����û�����'
	,IPAddress   varchar(15) binary  not null COMMENT 'IP��ַ'
	,IPMask   varchar(15) binary  not null COMMENT 'IP��ַ����'
	  ,PRIMARY KEY (SettlementGroupID,UserID,IPAddress)
) COMMENT='����ԱIP��ַ';



-- ******************************
-- �������㽻�׻�Ա��ϵ��
-- ******************************
create table siminfo.t_ClearingTradingPart
(
	ClearingPartID   varchar(10) binary   COMMENT '�����Ա'
	,ParticipantID   varchar(10) binary   COMMENT '���׻�Ա'
	  ,PRIMARY KEY (ClearingPartID,ParticipantID)
) COMMENT='���㽻�׻�Ա��ϵ';



-- ******************************
-- ������Ʒ���
-- ******************************
create table siminfo.t_ProductGroup
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ProductGroupID   varchar(8) binary  not null COMMENT '��Ʒ�����'
	,ProductGroupName   varchar(20) binary  not null COMMENT '��Ʒ������'
	,CommodityID   varchar(8) binary  not null COMMENT '��Ʒ����'
	  ,PRIMARY KEY (SettlementGroupID,ProductGroupID)
) COMMENT='��Ʒ��';



-- ******************************
-- ������Ʒ��
-- ******************************
create table siminfo.t_Product
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
	,ProductGroupID   varchar(8) binary  not null COMMENT '��Ʒ�����'
	,ProductName   varchar(20) binary  not null COMMENT '��Ʒ����'
	,ProductClass   char(1) binary  not null COMMENT '��Ʒ����'
	  ,PRIMARY KEY (SettlementGroupID,ProductID)
) COMMENT='��Ʒ';



-- ******************************
-- ������Ʒ���Ա�
-- ******************************
create table siminfo.t_ProductProperty
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
	,ProductLifePhase   char(1) binary  not null COMMENT '��Ʒ��������״̬'
	,TradingModel   char(1) binary  not null COMMENT '����ģʽ'
	,OptionsLimitRatio 	   decimal(22,6)    COMMENT '��Ȩ�޲�ϵ��'
	,OptionsMgRatio 	   decimal(22,6)    COMMENT '��Ȩ��֤�����ϵ��'
	,SettlePriceSeconds   INTEGER   not null COMMENT '����ȡ��ʱ��'
	  ,PRIMARY KEY (SettlementGroupID,ProductID)
) COMMENT='��Ʒ����';



-- ******************************
-- ������Լ�ͺ�Լ���ϵ��
-- ******************************
create table siminfo.t_InstrumentGroup
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,InstrumentGroupID   varchar(30) binary  not null COMMENT '��Լ�����'
	  ,PRIMARY KEY (SettlementGroupID,InstrumentID)
) COMMENT='��Լ�ͺ�Լ���ϵ';



-- ******************************
-- ������Լ��
-- ******************************
create table siminfo.t_Instrument
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
	,ProductGroupID   varchar(8) binary  not null COMMENT '��Ʒ�����'
	,UnderlyingInstrID   varchar(30) binary   COMMENT '������Ʒ����'
	,ProductClass   char(1) binary  not null COMMENT '��Ʒ����'
	,PositionType   char(1) binary  not null COMMENT '�ֲ�����'
	,PositionDateType   char(1) binary   default '1' not null COMMENT '�ֲ���������'
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
	  ,PRIMARY KEY (SettlementGroupID,InstrumentID)
) COMMENT='��Լ';



-- ******************************
-- ������Լ���Ա�
-- ******************************
create table siminfo.t_InstrumentProperty
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
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
	  ,PRIMARY KEY (SettlementGroupID,InstrumentID)
) COMMENT='��Լ����';



-- ******************************
-- ����֤ȯȨ���
-- ******************************
create table siminfo.t_SecurityProfit
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SecurityID   varchar(30) binary  not null COMMENT '֤ȯ����'
	,SecurityType   varchar(4) binary  not null COMMENT '֤ȯ����'
	,SecurityMarketID   char(1) binary  not null COMMENT '֤ȯ�г�����'
	,ProfitType   varchar(4) binary  not null COMMENT 'Ȩ������'
	,DJDate   varchar(8) binary   COMMENT '�Ǽ�����'
	,CQDate   varchar(8) binary   COMMENT '��Ȩ����'
	,EndDate   varchar(8) binary   COMMENT '��������'
	,DZDate   varchar(8) binary   COMMENT '��������'
	,BeforeRate 	   decimal(22,8)   not null COMMENT '˰ǰ����'
	,AfterRate 	   decimal(22,8)   not null COMMENT '˰������'
	,Price 	   decimal(19,3)   not null COMMENT '�۸�'
	  ,PRIMARY KEY (SettlementGroupID,SecurityID,SecurityType,SecurityMarketID,ProfitType)
) COMMENT='֤ȯȨ��';



-- ******************************
-- �������鷢��״̬��
-- ******************************
create table siminfo.t_MdPubStatus
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
	,InstrumentStatus   char(1) binary  not null COMMENT '��Լ����״̬'
	,MdPubStatus   char(1) binary  not null COMMENT '���鷢��״̬'
	  ,PRIMARY KEY (SettlementGroupID,ProductID,InstrumentStatus)
) COMMENT='���鷢��״̬';



-- ******************************
-- �����г���
-- ******************************
create table siminfo.t_Market
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,MarketID   varchar(8) binary  not null COMMENT '�г�����'
	,MarketName   varchar(20) binary  not null COMMENT '�г�����'
	  ,PRIMARY KEY (SettlementGroupID,MarketID)
) COMMENT='�г�';



-- ******************************
-- �����г���Ʒ������
-- ******************************
create table siminfo.t_MarketProduct
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,MarketID   varchar(8) binary  not null COMMENT '�г�����'
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
	  ,PRIMARY KEY (SettlementGroupID,MarketID,ProductID)
) COMMENT='�г���Ʒ����';



-- ******************************
-- �����г���Ʒ�������
-- ******************************
create table siminfo.t_MarketProductGroup
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,MarketID   varchar(8) binary  not null COMMENT '�г�����'
	,ProductGroupID   varchar(8) binary  not null COMMENT '��Ʒ�����'
	  ,PRIMARY KEY (SettlementGroupID,MarketID,ProductGroupID)
) COMMENT='�г���Ʒ�����';



-- ******************************
-- �������������
-- ******************************
create table siminfo.t_MarketDataTopic
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,TopicID   INTEGER   not null COMMENT '�������'
	,TopicName   varchar(60) binary  not null COMMENT '��������'
	,MarketID   varchar(8) binary  not null COMMENT '�г�����'
	,SnapShotFeq   INTEGER   not null COMMENT '����Ƶ��'
	,MarketDataDepth   INTEGER   not null COMMENT '�г��������'
	,DelaySeconds   INTEGER   not null COMMENT '�ӳ�����'
	,MarketDataMode   char(1) binary  not null COMMENT '����ģʽ'
	  ,PRIMARY KEY (SettlementGroupID,TopicID)
) COMMENT='��������';



-- ******************************
-- ������Ա���������
-- ******************************
create table siminfo.t_PartTopicSubscribe
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ParticipantID   varchar(10) binary  not null COMMENT '�����ߴ���'
	,ParticipantType   char(1) binary  not null COMMENT '����������'
	,TopicID   INTEGER   not null COMMENT '�������'
	  ,PRIMARY KEY (SettlementGroupID,ParticipantID,TopicID)
) COMMENT='��Ա��������';



-- ******************************
-- ������Ա�˻���ϵ��
-- ******************************
create table siminfo.t_PartRoleAccount
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,TradingRole   char(1) binary  not null COMMENT '���׽�ɫ'
	,AccountID   varchar(12) binary  not null COMMENT '�ʽ��ʺ�'
	  ,PRIMARY KEY (SettlementGroupID,ParticipantID,TradingRole)
) COMMENT='��Ա�˻���ϵ';



-- ******************************
-- ������Ա��Ʒ��ɫ��
-- ******************************
create table siminfo.t_PartProductRole
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
	,TradingRole   char(1) binary  not null COMMENT '���׽�ɫ'
	  ,PRIMARY KEY (SettlementGroupID,ParticipantID,ProductID,TradingRole)
) COMMENT='��Ա��Ʒ��ɫ';



-- ******************************
-- ������Ա��Ʒ����Ȩ�ޱ�
-- ******************************
create table siminfo.t_PartProductRight
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,TradingRight   char(1) binary  not null COMMENT '����Ȩ��'
	  ,PRIMARY KEY (SettlementGroupID,ProductID,ParticipantID)
) COMMENT='��Ա��Ʒ����Ȩ��';



-- ******************************
-- �����ͻ���Ʒ����Ȩ�ޱ�
-- ******************************
create table siminfo.t_ClientProductRight
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,TradingRight   char(1) binary  not null COMMENT '����Ȩ��'
	  ,PRIMARY KEY (SettlementGroupID,ProductID,ClientID)
) COMMENT='�ͻ���Ʒ����Ȩ��';



-- ******************************
-- ������Լ���׽׶����Ա�
-- ******************************
create table siminfo.t_TradingSegmentAttr
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,TradingSegmentSN   INTEGER   not null COMMENT '���׽׶α��'
	,TradingSegmentName   varchar(20) binary   COMMENT '���׽׶�����'
	,StartTime   varchar(8) binary  not null COMMENT '��ʼʱ��'
	,InstrumentStatus   char(1) binary  not null COMMENT '��Լ����״̬'
	,DayOffset   INTEGER    default '0' not null COMMENT '����ƫ����'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	  ,PRIMARY KEY (SettlementGroupID,TradingSegmentSN,InstrumentID)
) COMMENT='��Լ���׽׶�����';



-- ******************************
-- ������Լ�۸�󶨱�
-- ******************************
create table siminfo.t_PriceBanding
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,PriceLimitType   char(1) binary  not null COMMENT '�޼�����'
	,ValueMode   char(1) binary  not null COMMENT 'ȡֵ��ʽ'
	,RoundingMode   char(1) binary  not null COMMENT '���뷽ʽ'
	,UpperValue 	   decimal(16,6)   not null COMMENT '����'
	,LowerValue 	   decimal(16,6)   not null COMMENT '����'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,TradingSegmentSN   INTEGER   not null COMMENT '���׽׶α��'
	  ,PRIMARY KEY (SettlementGroupID,InstrumentID,TradingSegmentSN)
) COMMENT='��Լ�۸��';



-- ******************************
-- ������Լ��֤���ʱ�
-- ******************************
create table siminfo.t_MarginRate
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,MarginCalcID   varchar(4) binary  not null COMMENT '��֤���㷨����'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	  ,PRIMARY KEY (SettlementGroupID,InstrumentID,ParticipantID)
) COMMENT='��Լ��֤����';



-- ******************************
-- ������Լ��֤���ʵ���ϸ���ݱ�
-- ******************************
create table siminfo.t_MarginRateDetail
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
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
	  ,PRIMARY KEY (SettlementGroupID,TradingRole,HedgeFlag,InstrumentID,ParticipantID,ClientID)
) COMMENT='��Լ��֤���ʵ���ϸ����';



-- ******************************
-- ������Լ�����������ʵ���ϸ���ݱ�
-- ******************************
create table siminfo.t_TransFeeRateDetail
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
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
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	  ,PRIMARY KEY (SettlementGroupID,TradingRole,HedgeFlag,InstrumentID,ParticipantID,ClientID)
) COMMENT='��Լ�����������ʵ���ϸ����';



-- ******************************
-- ������Լ�����������ʵ���ϸ���ݱ�
-- ******************************
create table siminfo.t_DelivFeeRateDetail
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ValueMode   char(1) binary  not null COMMENT 'ȡֵ��ʽ'
	,DelivFeeRatio 	   decimal(22,6)   not null COMMENT '������������'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	  ,PRIMARY KEY (SettlementGroupID,InstrumentID,ParticipantID,ClientID)
) COMMENT='��Լ�����������ʵ���ϸ����';



-- ******************************
-- �����г������
-- ******************************
create table siminfo.t_MarketData
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
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
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,InstrumentID)
) COMMENT='�г�����';



-- ******************************
-- �����ʻ������
-- ******************************
create table siminfo.t_Account
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,AccountID   varchar(12) binary  not null COMMENT '�ʽ��ʺ�'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,Currency   varchar(3) binary  not null COMMENT '����'
	  ,PRIMARY KEY (SettlementGroupID,AccountID)
) COMMENT='�ʻ�����';



-- ******************************
-- ��������׼�����˻���
-- ******************************
create table siminfo.t_BaseReserveAccount
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,AccountID   varchar(12) binary  not null COMMENT '�ʽ��ʺ�'
	,Reserve 	   decimal(19,3)   not null COMMENT '����׼����'
	  ,PRIMARY KEY (SettlementGroupID,AccountID)
) COMMENT='����׼�����˻�';



-- ******************************
-- ����ҵ�����ò������
-- ******************************
create table siminfo.t_BusinessConfig
(
	SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,FunctionCode   varchar(24) binary  not null COMMENT '���ܴ���'
	,OperationType   varchar(24) binary  not null COMMENT '��������'
	,Description   varchar(400) binary   COMMENT '��������'
	  ,PRIMARY KEY (SettlementGroupID,FunctionCode)
) COMMENT='ҵ�����ò�����';



-- ******************************
-- �����ͻ��ʽ��
-- ******************************
create table siminfo.t_ClientFund
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



-- ******************************
-- ����Ͷ�����ʽ��
-- ******************************
create table siminfo.t_InvestorFund
(
	BrokerSystemID   varchar(8) binary  not null COMMENT '��̨ϵͳ����'
	,InvestorID   varchar(10) binary  not null COMMENT 'Ͷ���ߴ���'
	,PreBalance 	   decimal(19,3)   not null COMMENT '�ϴν���׼����'
	,CurrMargin 	   decimal(19,3)   not null COMMENT '��ǰ��֤���ܶ�'
	,CloseProfit 	   decimal(19,3)   not null COMMENT 'ƽ��ӯ��'
	,Premium 	   decimal(19,3)   not null COMMENT '��ȨȨ������֧'
	,Deposit 	   decimal(19,3)   not null COMMENT '�����'
	,Withdraw 	   decimal(19,3)   not null COMMENT '������'
	,Balance 	   decimal(19,3)   not null COMMENT '�ڻ�����׼����'
	,Available 	   decimal(19,3)   not null COMMENT '�����ʽ�'
	,PreMargin 	   decimal(19,3)   not null COMMENT '�ϴα�֤���ܶ�'
	,FuturesMargin 	   decimal(19,3)   not null COMMENT '�ڻ���֤��'
	,OptionsMargin 	   decimal(19,3)   not null COMMENT '��Ȩ��֤��'
	,PositionProfit 	   decimal(19,3)   not null COMMENT '�ֲ�ӯ��'
	,Profit 	   decimal(19,3)   not null COMMENT '����ӯ��'
	,Interest 	   decimal(19,3)   not null COMMENT '��Ϣ����'
	,Fee 	   decimal(19,3)   not null COMMENT '������'
	,TotalCollateral 	   decimal(19,3)   not null COMMENT '����Ѻ���'
	,CollateralForMargin 	   decimal(19,3)   not null COMMENT '����Ѻ�ֵı�֤����'
	,PreAccmulateInterest 	   decimal(19,3)   not null COMMENT '�ϴ��ʽ���Ϣ����'
	,AccumulateInterest 	   decimal(19,3)   not null COMMENT '�ʽ���Ϣ����'
	,AccumulateFee 	   decimal(19,3)   not null COMMENT '��Ѻ�����ѻ���'
	,ForzenDeposit 	   decimal(19,3)   not null COMMENT '�����ʽ�'
	,AccountStatus   char(1) binary  not null COMMENT '�ʻ�״̬'
	,InitialAsset 	   decimal(19,3)    default '0' not null COMMENT '��ʼ�ʲ��ܶ�'
	,PreMonthAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ��ܶ�'
	,PreWeekAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ��ܶ�'
	,PreAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ��ܶ�'
	,CurrentAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ��ܶ�'
	,PreStockValue 	   decimal(19,3)   not null COMMENT '���Ʊ��ֵ'
	,StockValue 	   decimal(19,3)   not null COMMENT '��Ʊ��ֵ'
	  ,PRIMARY KEY (BrokerSystemID,InvestorID)
) COMMENT='Ͷ�����ʽ�';



-- ******************************
-- ������Ա�ʽ��
-- ******************************
create table siminfo.t_PartFund
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,AccountID   varchar(12) binary  not null COMMENT '�ʽ��ʺ�'
	,Available 	   decimal(19,3)   not null COMMENT '�����ʽ�'
	,TransFee 	   decimal(19,3)   not null COMMENT '����������'
	,DelivFee 	   decimal(19,3)   not null COMMENT '����������'
	,PositionMargin 	   decimal(19,3)   not null COMMENT '�ֱֲ�֤��'
	,Profit 	   decimal(19,3)   not null COMMENT 'ӯ��'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,InstrumentID,ParticipantID,AccountID)
) COMMENT='��Ա�ʽ�';



-- ******************************
-- �����ͻ���Լ�ֱֲ�
-- ******************************
create table siminfo.t_ClientPosition
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
create table siminfo.t_ClientPositionForSecurityProfit
(
	DJDate   varchar(8) binary  not null COMMENT '�Ǽ�����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
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
	  ,PRIMARY KEY (DJDate,SettlementGroupID,HedgeFlag,PosiDirection,InstrumentID,ParticipantID,ClientID)
) COMMENT='�ͻ��ֺ��Ʊ�ֲ�';



-- ******************************
-- ������Ա��Լ�ֱֲ�
-- ******************************
create table siminfo.t_PartPosition
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
-- �����ڻ���Լ�ֲ���ϸ��
-- ******************************
create table siminfo.t_FuturePositionDtl
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,HedgeFlag   char(1) binary  not null COMMENT 'Ͷ���ױ���־'
	,Direction   char(1) binary  not null COMMENT '��������'
	,OpenDate   varchar(8) binary  not null COMMENT '��������'
	,TradeID   varchar(12) binary  not null COMMENT '�ɽ����'
	,Volume    bigInt(10)     COMMENT '��������'
	,OpenPrice 	   decimal(16,6)    COMMENT '���ּ۸�'
	,TradeType   char(1) binary  not null COMMENT '�ɽ�����'
	,CombInstrumentID   varchar(30) binary   COMMENT '��Ϻ�Լ����'
	,ExchangeID   varchar(8) binary  not null COMMENT '����������'
	,CloseProfitByDate 	   decimal(19,3)    COMMENT '����ƽ��ӯ��'
	,CloseProfitByTrade 	   decimal(19,3)    COMMENT '���ƽ��ӯ��'
	,PositionProfitByDate 	   decimal(19,3)    COMMENT '���ճֲ�ӯ��'
	,PositionProfitByTrade 	   decimal(19,3)    COMMENT '��ʳֲ�ӯ��'
	,Margin 	   decimal(19,3)    COMMENT '��֤��'
	,ExchMargin 	   decimal(19,3)    COMMENT '��������֤��'
	,MarginRateByMoney 	   decimal(22,6)   not null COMMENT '��֤����'
	,MarginRateByVolume 	   decimal(22,6)   not null COMMENT '��ʱ�֤��'
	,LastSettlementPrice 	   decimal(16,6)    COMMENT '�����'
	,SettlementPrice 	   decimal(16,6)    COMMENT '�����'
	,CloseVolume    bigInt(10)     COMMENT 'ƽ������'
	,CloseAmount 	   decimal(19,3)    COMMENT 'ƽ�ֽ��'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,InstrumentID,ParticipantID,ClientID,HedgeFlag,Direction,OpenDate,TradeID,TradeType)
) COMMENT='�ڻ���Լ�ֲ���ϸ';



-- ******************************
-- ������׼�����
-- ******************************
create table siminfo.t_BenchmarkMarket
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,StockID   varchar(10) binary  not null COMMENT '֤ȯ����'
	,LastClosingPrice 	   decimal(16,6)   not null COMMENT '�����̼�'
	,OpeningPrice 	   decimal(16,6)   not null COMMENT '���̼�'
	,ClosingPrice 	   decimal(16,6)   not null COMMENT '���̼�'
	,TopPrice 	   decimal(16,6)   not null COMMENT '��߼�'
	,FloorPrice 	   decimal(16,6)   not null COMMENT '��ͼ�'
	,TradingVolume    bigInt(15)    not null COMMENT '�ɽ���'
	  ,PRIMARY KEY (TradingDay,StockID)
) COMMENT='��׼����';



-- ******************************
-- �����������ÿ��ƽ���������ݱ�
-- ******************************
create table siminfo.t_TradeMatchDailyAvgReturnData
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,StatisticRankNo   varchar(10) binary  not null COMMENT 'ͳ����������'
	,ActivityID   varchar(8) binary  not null COMMENT '���»����'
	,TermNo   INTEGER    default '0' not null COMMENT '���»�ں�'
	,MatchTotalProfit 	   decimal(22,6)   not null COMMENT '�����ۼ�ƽ��������'
	,BenchmarkTotalProfit 	   decimal(22,6)   not null COMMENT '��׼�ۼ�������'
	  ,PRIMARY KEY (TradingDay,StatisticRankNo,ActivityID,TermNo)
) COMMENT='�������ÿ��ƽ����������';



-- ******************************
-- ����δ֪̽�����
-- ******************************
create table siminfo.t_DiscoveryActivity
(
	ActivityID   varchar(8) binary  not null COMMENT '�����'
	,TermNo   INTEGER    default '0' not null COMMENT '��ں�'
	,ActivityName   varchar(20) binary  not null COMMENT '�����'
	,ActivityType   varchar(4) binary  not null COMMENT '�����'
	,ActivityStatus   char(1) binary  not null COMMENT '�״̬'
	,InitialBalance 	   decimal(19,3)    default '100000' not null COMMENT '��ʼ�ʽ�'
	,JoinMode   char(1) binary   default '0' not null COMMENT '���뷽ʽ'
	,RankingRule   varchar(2) binary   default '00' not null COMMENT '��������'
	,CircleFreq   char(1) binary   default '0' not null COMMENT 'ѭ��Ƶ��'
	,Duration   INTEGER    default '0' not null COMMENT '����ʱ��'
	,JoinCount   INTEGER    default '0' not null COMMENT '�μ�����'
	,CreateDate   varchar(8) binary  not null COMMENT '��������'
	,CreateTime   varchar(8) binary  not null COMMENT '����ʱ��'
	,BeginDate   varchar(8) binary   COMMENT '��ʼ����'
	,EndDate   varchar(8) binary   COMMENT '��������'
	,UpdateDate   varchar(8) binary  not null COMMENT '����޸�����'
	,UpdateTime   varchar(8) binary  not null COMMENT '����޸�ʱ��'
	  ,PRIMARY KEY (ActivityID,TermNo)
) COMMENT='δ֪̽���';



-- ******************************
-- ����δ֪̽����������ϵ��
-- ******************************
create table siminfo.t_DiscoveryActSettleGroup
(
	ActivityID   varchar(8) binary  not null COMMENT '�����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	  ,PRIMARY KEY (ActivityID,SettlementGroupID)
) COMMENT='δ֪̽����������ϵ';



-- ******************************
-- ����δ֪̽���Ͷ���߹�ϵ��
-- ******************************
create table siminfo.t_DiscoveryActivityInvestor
(
	ID    bigInt(10)  auto_increment    not null COMMENT '����ID'
	,ActivityID   varchar(8) binary  not null COMMENT 'δ֪̽�������'
	,TermNo   INTEGER    default '0' not null COMMENT 'δ֪̽����ں�'
	,InvestorID   varchar(10) binary  not null COMMENT 'Ͷ���ߴ���'
	,JoinDate   varchar(8) binary   COMMENT '��������'
	,JoinStatus   char(1) binary   default '0'  COMMENT '����״̬'
	,Rankable   INTEGER    default '1'  COMMENT '�Ƿ��������'
	  ,PRIMARY KEY (ID,ActivityID,InvestorID)
) COMMENT='δ֪̽���Ͷ���߹�ϵ';



-- ******************************
-- ����Ͷ����δ֪̽��������Ϣ��
-- ******************************
create table siminfo.t_DiscoveryActInvestorEval
(
	ActivityID   varchar(8) binary  not null COMMENT 'δ֪̽�������'
	,TermNo   INTEGER    default '0' not null COMMENT 'δ֪̽����ں�'
	,InvestorID   varchar(10) binary  not null COMMENT 'Ͷ���ߴ���'
	,InitialAsset 	   decimal(19,3)    default '0' not null COMMENT '�ڳ��ʲ�'
	,PreMonthAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ�'
	,PreWeekAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ�'
	,PreAsset 	   decimal(19,3)    default '0' not null COMMENT '���ʲ�'
	,CurrentAsset 	   decimal(19,3)    default '0' not null COMMENT '��ǰ�ʲ�'
	,TotalReturnRate 	   decimal(22,6)    default '0' not null COMMENT '��������'
	,ReturnRateOfMonth 	   decimal(22,6)    default '0' not null COMMENT '��������'
	,ReturnRateOfWeek 	   decimal(22,6)    default '0' not null COMMENT '��������'
	,ReturnRateOf1Day 	   decimal(22,6)    default '0' not null COMMENT '��������'
	,RankingStatus   char(1) binary   default '0' not null COMMENT '�Ƿ��������'
	,PreRanking    bigInt(10)     default '0' not null COMMENT '��������������'
	,Ranking    bigInt(10)     default '0' not null COMMENT '������������'
	,IntegratedScores 	   decimal(10,3)   not null COMMENT '�ۺϻ���'
	  ,PRIMARY KEY (ActivityID,TermNo,InvestorID)
) COMMENT='Ͷ����δ֪̽��������Ϣ';



-- ******************************
-- ����δ֪̽���������Ͷ���߱�
-- ******************************
create table siminfo.t_DiscoveryActRankableInvestor
(
	ActivityID   varchar(8) binary  not null COMMENT 'δ֪̽�������'
	,InvestorID   varchar(10) binary   default '0' not null COMMENT 'Ͷ���ߴ���'
	,OpenID   varchar(20) binary   COMMENT 'Ͷ���߿���ʹ�õ������֤����'
	  ,PRIMARY KEY (ActivityID,InvestorID,OpenID)
) COMMENT='δ֪̽���������Ͷ����';



-- ******************************
-- ����Ͷ����δ֪̽����ʽ��
-- ******************************
create table siminfo.t_DiscoveryActInvestorFund
(
	ActivityID   varchar(8) binary  not null COMMENT 'δ֪̽�������'
	,TermNo   INTEGER    default '0' not null COMMENT 'δ֪̽����ں�'
	,BrokerSystemID   varchar(8) binary  not null COMMENT '��̨ϵͳ����'
	,InvestorID   varchar(10) binary  not null COMMENT 'Ͷ���ߴ���'
	,PreBalance 	   decimal(19,3)   not null COMMENT '�ϴν���׼����'
	,CurrMargin 	   decimal(19,3)   not null COMMENT '��ǰ��֤���ܶ�'
	,CloseProfit 	   decimal(19,3)   not null COMMENT 'ƽ��ӯ��'
	,Premium 	   decimal(19,3)   not null COMMENT '��ȨȨ������֧'
	,Deposit 	   decimal(19,3)   not null COMMENT '�����'
	,Withdraw 	   decimal(19,3)   not null COMMENT '������'
	,Balance 	   decimal(19,3)   not null COMMENT '�ڻ�����׼����'
	,Available 	   decimal(19,3)   not null COMMENT '�����ʽ�'
	,PreMargin 	   decimal(19,3)   not null COMMENT '�ϴα�֤���ܶ�'
	,FuturesMargin 	   decimal(19,3)   not null COMMENT '�ڻ���֤��'
	,OptionsMargin 	   decimal(19,3)   not null COMMENT '��Ȩ��֤��'
	,PositionProfit 	   decimal(19,3)   not null COMMENT '�ֲ�ӯ��'
	,Profit 	   decimal(19,3)   not null COMMENT '����ӯ��'
	,Interest 	   decimal(19,3)   not null COMMENT '��Ϣ����'
	,Fee 	   decimal(19,3)   not null COMMENT '������'
	,TotalCollateral 	   decimal(19,3)   not null COMMENT '����Ѻ���'
	,CollateralForMargin 	   decimal(19,3)   not null COMMENT '����Ѻ�ֵı�֤����'
	,PreAccmulateInterest 	   decimal(19,3)   not null COMMENT '�ϴ��ʽ���Ϣ����'
	,AccumulateInterest 	   decimal(19,3)   not null COMMENT '�ʽ���Ϣ����'
	,AccumulateFee 	   decimal(19,3)   not null COMMENT '��Ѻ�����ѻ���'
	,ForzenDeposit 	   decimal(19,3)   not null COMMENT '�����ʽ�'
	,AccountStatus   char(1) binary  not null COMMENT '�ʻ�״̬'
	,InitialAsset 	   decimal(19,3)    default '0' not null COMMENT '��ʼ�ʲ��ܶ�'
	,PreMonthAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ��ܶ�'
	,PreWeekAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ��ܶ�'
	,PreAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ��ܶ�'
	,CurrentAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ��ܶ�'
	,PreStockValue 	   decimal(19,3)   not null COMMENT '���Ʊ��ֵ'
	,StockValue 	   decimal(19,3)   not null COMMENT '��Ʊ��ֵ'
	  ,PRIMARY KEY (ActivityID,TermNo,BrokerSystemID,InvestorID)
) COMMENT='Ͷ����δ֪̽����ʽ�';



-- ******************************
-- ����Ͷ����δ֪̽�����Լ�ֱֲ�
-- ******************************
create table siminfo.t_DiscoveryActInvestorPosition
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
	,InvestorID   varchar(10) binary   default '0' not null COMMENT 'Ͷ���ߴ���'
	,ActivityID   varchar(8) binary  not null COMMENT 'δ֪̽�������'
	,TermNo   INTEGER    default '0' not null COMMENT 'δ֪̽����ں�'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,HedgeFlag,PosiDirection,InstrumentID,ParticipantID,ClientID,InvestorID,ActivityID,TermNo)
) COMMENT='Ͷ����δ֪̽�����Լ�ֲ�';



-- ******************************
-- ����Ԥ���׼�����
-- ******************************
create table siminfo.t_PresettingBenchmarkMarket
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,StockID   varchar(10) binary  not null COMMENT '֤ȯ����'
	,LastClosingPrice 	   decimal(16,6)   not null COMMENT '�����̼�'
	,OpeningPrice 	   decimal(16,6)   not null COMMENT '���̼�'
	,ClosingPrice 	   decimal(16,6)   not null COMMENT '���̼�'
	,TopPrice 	   decimal(16,6)   not null COMMENT '��߼�'
	,FloorPrice 	   decimal(16,6)   not null COMMENT '��ͼ�'
	,TradingVolume    bigInt(15)    not null COMMENT '�ɽ���'
	  ,PRIMARY KEY (TradingDay,StockID)
) COMMENT='Ԥ���׼����';



-- ******************************
-- ����δ֪̽���ÿ��ƽ���������ݱ�
-- ******************************
create table siminfo.t_DiscoveryActDayAvgRetData
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,StatisticRankNo   varchar(10) binary  not null COMMENT 'ͳ����������'
	,ActivityID   varchar(8) binary  not null COMMENT 'δ֪̽�������'
	,TermNo   INTEGER    default '0' not null COMMENT 'δ֪̽����ں�'
	,MatchTotalProfit 	   decimal(22,6)   not null COMMENT 'δ֪̽����ۼ�ƽ��������'
	,BenchmarkTotalProfit 	   decimal(22,6)   not null COMMENT '��׼�ۼ�������'
	  ,PRIMARY KEY (TradingDay,StatisticRankNo,ActivityID,TermNo)
) COMMENT='δ֪̽���ÿ��ƽ����������';



----\siminfo_SimInfo_clear.sql
-- ��ս���ϵͳ��
truncate table siminfo.t_TradeSystem;

-- ��չ�̨ϵͳ��
truncate table siminfo.t_BrokerSystem;

-- ��ս���ϵͳ��̨ϵͳ��Ӧ��ϵ��
truncate table siminfo.t_TradeSystemBrokerSystem;

-- ��չ�̨ϵͳ�������Ӧ��ϵ��
truncate table siminfo.t_BrokerSystemSettlementGroup;

-- ��ս�������
truncate table siminfo.t_Exchange;

-- ��ս���ϵͳ�����ձ�
truncate table siminfo.t_TradeSystemTradingDay;

-- ��ս������
truncate table siminfo.t_SettlementGroup;

-- ��ս���ϵͳ�������ϵ��
truncate table siminfo.t_TradeSystemSettlementGroup;

-- ������»��
truncate table siminfo.t_Activity;

-- ������»�������ϵ��
truncate table siminfo.t_ActivitySettlementGroup;

-- ������»Ͷ���߹�ϵ��
truncate table siminfo.t_ActivityInvestor;

-- ���Ͷ���߱����ֲ���Ϣ��
truncate table siminfo.t_ActivityInvestorPosition;

-- ���Ͷ���߱����ʽ���Ϣ��
truncate table siminfo.t_ActivityInvestorFund;

-- ������»������Ͷ���߱�
truncate table siminfo.t_ActivityRankableInvestor;

-- ���������
truncate table siminfo.t_TradingCalendar;

-- ��ս����ʽ��˻���Ϣ��
truncate table siminfo.t_TradingAccount;

-- ��ջ�Ա��
truncate table siminfo.t_Participant;

-- ��տͻ���
truncate table siminfo.t_Client;

-- ��ջ�Ա�ͻ���ϵ��
truncate table siminfo.t_PartClient;

-- ���Ͷ������Ϣ��
truncate table siminfo.t_Investor;

-- ���Ͷ���߿ͻ���ϵ��
truncate table siminfo.t_InvestorClient;

-- ���Ͷ��������������Ϣ��
truncate table siminfo.t_ActivityInvestorEvaluation;

-- ��ս����û���
truncate table siminfo.t_User;

-- ����û�����Ȩ�ޱ�
truncate table siminfo.t_UserFunctionRight;

-- ��ս���ԱIP��ַ��
truncate table siminfo.t_UserIP;

-- ��ս��㽻�׻�Ա��ϵ��
truncate table siminfo.t_ClearingTradingPart;

-- ��ղ�Ʒ���
truncate table siminfo.t_ProductGroup;

-- ��ղ�Ʒ��
truncate table siminfo.t_Product;

-- ��ղ�Ʒ���Ա�
truncate table siminfo.t_ProductProperty;

-- ��պ�Լ�ͺ�Լ���ϵ��
truncate table siminfo.t_InstrumentGroup;

-- ��պ�Լ��
truncate table siminfo.t_Instrument;

-- ��պ�Լ���Ա�
truncate table siminfo.t_InstrumentProperty;

-- ���֤ȯȨ���
truncate table siminfo.t_SecurityProfit;

-- ������鷢��״̬��
truncate table siminfo.t_MdPubStatus;

-- ����г���
truncate table siminfo.t_Market;

-- ����г���Ʒ������
truncate table siminfo.t_MarketProduct;

-- ����г���Ʒ�������
truncate table siminfo.t_MarketProductGroup;

-- ������������
truncate table siminfo.t_MarketDataTopic;

-- ��ջ�Ա���������
truncate table siminfo.t_PartTopicSubscribe;

-- ��ջ�Ա�˻���ϵ��
truncate table siminfo.t_PartRoleAccount;

-- ��ջ�Ա��Ʒ��ɫ��
truncate table siminfo.t_PartProductRole;

-- ��ջ�Ա��Ʒ����Ȩ�ޱ�
truncate table siminfo.t_PartProductRight;

-- ��տͻ���Ʒ����Ȩ�ޱ�
truncate table siminfo.t_ClientProductRight;

-- ��պ�Լ���׽׶����Ա�
truncate table siminfo.t_TradingSegmentAttr;

-- ��պ�Լ�۸�󶨱�
truncate table siminfo.t_PriceBanding;

-- ��պ�Լ��֤���ʱ�
truncate table siminfo.t_MarginRate;

-- ��պ�Լ��֤���ʵ���ϸ���ݱ�
truncate table siminfo.t_MarginRateDetail;

-- ��պ�Լ�����������ʵ���ϸ���ݱ�
truncate table siminfo.t_TransFeeRateDetail;

-- ��պ�Լ�����������ʵ���ϸ���ݱ�
truncate table siminfo.t_DelivFeeRateDetail;

-- ����г������
truncate table siminfo.t_MarketData;

-- ����ʻ������
truncate table siminfo.t_Account;

-- ��ջ���׼�����˻���
truncate table siminfo.t_BaseReserveAccount;

-- ���ҵ�����ò������
truncate table siminfo.t_BusinessConfig;

-- ��տͻ��ʽ��
truncate table siminfo.t_ClientFund;

-- ���Ͷ�����ʽ��
truncate table siminfo.t_InvestorFund;

-- ��ջ�Ա�ʽ��
truncate table siminfo.t_PartFund;

-- ��տͻ���Լ�ֱֲ�
truncate table siminfo.t_ClientPosition;

-- ��տͻ��ֺ��Ʊ�ֱֲ�
truncate table siminfo.t_ClientPositionForSecurityProfit;

-- ��ջ�Ա��Լ�ֱֲ�
truncate table siminfo.t_PartPosition;

-- ����ڻ���Լ�ֲ���ϸ��
truncate table siminfo.t_FuturePositionDtl;

-- ��ջ�׼�����
truncate table siminfo.t_BenchmarkMarket;

-- ��շ������ÿ��ƽ���������ݱ�
truncate table siminfo.t_TradeMatchDailyAvgReturnData;

-- ���δ֪̽�����
truncate table siminfo.t_DiscoveryActivity;

-- ���δ֪̽����������ϵ��
truncate table siminfo.t_DiscoveryActSettleGroup;

-- ���δ֪̽���Ͷ���߹�ϵ��
truncate table siminfo.t_DiscoveryActivityInvestor;

-- ���Ͷ����δ֪̽��������Ϣ��
truncate table siminfo.t_DiscoveryActInvestorEval;

-- ���δ֪̽���������Ͷ���߱�
truncate table siminfo.t_DiscoveryActRankableInvestor;

-- ���Ͷ����δ֪̽����ʽ��
truncate table siminfo.t_DiscoveryActInvestorFund;

-- ���Ͷ����δ֪̽�����Լ�ֱֲ�
truncate table siminfo.t_DiscoveryActInvestorPosition;

-- ���Ԥ���׼�����
truncate table siminfo.t_PresettingBenchmarkMarket;

-- ���δ֪̽���ÿ��ƽ���������ݱ�
truncate table siminfo.t_DiscoveryActDayAvgRetData;

----\dbclear_DBClear_drop.sql
-- ɾ������Ự��
drop table IF EXISTS dbclear.t_Settlement;

-- ɾ����Ա��Լ�ֱֲ�
drop table IF EXISTS dbclear.t_PartPosition;

-- ɾ���ͻ���Լ�ֱֲ�
drop table IF EXISTS dbclear.t_ClientPosition;

-- ɾ���ͻ��ֺ��Ʊ�ֱֲ�
drop table IF EXISTS dbclear.t_ClientPositionForSecurityProfit;

-- ɾ���г������
drop table IF EXISTS dbclear.t_MarketData;

-- ɾ����������
drop table IF EXISTS dbclear.t_DepthMarketData;

-- ɾ���ɽ���
drop table IF EXISTS dbclear.t_Trade;

-- ɾ��������
drop table IF EXISTS dbclear.t_Order;

-- ɾ���ͻ���Լ����ֱֲ�
drop table IF EXISTS dbclear.t_ClientDelivPosition;

-- ɾ���ͻ����������ѱ�
drop table IF EXISTS dbclear.t_ClientDelivFee;

-- ɾ�������Լ��
drop table IF EXISTS dbclear.t_DelivInstrument;

-- ɾ���ͻ���Լ�ֱֲ�֤���
drop table IF EXISTS dbclear.t_ClientPositionMargin;

-- ɾ���ͻ���Լ�ɽ�ӯ����
drop table IF EXISTS dbclear.t_ClientTradeProfit;

-- ɾ���ͻ���Լ�ֲ�ӯ����
drop table IF EXISTS dbclear.t_ClientPositionProfit;

-- ɾ���ͻ���Լ����/��Ȩӯ����
drop table IF EXISTS dbclear.t_ClientDelivProfit;

-- ɾ���ͻ���Լ�����������ʱ�
drop table IF EXISTS dbclear.t_ClientTransFeeRatio;

-- ɾ���ͻ���Լ���������ѱ�
drop table IF EXISTS dbclear.t_ClientTransFee;

-- ɾ���ͻ��ʽ��
drop table IF EXISTS dbclear.t_ClientFund;

-- ɾ���ͻ��ֲ�Ȩ�����
drop table IF EXISTS dbclear.t_ClientPositionPremium;

-- ɾ���ڻ���Լ�ֲ���ϸ��
drop table IF EXISTS dbclear.t_FuturePositionDtl;

----\dbclear_DBClear_create.sql
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
-- ������������
-- ******************************
create table dbclear.t_DepthMarketData
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
	,BidPrice1 	   decimal(16,6)    COMMENT '��һ��'
	,BidVolume1    bigInt(10)     COMMENT '��һ��'
	,AskPrice1 	   decimal(16,6)    COMMENT '��һ��'
	,AskVolume1    bigInt(10)     COMMENT '��һ��'
	,BidPrice2 	   decimal(16,6)    COMMENT '�����'
	,BidVolume2    bigInt(10)     COMMENT '�����'
	,AskPrice2 	   decimal(16,6)    COMMENT '������'
	,AskVolume2    bigInt(10)     COMMENT '������'
	,BidPrice3 	   decimal(16,6)    COMMENT '������'
	,BidVolume3    bigInt(10)     COMMENT '������'
	,AskPrice3 	   decimal(16,6)    COMMENT '������'
	,AskVolume3    bigInt(10)     COMMENT '������'
	,BidPrice4 	   decimal(16,6)    COMMENT '���ļ�'
	,BidVolume4    bigInt(10)     COMMENT '������'
	,AskPrice4 	   decimal(16,6)    COMMENT '���ļ�'
	,AskVolume4    bigInt(10)     COMMENT '������'
	,BidPrice5 	   decimal(16,6)    COMMENT '�����'
	,BidVolume5    bigInt(10)     COMMENT '������'
	,AskPrice5 	   decimal(16,6)    COMMENT '�����'
	,AskVolume5    bigInt(10)     COMMENT '������'
	,BandingUpperPrice 	   decimal(16,6)    COMMENT '���޼۸�'
	,BandingLowerPrice 	   decimal(16,6)    COMMENT '���޼۸�'
	,ReferencePrice 	   decimal(16,6)    COMMENT '�ο��۸�'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,InstrumentID)
) COMMENT='�������';



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
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
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
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
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
-- �����ͻ���Լ����/��Ȩӯ����
-- ******************************
create table dbclear.t_ClientDelivProfit
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,AccountID   varchar(12) binary  not null COMMENT '�ʽ��ʺ�'
	,HedgeFlag   char(1) binary  not null COMMENT 'Ͷ���ױ���־'
	,PosiDirection   char(1) binary  not null COMMENT '�ֲֶ�շ���'
	,Position    bigInt(10)    not null COMMENT '����ֲ���'
	,OptionsType   char(1) binary   COMMENT '��Ȩ����'
	,VolumeMultiple   INTEGER   not null COMMENT '��Լ��������'
	,UnderlyingMultiple 	   decimal(9,3)   not null COMMENT '��Լ������Ʒ����'
	,StrikePrice 	   decimal(16,6)    COMMENT 'ִ�м�'
	,SettlementPrice 	   decimal(16,6)    COMMENT '�����'
	,Profit 	   decimal(19,3)   not null COMMENT '����/��Ȩӯ��'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,InstrumentID,ParticipantID,ClientID,AccountID,HedgeFlag,PosiDirection)
) COMMENT='�ͻ���Լ����/��Ȩӯ��';



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
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
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



-- ******************************
-- �����ͻ��ֲ�Ȩ�����
-- ******************************
create table dbclear.t_ClientPositionPremium
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,AccountID   varchar(12) binary  not null COMMENT '�ʽ��ʺ�'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,Volume    bigInt(10)    not null COMMENT '����'
	,UserID   varchar(15) binary   COMMENT '�����û�����'
	,Premium 	   decimal(19,3)   not null COMMENT 'ռ�õı�֤��'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,ParticipantID,ClientID,AccountID,InstrumentID,UserID)
) COMMENT='�ͻ��ֲ�Ȩ����';



-- ******************************
-- �����ڻ���Լ�ֲ���ϸ��
-- ******************************
create table dbclear.t_FuturePositionDtl
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,HedgeFlag   char(1) binary  not null COMMENT 'Ͷ���ױ���־'
	,Direction   char(1) binary  not null COMMENT '��������'
	,OpenDate   varchar(8) binary  not null COMMENT '��������'
	,TradeID   varchar(12) binary  not null COMMENT '�ɽ����'
	,Volume    bigInt(10)     COMMENT '��������'
	,OpenPrice 	   decimal(16,6)    COMMENT '���ּ۸�'
	,TradeType   char(1) binary  not null COMMENT '�ɽ�����'
	,CombInstrumentID   varchar(30) binary   COMMENT '��Ϻ�Լ����'
	,ExchangeID   varchar(8) binary  not null COMMENT '����������'
	,CloseProfitByDate 	   decimal(19,3)    COMMENT '����ƽ��ӯ��'
	,CloseProfitByTrade 	   decimal(19,3)    COMMENT '���ƽ��ӯ��'
	,PositionProfitByDate 	   decimal(19,3)    COMMENT '���ճֲ�ӯ��'
	,PositionProfitByTrade 	   decimal(19,3)    COMMENT '��ʳֲ�ӯ��'
	,Margin 	   decimal(19,3)    COMMENT '��֤��'
	,ExchMargin 	   decimal(19,3)    COMMENT '��������֤��'
	,MarginRateByMoney 	   decimal(22,6)   not null COMMENT '��֤����'
	,MarginRateByVolume 	   decimal(22,6)   not null COMMENT '��ʱ�֤��'
	,LastSettlementPrice 	   decimal(16,6)    COMMENT '�����'
	,SettlementPrice 	   decimal(16,6)    COMMENT '�����'
	,CloseVolume    bigInt(10)     COMMENT 'ƽ������'
	,CloseAmount 	   decimal(19,3)    COMMENT 'ƽ�ֽ��'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,InstrumentID,ParticipantID,ClientID,HedgeFlag,Direction,OpenDate,TradeID,TradeType)
) COMMENT='�ڻ���Լ�ֲ���ϸ';



----\dbclear_DBClear_clear.sql
-- ��ս���Ự��
truncate table dbclear.t_Settlement;

-- ��ջ�Ա��Լ�ֱֲ�
truncate table dbclear.t_PartPosition;

-- ��տͻ���Լ�ֱֲ�
truncate table dbclear.t_ClientPosition;

-- ��տͻ��ֺ��Ʊ�ֱֲ�
truncate table dbclear.t_ClientPositionForSecurityProfit;

-- ����г������
truncate table dbclear.t_MarketData;

-- �����������
truncate table dbclear.t_DepthMarketData;

-- ��ճɽ���
truncate table dbclear.t_Trade;

-- ��ձ�����
truncate table dbclear.t_Order;

-- ��տͻ���Լ����ֱֲ�
truncate table dbclear.t_ClientDelivPosition;

-- ��տͻ����������ѱ�
truncate table dbclear.t_ClientDelivFee;

-- ��ս����Լ��
truncate table dbclear.t_DelivInstrument;

-- ��տͻ���Լ�ֱֲ�֤���
truncate table dbclear.t_ClientPositionMargin;

-- ��տͻ���Լ�ɽ�ӯ����
truncate table dbclear.t_ClientTradeProfit;

-- ��տͻ���Լ�ֲ�ӯ����
truncate table dbclear.t_ClientPositionProfit;

-- ��տͻ���Լ����/��Ȩӯ����
truncate table dbclear.t_ClientDelivProfit;

-- ��տͻ���Լ�����������ʱ�
truncate table dbclear.t_ClientTransFeeRatio;

-- ��տͻ���Լ���������ѱ�
truncate table dbclear.t_ClientTransFee;

-- ��տͻ��ʽ��
truncate table dbclear.t_ClientFund;

-- ��տͻ��ֲ�Ȩ�����
truncate table dbclear.t_ClientPositionPremium;

-- ����ڻ���Լ�ֲ���ϸ��
truncate table dbclear.t_FuturePositionDtl;

----\sync_Sync_drop.sql
-- ɾ������ϵͳ��̨ϵͳ��Ӧ��ϵ��
drop table IF EXISTS sync.t_TradeSystemBrokerSystem;

-- ɾ����̨ϵͳ��Ա��Ӧ��ϵ��
drop table IF EXISTS sync.t_BrokerSystemParticipant;

-- ɾ����������
drop table IF EXISTS sync.t_Exchange;

-- ɾ���������
drop table IF EXISTS sync.t_SettlementGroup;

-- ɾ��ҵ��������
drop table IF EXISTS sync.t_BusinessConfig;

-- ɾ���ʽ��˻���
drop table IF EXISTS sync.t_Account;

-- ɾ������׼�����˻���
drop table IF EXISTS sync.t_BaseReserveAccount;

-- ɾ�������ʽ��˻���Ϣ��
drop table IF EXISTS sync.t_TradingAccount;

-- ɾ�����㽻�׻�Ա��ϵ��
drop table IF EXISTS sync.t_ClearingTradingPart;

-- ɾ����Ա��
drop table IF EXISTS sync.t_Participant;

-- ɾ���ͻ���Ϣ��
drop table IF EXISTS sync.t_Client;

-- ɾ����Ա�ͻ���ϵ��
drop table IF EXISTS sync.t_PartClient;

-- ɾ����Ա��Ʒ��ɫ��
drop table IF EXISTS sync.t_PartProductRole;

-- ɾ����Ա��Ʒ����Ȩ�ޱ�
drop table IF EXISTS sync.t_PartProductRight;

-- ɾ����Ա�˻���ϵ��
drop table IF EXISTS sync.t_PartRoleAccount;

-- ɾ���ͻ���Ʒ����Ȩ�ޱ�
drop table IF EXISTS sync.t_ClientProductRight;

-- ɾ����Ա��Լ�ֱֲ�
drop table IF EXISTS sync.t_PartPosition;

-- ɾ���ͻ���Լ�ֱֲ�
drop table IF EXISTS sync.t_ClientPosition;

-- ɾ�������û���
drop table IF EXISTS sync.t_User;

-- ɾ���û�����Ȩ�ޱ�
drop table IF EXISTS sync.t_UserFunctionRight;

-- ɾ������ԱIP��ַ��
drop table IF EXISTS sync.t_UserIP;

-- ɾ�����׺�Լ��
drop table IF EXISTS sync.t_Instrument;

-- ɾ����Լ�ͺ�Լ���ϵ��
drop table IF EXISTS sync.t_InstrumentGroup;

-- ɾ����Լ���Ա�
drop table IF EXISTS sync.t_CurrInstrumentProperty;

-- ɾ����ǰ��Լ��֤���ʱ�
drop table IF EXISTS sync.t_CurrMarginRate;

-- ɾ����ǰ��Լ��֤���ʵ���ϸ���ݱ�
drop table IF EXISTS sync.t_CurrMarginRateDetail;

-- ɾ����ǰ��Լ�۸�󶨱�
drop table IF EXISTS sync.t_CurrPriceBanding;

-- ɾ����ǰ��Լ���׽׶����Ա�
drop table IF EXISTS sync.t_CurrTradingSegmentAttr;

-- ɾ���г���
drop table IF EXISTS sync.t_Market;

-- ɾ���г������
drop table IF EXISTS sync.t_MarketData;

-- ɾ���г���Ʒ������
drop table IF EXISTS sync.t_MarketProduct;

-- ɾ���г���Ʒ�������
drop table IF EXISTS sync.t_MarketProductGroup;

-- ɾ�����������
drop table IF EXISTS sync.t_MarketDataTopic;

-- ɾ����Ա�����г���
drop table IF EXISTS sync.t_PartTopicSubscribe;

-- ɾ�����鷢��״̬��
drop table IF EXISTS sync.t_MdPubStatus;

-- ɾ���ڻ���Լ�ֲ���ϸ��
drop table IF EXISTS sync.t_FuturePositionDtl;

----\sync_Sync_create.sql
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
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
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
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
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
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
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
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
	,ProductGroupID   varchar(8) binary  not null COMMENT '��Ʒ�����'
	,UnderlyingInstrID   varchar(30) binary   COMMENT '������Ʒ����'
	,ProductClass   char(1) binary  not null COMMENT '��Ʒ����'
	,PositionType   char(1) binary  not null COMMENT '�ֲ�����'
	,PositionDateType   char(1) binary   default '1' not null COMMENT '�ֲ���������'
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
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
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
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
	,InstrumentStatus   char(1) binary  not null COMMENT '��Լ����״̬'
	,MdPubStatus   char(1) binary  not null COMMENT '���鷢��״̬'
	  ,PRIMARY KEY (TradeSystemID,SettlementGroupID,ProductID,InstrumentStatus)
) COMMENT='���鷢��״̬';



-- ******************************
-- �����ڻ���Լ�ֲ���ϸ��
-- ******************************
create table sync.t_FuturePositionDtl
(
	TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,HedgeFlag   char(1) binary  not null COMMENT 'Ͷ���ױ���־'
	,Direction   char(1) binary  not null COMMENT '��������'
	,OpenDate   varchar(8) binary  not null COMMENT '��������'
	,TradeID   varchar(12) binary  not null COMMENT '�ɽ����'
	,Volume    bigInt(10)     COMMENT '��������'
	,OpenPrice 	   decimal(16,6)    COMMENT '���ּ۸�'
	,TradeType   char(1) binary  not null COMMENT '�ɽ�����'
	,CombInstrumentID   varchar(30) binary   COMMENT '��Ϻ�Լ����'
	,ExchangeID   varchar(8) binary  not null COMMENT '����������'
	,CloseProfitByDate 	   decimal(19,3)    COMMENT '����ƽ��ӯ��'
	,CloseProfitByTrade 	   decimal(19,3)    COMMENT '���ƽ��ӯ��'
	,PositionProfitByDate 	   decimal(19,3)    COMMENT '���ճֲ�ӯ��'
	,PositionProfitByTrade 	   decimal(19,3)    COMMENT '��ʳֲ�ӯ��'
	,Margin 	   decimal(19,3)    COMMENT '��֤��'
	,ExchMargin 	   decimal(19,3)    COMMENT '��������֤��'
	,MarginRateByMoney 	   decimal(22,6)   not null COMMENT '��֤����'
	,MarginRateByVolume 	   decimal(22,6)   not null COMMENT '��ʱ�֤��'
	,LastSettlementPrice 	   decimal(16,6)    COMMENT '�����'
	,SettlementPrice 	   decimal(16,6)    COMMENT '�����'
	,CloseVolume    bigInt(10)     COMMENT 'ƽ������'
	,CloseAmount 	   decimal(19,3)    COMMENT 'ƽ�ֽ��'
	,InvestorID   varchar(10) binary  not null COMMENT 'Ͷ���ߴ���'
	  ,PRIMARY KEY (TradeSystemID,TradingDay,SettlementGroupID,SettlementID,InstrumentID,ParticipantID,ClientID,HedgeFlag,Direction,OpenDate,TradeID,TradeType,InvestorID)
) COMMENT='�ڻ���Լ�ֲ���ϸ';



----\sync_Sync_clear.sql
-- ��ս���ϵͳ��̨ϵͳ��Ӧ��ϵ��
truncate table sync.t_TradeSystemBrokerSystem;

-- ��չ�̨ϵͳ��Ա��Ӧ��ϵ��
truncate table sync.t_BrokerSystemParticipant;

-- ��ս�������
truncate table sync.t_Exchange;

-- ��ս������
truncate table sync.t_SettlementGroup;

-- ���ҵ��������
truncate table sync.t_BusinessConfig;

-- ����ʽ��˻���
truncate table sync.t_Account;

-- ��ջ���׼�����˻���
truncate table sync.t_BaseReserveAccount;

-- ��ս����ʽ��˻���Ϣ��
truncate table sync.t_TradingAccount;

-- ��ս��㽻�׻�Ա��ϵ��
truncate table sync.t_ClearingTradingPart;

-- ��ջ�Ա��
truncate table sync.t_Participant;

-- ��տͻ���Ϣ��
truncate table sync.t_Client;

-- ��ջ�Ա�ͻ���ϵ��
truncate table sync.t_PartClient;

-- ��ջ�Ա��Ʒ��ɫ��
truncate table sync.t_PartProductRole;

-- ��ջ�Ա��Ʒ����Ȩ�ޱ�
truncate table sync.t_PartProductRight;

-- ��ջ�Ա�˻���ϵ��
truncate table sync.t_PartRoleAccount;

-- ��տͻ���Ʒ����Ȩ�ޱ�
truncate table sync.t_ClientProductRight;

-- ��ջ�Ա��Լ�ֱֲ�
truncate table sync.t_PartPosition;

-- ��տͻ���Լ�ֱֲ�
truncate table sync.t_ClientPosition;

-- ��ս����û���
truncate table sync.t_User;

-- ����û�����Ȩ�ޱ�
truncate table sync.t_UserFunctionRight;

-- ��ս���ԱIP��ַ��
truncate table sync.t_UserIP;

-- ��ս��׺�Լ��
truncate table sync.t_Instrument;

-- ��պ�Լ�ͺ�Լ���ϵ��
truncate table sync.t_InstrumentGroup;

-- ��պ�Լ���Ա�
truncate table sync.t_CurrInstrumentProperty;

-- ��յ�ǰ��Լ��֤���ʱ�
truncate table sync.t_CurrMarginRate;

-- ��յ�ǰ��Լ��֤���ʵ���ϸ���ݱ�
truncate table sync.t_CurrMarginRateDetail;

-- ��յ�ǰ��Լ�۸�󶨱�
truncate table sync.t_CurrPriceBanding;

-- ��յ�ǰ��Լ���׽׶����Ա�
truncate table sync.t_CurrTradingSegmentAttr;

-- ����г���
truncate table sync.t_Market;

-- ����г������
truncate table sync.t_MarketData;

-- ����г���Ʒ������
truncate table sync.t_MarketProduct;

-- ����г���Ʒ�������
truncate table sync.t_MarketProductGroup;

-- ������������
truncate table sync.t_MarketDataTopic;

-- ��ջ�Ա�����г���
truncate table sync.t_PartTopicSubscribe;

-- ������鷢��״̬��
truncate table sync.t_MdPubStatus;

-- ����ڻ���Լ�ֲ���ϸ��
truncate table sync.t_FuturePositionDtl;

----\snap_Snap_drop.sql
-- ɾ������ϵͳ��
drop table IF EXISTS snap.t_S_TradeSystem;

-- ɾ����̨ϵͳ��
drop table IF EXISTS snap.t_S_BrokerSystem;

-- ɾ������ϵͳ��̨ϵͳ��Ӧ��ϵ��
drop table IF EXISTS snap.t_S_TradeSystemBrokerSystem;

-- ɾ����̨ϵͳ�������Ӧ��ϵ��
drop table IF EXISTS snap.t_S_BrokerSystemSettlementGroup;

-- ɾ����������
drop table IF EXISTS snap.t_S_Exchange;

-- ɾ���������
drop table IF EXISTS snap.t_S_SettlementGroup;

-- ɾ������ϵͳ�������ϵ��
drop table IF EXISTS snap.t_S_TradeSystemSettlementGroup;

-- ɾ�����»��
drop table IF EXISTS snap.t_S_Activity;

-- ɾ�����»�������ϵ��
drop table IF EXISTS snap.t_S_ActivitySettlementGroup;

-- ɾ�����»Ͷ���߹�ϵ��
drop table IF EXISTS snap.t_S_ActivityInvestor;

-- ɾ�������ʽ��˻���Ϣ��
drop table IF EXISTS snap.t_S_TradingAccount;

-- ɾ����Ա��
drop table IF EXISTS snap.t_S_Participant;

-- ɾ���ͻ���
drop table IF EXISTS snap.t_S_Client;

-- ɾ���ͻ���Լ�ֱֲ�
drop table IF EXISTS snap.t_S_ClientPosition;

-- ɾ����Ա�ͻ���ϵ��
drop table IF EXISTS snap.t_S_PartClient;

-- ɾ��Ͷ������Ϣ��
drop table IF EXISTS snap.t_S_Investor;

-- ɾ��Ͷ���߿ͻ���ϵ��
drop table IF EXISTS snap.t_S_InvestorClient;

-- ɾ��Ͷ��������������Ϣ��
drop table IF EXISTS snap.t_S_ActivityInvestorEvaluation;

-- ɾ�������û���
drop table IF EXISTS snap.t_S_User;

-- ɾ���û�����Ȩ�ޱ�
drop table IF EXISTS snap.t_S_UserFunctionRight;

-- ɾ������ԱIP��ַ��
drop table IF EXISTS snap.t_S_UserIP;

-- ɾ�����㽻�׻�Ա��ϵ��
drop table IF EXISTS snap.t_S_ClearingTradingPart;

-- ɾ����Ʒ���
drop table IF EXISTS snap.t_S_ProductGroup;

-- ɾ����Ʒ��
drop table IF EXISTS snap.t_S_Product;

-- ɾ����Ʒ���Ա�
drop table IF EXISTS snap.t_S_ProductProperty;

-- ɾ����Լ�ͺ�Լ���ϵ��
drop table IF EXISTS snap.t_S_InstrumentGroup;

-- ɾ����Լ��
drop table IF EXISTS snap.t_S_Instrument;

-- ɾ����Լ���Ա�
drop table IF EXISTS snap.t_S_InstrumentProperty;

-- ɾ��֤ȯȨ���
drop table IF EXISTS snap.t_S_SecurityProfit;

-- ɾ���г���
drop table IF EXISTS snap.t_S_Market;

-- ɾ���г���Ʒ������
drop table IF EXISTS snap.t_S_MarketProduct;

-- ɾ���г���Ʒ�������
drop table IF EXISTS snap.t_S_MarketProductGroup;

-- ɾ�����������
drop table IF EXISTS snap.t_S_MarketDataTopic;

-- ɾ����Ա���������
drop table IF EXISTS snap.t_S_PartTopicSubscribe;

-- ɾ����Ա�˻���ϵ��
drop table IF EXISTS snap.t_S_PartRoleAccount;

-- ɾ����Ա��Ʒ��ɫ��
drop table IF EXISTS snap.t_S_PartProductRole;

-- ɾ����Ա��Ʒ����Ȩ�ޱ�
drop table IF EXISTS snap.t_S_PartProductRight;

-- ɾ���ͻ���Ʒ����Ȩ�ޱ�
drop table IF EXISTS snap.t_S_ClientProductRight;

-- ɾ����Լ���׽׶����Ա�
drop table IF EXISTS snap.t_S_TradingSegmentAttr;

-- ɾ����Լ�۸�󶨱�
drop table IF EXISTS snap.t_S_PriceBanding;

-- ɾ����Լ��֤���ʱ�
drop table IF EXISTS snap.t_S_MarginRate;

-- ɾ����Լ��֤���ʵ���ϸ���ݱ�
drop table IF EXISTS snap.t_S_MarginRateDetail;

-- ɾ����Լ�����������ʵ���ϸ���ݱ�
drop table IF EXISTS snap.t_S_TransFeeRateDetail;

-- ɾ����Լ�����������ʵ���ϸ���ݱ�
drop table IF EXISTS snap.t_S_DelivFeeRateDetail;

-- ɾ���г������
drop table IF EXISTS snap.t_S_MarketData;

-- ɾ��������
drop table IF EXISTS snap.t_S_Order;

-- ɾ���ɽ���
drop table IF EXISTS snap.t_S_Trade;

-- ɾ���ʻ������
drop table IF EXISTS snap.t_S_Account;

-- ɾ������׼�����˻���
drop table IF EXISTS snap.t_S_BaseReserveAccount;

-- ɾ��ҵ�����ò������
drop table IF EXISTS snap.t_S_BusinessConfig;

-- ɾ���ͻ��ʽ��
drop table IF EXISTS snap.t_S_ClientFund;

-- ɾ��Ͷ�����ʽ��
drop table IF EXISTS snap.t_S_InvestorFund;

-- ɾ����Ա�ʽ��
drop table IF EXISTS snap.t_S_PartFund;

-- ɾ���ڻ���Լ�ֲ���ϸ��
drop table IF EXISTS snap.t_S_FuturePositionDtl;

-- ɾ��δ֪̽�����
drop table IF EXISTS snap.t_S_DiscoveryActivity;

-- ɾ��δ֪̽����������ϵ��
drop table IF EXISTS snap.t_S_DiscoveryActSettleGroup;

-- ɾ��δ֪̽���Ͷ���߹�ϵ��
drop table IF EXISTS snap.t_S_DiscoveryActivityInvestor;

-- ɾ��Ͷ����δ֪̽��������Ϣ��
drop table IF EXISTS snap.t_S_DiscoveryActInvestorEval;

----\snap_Snap_create.sql
-- ******************************
-- ��������ϵͳ��
-- ******************************
create table snap.t_S_TradeSystem
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,TradeSystemName   varchar(20) binary  not null COMMENT '����ϵͳ����'
	  ,PRIMARY KEY (TradingDay,TradeSystemID)
) COMMENT='����ϵͳ';



-- ******************************
-- ������̨ϵͳ��
-- ******************************
create table snap.t_S_BrokerSystem
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,BrokerSystemID   varchar(8) binary  not null COMMENT '��̨ϵͳ����'
	,BrokerSystemName   varchar(20) binary  not null COMMENT '��̨ϵͳ����'
	,BrokerSystemType   char(1) binary  not null COMMENT '��̨ϵͳ����'
	,TradingAddress   varchar(40) binary  not null COMMENT '��̨ϵͳ���׵�ַ'
	  ,PRIMARY KEY (TradingDay,BrokerSystemID)
) COMMENT='��̨ϵͳ';



-- ******************************
-- ��������ϵͳ��̨ϵͳ��Ӧ��ϵ��
-- ******************************
create table snap.t_S_TradeSystemBrokerSystem
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,BrokerSystemID   varchar(8) binary  not null COMMENT '��̨ϵͳ����'
	  ,PRIMARY KEY (TradingDay,TradeSystemID,BrokerSystemID)
) COMMENT='����ϵͳ��̨ϵͳ��Ӧ��ϵ';



-- ******************************
-- ������̨ϵͳ�������Ӧ��ϵ��
-- ******************************
create table snap.t_S_BrokerSystemSettlementGroup
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,BrokerSystemID   varchar(8) binary  not null COMMENT '��̨ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	  ,PRIMARY KEY (TradingDay,BrokerSystemID,SettlementGroupID)
) COMMENT='��̨ϵͳ�������Ӧ��ϵ';



-- ******************************
-- ������������
-- ******************************
create table snap.t_S_Exchange
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,ExchangeID   varchar(8) binary  not null COMMENT '����������'
	,ExchangeName   varchar(30) binary  not null COMMENT '����������'
	  ,PRIMARY KEY (TradingDay,ExchangeID)
) COMMENT='������';



-- ******************************
-- �����������
-- ******************************
create table snap.t_S_SettlementGroup
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementGroupName   varchar(20) binary  not null COMMENT '����������'
	,ExchangeID   varchar(8) binary  not null COMMENT '����������'
	,SettlementGroupType   char(1) binary  not null COMMENT '����������'
	,Currency   varchar(3) binary  not null COMMENT '����'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID)
) COMMENT='������';



-- ******************************
-- ��������ϵͳ�������ϵ��
-- ******************************
create table snap.t_S_TradeSystemSettlementGroup
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,TradeSystemID   varchar(8) binary  not null COMMENT '����ϵͳ����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	  ,PRIMARY KEY (TradingDay,TradeSystemID,SettlementGroupID)
) COMMENT='����ϵͳ�������ϵ';



-- ******************************
-- �������»��
-- ******************************
create table snap.t_S_Activity
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,ActivityID   varchar(8) binary  not null COMMENT '���»����'
	,TermNo   INTEGER    default '0' not null COMMENT '���»�ں�'
	,ActivityName   varchar(20) binary  not null COMMENT '���»����'
	,ActivityType   varchar(4) binary  not null COMMENT '���»����'
	,ActivityStatus   char(1) binary  not null COMMENT '���»״̬'
	,InitialBalance 	   decimal(19,3)    default '100000' not null COMMENT '��ʼ�ʽ�'
	,JoinMode   char(1) binary   default '0' not null COMMENT '���뷽ʽ'
	,RankingRule   varchar(2) binary   default '00' not null COMMENT '��������'
	,CircleFreq   char(1) binary   default '0' not null COMMENT 'ѭ��Ƶ��'
	,Duration   INTEGER    default '0' not null COMMENT '����ʱ��'
	,JoinCount   INTEGER    default '0' not null COMMENT '��������'
	,CreateDate   varchar(8) binary  not null COMMENT '��������'
	,CreateTime   varchar(8) binary  not null COMMENT '����ʱ��'
	,BeginDate   varchar(8) binary   COMMENT '��ʼ����'
	,EndDate   varchar(8) binary   COMMENT '��������'
	,UpdateDate   varchar(8) binary  not null COMMENT '����޸�����'
	,UpdateTime   varchar(8) binary  not null COMMENT '����޸�ʱ��'
	  ,PRIMARY KEY (TradingDay,ActivityID,TermNo)
) COMMENT='���»';



-- ******************************
-- �������»�������ϵ��
-- ******************************
create table snap.t_S_ActivitySettlementGroup
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,ActivityID   varchar(8) binary  not null COMMENT '���»����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	  ,PRIMARY KEY (TradingDay,ActivityID,SettlementGroupID)
) COMMENT='���»�������ϵ';



-- ******************************
-- �������»Ͷ���߹�ϵ��
-- ******************************
create table snap.t_S_ActivityInvestor
(
	ID    bigInt(10)  auto_increment    not null COMMENT '����ID'
	,ActivityID   varchar(8) binary  not null COMMENT '���»����'
	,TermNo   INTEGER    default '0' not null COMMENT '���»�ں�'
	,InvestorID   varchar(10) binary  not null COMMENT 'Ͷ���ߴ���'
	,JoinDate   varchar(8) binary   COMMENT '��������'
	,JoinStatus   char(1) binary   default '0'  COMMENT '����״̬'
	,Rankable   INTEGER    default '1'  COMMENT '�Ƿ��������'
	,TradingDay   varchar(8) binary  not null COMMENT '������'
	  ,PRIMARY KEY (ID,ActivityID,InvestorID,TradingDay)
) COMMENT='���»Ͷ���߹�ϵ';



-- ******************************
-- ���������ʽ��˻���Ϣ��
-- ******************************
create table snap.t_S_TradingAccount
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
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
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,AccountID)
) COMMENT='�����ʽ��˻���Ϣ';



-- ******************************
-- ������Ա��
-- ******************************
create table snap.t_S_Participant
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ParticipantName   varchar(50) binary  not null COMMENT '��Ա����'
	,ParticipantAbbr   varchar(8) binary  not null COMMENT '��Ա���'
	,MemberType   char(1) binary  not null COMMENT '��Ա����'
	,IsActive   INTEGER   not null COMMENT '�Ƿ��Ծ'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,ParticipantID)
) COMMENT='��Ա';



-- ******************************
-- �����ͻ���
-- ******************************
create table snap.t_S_Client
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,ClientName   varchar(80) binary  not null COMMENT '�ͻ�����'
	,IdentifiedCardType   varchar(15) binary   COMMENT '֤������'
	,IdentifiedCardNo   varchar(50) binary   COMMENT '֤������'
	,TradingRole   char(1) binary  not null COMMENT '���׽�ɫ'
	,ClientType   char(1) binary  not null COMMENT '�ͻ�����'
	,IsActive   INTEGER   not null COMMENT '�Ƿ��Ծ'
	,HedgeFlag   char(1) binary  not null COMMENT '�ͻ���������'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,ClientID)
) COMMENT='�ͻ�';



-- ******************************
-- �����ͻ���Լ�ֱֲ�
-- ******************************
create table snap.t_S_ClientPosition
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
-- ������Ա�ͻ���ϵ��
-- ******************************
create table snap.t_S_PartClient
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,ClientID,ParticipantID)
) COMMENT='��Ա�ͻ���ϵ';



-- ******************************
-- ����Ͷ������Ϣ��
-- ******************************
create table snap.t_S_Investor
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,InvestorID   varchar(10) binary  not null COMMENT 'Ͷ���ߴ���'
	,InvestorName   varchar(20) binary   COMMENT 'Ͷ��������'
	,OpenID   varchar(20) binary   COMMENT 'Ͷ���߿���ʹ�õ������֤����'
	,Password   varchar(40) binary  not null COMMENT 'Ͷ���ߵ�¼����'
	,InvestorAccountType   varchar(4) binary   default '0' not null COMMENT 'Ͷ�����˻�����'
	,InvestorStatus   char(1) binary  not null COMMENT 'Ͷ����״̬'
	  ,PRIMARY KEY (TradingDay,InvestorID)
) COMMENT='Ͷ������Ϣ';



-- ******************************
-- ����Ͷ���߿ͻ���ϵ��
-- ******************************
create table snap.t_S_InvestorClient
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,InvestorID   varchar(10) binary  not null COMMENT 'Ͷ���ߴ���'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,InvestorID,ClientID)
) COMMENT='Ͷ���߿ͻ���ϵ';



-- ******************************
-- ����Ͷ��������������Ϣ��
-- ******************************
create table snap.t_S_ActivityInvestorEvaluation
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,ActivityID   varchar(8) binary  not null COMMENT '���»����'
	,TermNo   INTEGER    default '0' not null COMMENT '���»�ں�'
	,InvestorID   varchar(10) binary  not null COMMENT 'Ͷ���ߴ���'
	,InitialAsset 	   decimal(19,3)    default '0' not null COMMENT '�ڳ��ʲ�'
	,PreMonthAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ�'
	,PreWeekAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ�'
	,PreAsset 	   decimal(19,3)    default '0' not null COMMENT '���ʲ�'
	,CurrentAsset 	   decimal(19,3)    default '0' not null COMMENT '��ǰ�ʲ�'
	,TotalReturnRate 	   decimal(22,6)    default '0' not null COMMENT '��������'
	,ReturnRateOfMonth 	   decimal(22,6)    default '0' not null COMMENT '��������'
	,ReturnRateOfWeek 	   decimal(22,6)    default '0' not null COMMENT '��������'
	,ReturnRateOf1Day 	   decimal(22,6)    default '0' not null COMMENT '��������'
	,RankingStatus   char(1) binary   default '0' not null COMMENT '�Ƿ��������'
	,PreRanking    bigInt(10)     default '0' not null COMMENT '��������������'
	,Ranking    bigInt(10)     default '0' not null COMMENT '������������'
	  ,PRIMARY KEY (TradingDay,ActivityID,TermNo,InvestorID)
) COMMENT='Ͷ��������������Ϣ';



-- ******************************
-- ���������û���
-- ******************************
create table snap.t_S_User
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,UserID   varchar(15) binary  not null COMMENT '�����û�����'
	,UserType   char(1) binary  not null COMMENT '�����û�����'
	,Password   varchar(40) binary  not null COMMENT '����'
	,IsActive   INTEGER   not null COMMENT '����ԱȨ��'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,UserID)
) COMMENT='�����û�';



-- ******************************
-- �����û�����Ȩ�ޱ�
-- ******************************
create table snap.t_S_UserFunctionRight
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,UserID   varchar(15) binary  not null COMMENT '�����û�����'
	,FunctionCode   varchar(24) binary  not null COMMENT '���ܴ���'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,UserID,FunctionCode)
) COMMENT='�û�����Ȩ��';



-- ******************************
-- ��������ԱIP��ַ��
-- ******************************
create table snap.t_S_UserIP
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,UserID   varchar(15) binary  not null COMMENT '�����û�����'
	,IPAddress   varchar(15) binary  not null COMMENT 'IP��ַ'
	,IPMask   varchar(15) binary  not null COMMENT 'IP��ַ����'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,UserID,IPAddress)
) COMMENT='����ԱIP��ַ';



-- ******************************
-- �������㽻�׻�Ա��ϵ��
-- ******************************
create table snap.t_S_ClearingTradingPart
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,ClearingPartID   varchar(10) binary   COMMENT '�����Ա'
	,ParticipantID   varchar(10) binary   COMMENT '���׻�Ա'
	  ,PRIMARY KEY (TradingDay,ClearingPartID,ParticipantID)
) COMMENT='���㽻�׻�Ա��ϵ';



-- ******************************
-- ������Ʒ���
-- ******************************
create table snap.t_S_ProductGroup
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ProductGroupID   varchar(8) binary  not null COMMENT '��Ʒ�����'
	,ProductGroupName   varchar(20) binary  not null COMMENT '��Ʒ������'
	,CommodityID   varchar(8) binary  not null COMMENT '��Ʒ����'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,ProductGroupID)
) COMMENT='��Ʒ��';



-- ******************************
-- ������Ʒ��
-- ******************************
create table snap.t_S_Product
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
	,ProductGroupID   varchar(8) binary  not null COMMENT '��Ʒ�����'
	,ProductName   varchar(20) binary  not null COMMENT '��Ʒ����'
	,ProductClass   char(1) binary  not null COMMENT '��Ʒ����'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,ProductID)
) COMMENT='��Ʒ';



-- ******************************
-- ������Ʒ���Ա�
-- ******************************
create table snap.t_S_ProductProperty
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
	,ProductLifePhase   char(1) binary  not null COMMENT '��Ʒ��������״̬'
	,TradingModel   char(1) binary  not null COMMENT '����ģʽ'
	,OptionsLimitRatio 	   decimal(22,6)    COMMENT '��Ȩ�޲�ϵ��'
	,OptionsMgRatio 	   decimal(22,6)    COMMENT '��Ȩ��֤�����ϵ��'
	,SettlePriceSeconds   INTEGER   not null COMMENT '����ȡ��ʱ��'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,ProductID)
) COMMENT='��Ʒ����';



-- ******************************
-- ������Լ�ͺ�Լ���ϵ��
-- ******************************
create table snap.t_S_InstrumentGroup
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,InstrumentGroupID   varchar(30) binary  not null COMMENT '��Լ�����'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,InstrumentID)
) COMMENT='��Լ�ͺ�Լ���ϵ';



-- ******************************
-- ������Լ��
-- ******************************
create table snap.t_S_Instrument
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
	,ProductGroupID   varchar(8) binary  not null COMMENT '��Ʒ�����'
	,UnderlyingInstrID   varchar(30) binary   COMMENT '������Ʒ����'
	,ProductClass   char(1) binary  not null COMMENT '��Ʒ����'
	,PositionType   char(1) binary  not null COMMENT '�ֲ�����'
	,PositionDateType   char(1) binary   default '1' not null COMMENT '�ֲ���������'
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
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,InstrumentID)
) COMMENT='��Լ';



-- ******************************
-- ������Լ���Ա�
-- ******************************
create table snap.t_S_InstrumentProperty
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
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
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,InstrumentID)
) COMMENT='��Լ����';



-- ******************************
-- ����֤ȯȨ���
-- ******************************
create table snap.t_S_SecurityProfit
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SecurityID   varchar(30) binary  not null COMMENT '֤ȯ����'
	,SecurityType   varchar(4) binary  not null COMMENT '֤ȯ����'
	,SecurityMarketID   char(1) binary  not null COMMENT '֤ȯ�г�����'
	,ProfitType   varchar(4) binary  not null COMMENT 'Ȩ������'
	,DJDate   varchar(8) binary   COMMENT '�Ǽ�����'
	,CQDate   varchar(8) binary   COMMENT '��Ȩ����'
	,EndDate   varchar(8) binary   COMMENT '��������'
	,DZDate   varchar(8) binary   COMMENT '��������'
	,BeforeRate 	   decimal(22,8)   not null COMMENT '˰ǰ����'
	,AfterRate 	   decimal(22,8)   not null COMMENT '˰������'
	,Price 	   decimal(19,3)   not null COMMENT '�۸�'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SecurityID,SecurityType,SecurityMarketID,ProfitType)
) COMMENT='֤ȯȨ��';



-- ******************************
-- �����г���
-- ******************************
create table snap.t_S_Market
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,MarketID   varchar(8) binary  not null COMMENT '�г�����'
	,MarketName   varchar(20) binary  not null COMMENT '�г�����'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,MarketID)
) COMMENT='�г�';



-- ******************************
-- �����г���Ʒ������
-- ******************************
create table snap.t_S_MarketProduct
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,MarketID   varchar(8) binary  not null COMMENT '�г�����'
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,MarketID,ProductID)
) COMMENT='�г���Ʒ����';



-- ******************************
-- �����г���Ʒ�������
-- ******************************
create table snap.t_S_MarketProductGroup
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,MarketID   varchar(8) binary  not null COMMENT '�г�����'
	,ProductGroupID   varchar(8) binary  not null COMMENT '��Ʒ�����'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,MarketID,ProductGroupID)
) COMMENT='�г���Ʒ�����';



-- ******************************
-- �������������
-- ******************************
create table snap.t_S_MarketDataTopic
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,TopicID   INTEGER   not null COMMENT '�������'
	,TopicName   varchar(60) binary  not null COMMENT '��������'
	,MarketID   varchar(8) binary  not null COMMENT '�г�����'
	,SnapShotFeq   INTEGER   not null COMMENT '����Ƶ��'
	,MarketDataDepth   INTEGER   not null COMMENT '�г��������'
	,DelaySeconds   INTEGER   not null COMMENT '�ӳ�����'
	,MarketDataMode   char(1) binary  not null COMMENT '����ģʽ'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,TopicID)
) COMMENT='��������';



-- ******************************
-- ������Ա���������
-- ******************************
create table snap.t_S_PartTopicSubscribe
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ParticipantID   varchar(10) binary  not null COMMENT '�����ߴ���'
	,ParticipantType   char(1) binary  not null COMMENT '����������'
	,TopicID   INTEGER   not null COMMENT '�������'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,ParticipantID,TopicID)
) COMMENT='��Ա��������';



-- ******************************
-- ������Ա�˻���ϵ��
-- ******************************
create table snap.t_S_PartRoleAccount
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,TradingRole   char(1) binary  not null COMMENT '���׽�ɫ'
	,AccountID   varchar(12) binary  not null COMMENT '�ʽ��ʺ�'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,ParticipantID,TradingRole)
) COMMENT='��Ա�˻���ϵ';



-- ******************************
-- ������Ա��Ʒ��ɫ��
-- ******************************
create table snap.t_S_PartProductRole
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
	,TradingRole   char(1) binary  not null COMMENT '���׽�ɫ'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,ParticipantID,ProductID,TradingRole)
) COMMENT='��Ա��Ʒ��ɫ';



-- ******************************
-- ������Ա��Ʒ����Ȩ�ޱ�
-- ******************************
create table snap.t_S_PartProductRight
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,TradingRight   char(1) binary  not null COMMENT '����Ȩ��'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,ProductID,ParticipantID)
) COMMENT='��Ա��Ʒ����Ȩ��';



-- ******************************
-- �����ͻ���Ʒ����Ȩ�ޱ�
-- ******************************
create table snap.t_S_ClientProductRight
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ProductID   varchar(16) binary  not null COMMENT '��Ʒ����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,TradingRight   char(1) binary  not null COMMENT '����Ȩ��'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,ProductID,ClientID)
) COMMENT='�ͻ���Ʒ����Ȩ��';



-- ******************************
-- ������Լ���׽׶����Ա�
-- ******************************
create table snap.t_S_TradingSegmentAttr
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,TradingSegmentSN   INTEGER   not null COMMENT '���׽׶α��'
	,TradingSegmentName   varchar(20) binary   COMMENT '���׽׶�����'
	,StartTime   varchar(8) binary  not null COMMENT '��ʼʱ��'
	,InstrumentStatus   char(1) binary  not null COMMENT '��Լ����״̬'
	,DayOffset   INTEGER    default '0' not null COMMENT '����ƫ����'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,TradingSegmentSN,InstrumentID)
) COMMENT='��Լ���׽׶�����';



-- ******************************
-- ������Լ�۸�󶨱�
-- ******************************
create table snap.t_S_PriceBanding
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,PriceLimitType   char(1) binary  not null COMMENT '�޼�����'
	,ValueMode   char(1) binary  not null COMMENT 'ȡֵ��ʽ'
	,RoundingMode   char(1) binary  not null COMMENT '���뷽ʽ'
	,UpperValue 	   decimal(16,6)   not null COMMENT '����'
	,LowerValue 	   decimal(16,6)   not null COMMENT '����'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,TradingSegmentSN   INTEGER   not null COMMENT '���׽׶α��'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,InstrumentID,TradingSegmentSN)
) COMMENT='��Լ�۸��';



-- ******************************
-- ������Լ��֤���ʱ�
-- ******************************
create table snap.t_S_MarginRate
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,MarginCalcID   varchar(4) binary  not null COMMENT '��֤���㷨����'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,InstrumentID,ParticipantID)
) COMMENT='��Լ��֤����';



-- ******************************
-- ������Լ��֤���ʵ���ϸ���ݱ�
-- ******************************
create table snap.t_S_MarginRateDetail
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
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
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,TradingRole,HedgeFlag,InstrumentID,ParticipantID,ClientID)
) COMMENT='��Լ��֤���ʵ���ϸ����';



-- ******************************
-- ������Լ�����������ʵ���ϸ���ݱ�
-- ******************************
create table snap.t_S_TransFeeRateDetail
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
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
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,TradingRole,HedgeFlag,InstrumentID,ParticipantID,ClientID)
) COMMENT='��Լ�����������ʵ���ϸ����';



-- ******************************
-- ������Լ�����������ʵ���ϸ���ݱ�
-- ******************************
create table snap.t_S_DelivFeeRateDetail
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ValueMode   char(1) binary  not null COMMENT 'ȡֵ��ʽ'
	,DelivFeeRatio 	   decimal(22,6)   not null COMMENT '������������'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,InstrumentID,ParticipantID,ClientID)
) COMMENT='��Լ�����������ʵ���ϸ����';



-- ******************************
-- �����г������
-- ******************************
create table snap.t_S_MarketData
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
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
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,InstrumentID)
) COMMENT='�г�����';



-- ******************************
-- ����������
-- ******************************
create table snap.t_S_Order
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
-- �����ɽ���
-- ******************************
create table snap.t_S_Trade
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
-- �����ʻ������
-- ******************************
create table snap.t_S_Account
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,AccountID   varchar(12) binary  not null COMMENT '�ʽ��ʺ�'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,Currency   varchar(3) binary  not null COMMENT '����'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,AccountID)
) COMMENT='�ʻ�����';



-- ******************************
-- ��������׼�����˻���
-- ******************************
create table snap.t_S_BaseReserveAccount
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,AccountID   varchar(12) binary  not null COMMENT '�ʽ��ʺ�'
	,Reserve 	   decimal(19,3)   not null COMMENT '����׼����'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,AccountID)
) COMMENT='����׼�����˻�';



-- ******************************
-- ����ҵ�����ò������
-- ******************************
create table snap.t_S_BusinessConfig
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,FunctionCode   varchar(24) binary  not null COMMENT '���ܴ���'
	,OperationType   varchar(24) binary  not null COMMENT '��������'
	,Description   varchar(400) binary   COMMENT '��������'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,FunctionCode)
) COMMENT='ҵ�����ò�����';



-- ******************************
-- �����ͻ��ʽ��
-- ******************************
create table snap.t_S_ClientFund
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,AccountID   varchar(12) binary  not null COMMENT '�ʽ��ʺ�'
	,Available 	   decimal(19,3)   not null COMMENT '�����ʽ�'
	,TransFee 	   decimal(19,3)   not null COMMENT '����������'
	,DelivFee 	   decimal(19,3)   not null COMMENT '����������'
	,PositionMargin 	   decimal(19,3)   not null COMMENT '�ֱֲ�֤��'
	,Profit 	   decimal(19,3)   not null COMMENT 'ӯ��'
	,StockValue 	   decimal(19,3)   not null COMMENT '��ֵ'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,ParticipantID,ClientID,AccountID)
) COMMENT='�ͻ��ʽ�';



-- ******************************
-- ����Ͷ�����ʽ��
-- ******************************
create table snap.t_S_InvestorFund
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,BrokerSystemID   varchar(8) binary  not null COMMENT '��̨ϵͳ����'
	,InvestorID   varchar(10) binary  not null COMMENT 'Ͷ���ߴ���'
	,PreBalance 	   decimal(19,3)   not null COMMENT '�ϴν���׼����'
	,CurrMargin 	   decimal(19,3)   not null COMMENT '��ǰ��֤���ܶ�'
	,CloseProfit 	   decimal(19,3)   not null COMMENT 'ƽ��ӯ��'
	,Premium 	   decimal(19,3)   not null COMMENT '��ȨȨ������֧'
	,Deposit 	   decimal(19,3)   not null COMMENT '�����'
	,Withdraw 	   decimal(19,3)   not null COMMENT '������'
	,Balance 	   decimal(19,3)   not null COMMENT '�ڻ�����׼����'
	,Available 	   decimal(19,3)   not null COMMENT '�����ʽ�'
	,PreMargin 	   decimal(19,3)   not null COMMENT '�ϴα�֤���ܶ�'
	,FuturesMargin 	   decimal(19,3)   not null COMMENT '�ڻ���֤��'
	,OptionsMargin 	   decimal(19,3)   not null COMMENT '��Ȩ��֤��'
	,PositionProfit 	   decimal(19,3)   not null COMMENT '�ֲ�ӯ��'
	,Profit 	   decimal(19,3)   not null COMMENT '����ӯ��'
	,Interest 	   decimal(19,3)   not null COMMENT '��Ϣ����'
	,Fee 	   decimal(19,3)   not null COMMENT '������'
	,TotalCollateral 	   decimal(19,3)   not null COMMENT '����Ѻ���'
	,CollateralForMargin 	   decimal(19,3)   not null COMMENT '����Ѻ�ֵı�֤����'
	,PreAccmulateInterest 	   decimal(19,3)   not null COMMENT '�ϴ��ʽ���Ϣ����'
	,AccumulateInterest 	   decimal(19,3)   not null COMMENT '�ʽ���Ϣ����'
	,AccumulateFee 	   decimal(19,3)   not null COMMENT '��Ѻ�����ѻ���'
	,ForzenDeposit 	   decimal(19,3)   not null COMMENT '�����ʽ�'
	,AccountStatus   char(1) binary  not null COMMENT '�ʻ�״̬'
	,InitialAsset 	   decimal(19,3)    default '0' not null COMMENT '��ʼ�ʲ��ܶ�'
	,PreMonthAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ��ܶ�'
	,PreWeekAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ��ܶ�'
	,PreAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ��ܶ�'
	,CurrentAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ��ܶ�'
	,PreStockValue 	   decimal(19,3)   not null COMMENT '���Ʊ��ֵ'
	,StockValue 	   decimal(19,3)   not null COMMENT '��Ʊ��ֵ'
	  ,PRIMARY KEY (TradingDay,BrokerSystemID,InvestorID)
) COMMENT='Ͷ�����ʽ�';



-- ******************************
-- ������Ա�ʽ��
-- ******************************
create table snap.t_S_PartFund
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,AccountID   varchar(12) binary  not null COMMENT '�ʽ��ʺ�'
	,Available 	   decimal(19,3)   not null COMMENT '�����ʽ�'
	,TransFee 	   decimal(19,3)   not null COMMENT '����������'
	,DelivFee 	   decimal(19,3)   not null COMMENT '����������'
	,PositionMargin 	   decimal(19,3)   not null COMMENT '�ֱֲ�֤��'
	,Profit 	   decimal(19,3)   not null COMMENT 'ӯ��'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,InstrumentID,ParticipantID,AccountID)
) COMMENT='��Ա�ʽ�';



-- ******************************
-- �����ڻ���Լ�ֲ���ϸ��
-- ******************************
create table snap.t_S_FuturePositionDtl
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	,SettlementID   INTEGER   not null COMMENT '������'
	,InstrumentID   varchar(30) binary  not null COMMENT '��Լ����'
	,ParticipantID   varchar(10) binary  not null COMMENT '��Ա����'
	,ClientID   varchar(10) binary  not null COMMENT '�ͻ�����'
	,HedgeFlag   char(1) binary  not null COMMENT 'Ͷ���ױ���־'
	,Direction   char(1) binary  not null COMMENT '��������'
	,OpenDate   varchar(8) binary  not null COMMENT '��������'
	,TradeID   varchar(12) binary  not null COMMENT '�ɽ����'
	,Volume    bigInt(10)     COMMENT '��������'
	,OpenPrice 	   decimal(16,6)    COMMENT '���ּ۸�'
	,TradeType   char(1) binary  not null COMMENT '�ɽ�����'
	,CombInstrumentID   varchar(30) binary   COMMENT '��Ϻ�Լ����'
	,ExchangeID   varchar(8) binary  not null COMMENT '����������'
	,CloseProfitByDate 	   decimal(19,3)    COMMENT '����ƽ��ӯ��'
	,CloseProfitByTrade 	   decimal(19,3)    COMMENT '���ƽ��ӯ��'
	,PositionProfitByDate 	   decimal(19,3)    COMMENT '���ճֲ�ӯ��'
	,PositionProfitByTrade 	   decimal(19,3)    COMMENT '��ʳֲ�ӯ��'
	,Margin 	   decimal(19,3)    COMMENT '��֤��'
	,ExchMargin 	   decimal(19,3)    COMMENT '��������֤��'
	,MarginRateByMoney 	   decimal(22,6)   not null COMMENT '��֤����'
	,MarginRateByVolume 	   decimal(22,6)   not null COMMENT '��ʱ�֤��'
	,LastSettlementPrice 	   decimal(16,6)    COMMENT '�����'
	,SettlementPrice 	   decimal(16,6)    COMMENT '�����'
	,CloseVolume    bigInt(10)     COMMENT 'ƽ������'
	,CloseAmount 	   decimal(19,3)    COMMENT 'ƽ�ֽ��'
	  ,PRIMARY KEY (TradingDay,SettlementGroupID,SettlementID,InstrumentID,ParticipantID,ClientID,HedgeFlag,Direction,OpenDate,TradeID,TradeType)
) COMMENT='�ڻ���Լ�ֲ���ϸ';



-- ******************************
-- ����δ֪̽�����
-- ******************************
create table snap.t_S_DiscoveryActivity
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,ActivityID   varchar(8) binary  not null COMMENT '�����'
	,TermNo   INTEGER    default '0' not null COMMENT '��ں�'
	,ActivityName   varchar(20) binary  not null COMMENT '�����'
	,ActivityType   varchar(4) binary  not null COMMENT '�����'
	,ActivityStatus   char(1) binary  not null COMMENT '�״̬'
	,InitialBalance 	   decimal(19,3)    default '100000' not null COMMENT '��ʼ�ʽ�'
	,JoinMode   char(1) binary   default '0' not null COMMENT '���뷽ʽ'
	,RankingRule   varchar(2) binary   default '00' not null COMMENT '��������'
	,CircleFreq   char(1) binary   default '0' not null COMMENT 'ѭ��Ƶ��'
	,Duration   INTEGER    default '0' not null COMMENT '����ʱ��'
	,JoinCount   INTEGER    default '0' not null COMMENT '�μ�����'
	,CreateDate   varchar(8) binary  not null COMMENT '��������'
	,CreateTime   varchar(8) binary  not null COMMENT '����ʱ��'
	,BeginDate   varchar(8) binary   COMMENT '��ʼ����'
	,EndDate   varchar(8) binary   COMMENT '��������'
	,UpdateDate   varchar(8) binary  not null COMMENT '����޸�����'
	,UpdateTime   varchar(8) binary  not null COMMENT '����޸�ʱ��'
	  ,PRIMARY KEY (TradingDay,ActivityID,TermNo)
) COMMENT='δ֪̽���';



-- ******************************
-- ����δ֪̽����������ϵ��
-- ******************************
create table snap.t_S_DiscoveryActSettleGroup
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,ActivityID   varchar(8) binary  not null COMMENT '�����'
	,SettlementGroupID   varchar(8) binary  not null COMMENT '���������'
	  ,PRIMARY KEY (TradingDay,ActivityID,SettlementGroupID)
) COMMENT='δ֪̽����������ϵ';



-- ******************************
-- ����δ֪̽���Ͷ���߹�ϵ��
-- ******************************
create table snap.t_S_DiscoveryActivityInvestor
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,ID    bigInt(10)  auto_increment    not null COMMENT '����ID'
	,ActivityID   varchar(8) binary  not null COMMENT 'δ֪̽�������'
	,TermNo   INTEGER    default '0' not null COMMENT 'δ֪̽����ں�'
	,InvestorID   varchar(10) binary  not null COMMENT 'Ͷ���ߴ���'
	,JoinDate   varchar(8) binary   COMMENT '��������'
	,JoinStatus   char(1) binary   default '0'  COMMENT '����״̬'
	,Rankable   INTEGER    default '1'  COMMENT '�Ƿ��������'
	  ,PRIMARY KEY (TradingDay,ID,ActivityID,InvestorID)
) COMMENT='δ֪̽���Ͷ���߹�ϵ';



-- ******************************
-- ����Ͷ����δ֪̽��������Ϣ��
-- ******************************
create table snap.t_S_DiscoveryActInvestorEval
(
	TradingDay   varchar(8) binary  not null COMMENT '������'
	,ActivityID   varchar(8) binary  not null COMMENT 'δ֪̽�������'
	,TermNo   INTEGER    default '0' not null COMMENT 'δ֪̽����ں�'
	,InvestorID   varchar(10) binary  not null COMMENT 'Ͷ���ߴ���'
	,InitialAsset 	   decimal(19,3)    default '0' not null COMMENT '�ڳ��ʲ�'
	,PreMonthAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ�'
	,PreWeekAsset 	   decimal(19,3)    default '0' not null COMMENT '�����ʲ�'
	,PreAsset 	   decimal(19,3)    default '0' not null COMMENT '���ʲ�'
	,CurrentAsset 	   decimal(19,3)    default '0' not null COMMENT '��ǰ�ʲ�'
	,TotalReturnRate 	   decimal(22,6)    default '0' not null COMMENT '��������'
	,ReturnRateOfMonth 	   decimal(22,6)    default '0' not null COMMENT '��������'
	,ReturnRateOfWeek 	   decimal(22,6)    default '0' not null COMMENT '��������'
	,ReturnRateOf1Day 	   decimal(22,6)    default '0' not null COMMENT '��������'
	,RankingStatus   char(1) binary   default '0' not null COMMENT '�Ƿ��������'
	,PreRanking    bigInt(10)     default '0' not null COMMENT '��������������'
	,Ranking    bigInt(10)     default '0' not null COMMENT '������������'
	,IntegratedScores 	   decimal(10,3)   not null COMMENT '�ۺϻ���'
	  ,PRIMARY KEY (TradingDay,ActivityID,TermNo,InvestorID)
) COMMENT='Ͷ����δ֪̽��������Ϣ';



----\snap_Snap_clear.sql
-- ��ս���ϵͳ��
truncate table snap.t_S_TradeSystem;

-- ��չ�̨ϵͳ��
truncate table snap.t_S_BrokerSystem;

-- ��ս���ϵͳ��̨ϵͳ��Ӧ��ϵ��
truncate table snap.t_S_TradeSystemBrokerSystem;

-- ��չ�̨ϵͳ�������Ӧ��ϵ��
truncate table snap.t_S_BrokerSystemSettlementGroup;

-- ��ս�������
truncate table snap.t_S_Exchange;

-- ��ս������
truncate table snap.t_S_SettlementGroup;

-- ��ս���ϵͳ�������ϵ��
truncate table snap.t_S_TradeSystemSettlementGroup;

-- ������»��
truncate table snap.t_S_Activity;

-- ������»�������ϵ��
truncate table snap.t_S_ActivitySettlementGroup;

-- ������»Ͷ���߹�ϵ��
truncate table snap.t_S_ActivityInvestor;

-- ��ս����ʽ��˻���Ϣ��
truncate table snap.t_S_TradingAccount;

-- ��ջ�Ա��
truncate table snap.t_S_Participant;

-- ��տͻ���
truncate table snap.t_S_Client;

-- ��տͻ���Լ�ֱֲ�
truncate table snap.t_S_ClientPosition;

-- ��ջ�Ա�ͻ���ϵ��
truncate table snap.t_S_PartClient;

-- ���Ͷ������Ϣ��
truncate table snap.t_S_Investor;

-- ���Ͷ���߿ͻ���ϵ��
truncate table snap.t_S_InvestorClient;

-- ���Ͷ��������������Ϣ��
truncate table snap.t_S_ActivityInvestorEvaluation;

-- ��ս����û���
truncate table snap.t_S_User;

-- ����û�����Ȩ�ޱ�
truncate table snap.t_S_UserFunctionRight;

-- ��ս���ԱIP��ַ��
truncate table snap.t_S_UserIP;

-- ��ս��㽻�׻�Ա��ϵ��
truncate table snap.t_S_ClearingTradingPart;

-- ��ղ�Ʒ���
truncate table snap.t_S_ProductGroup;

-- ��ղ�Ʒ��
truncate table snap.t_S_Product;

-- ��ղ�Ʒ���Ա�
truncate table snap.t_S_ProductProperty;

-- ��պ�Լ�ͺ�Լ���ϵ��
truncate table snap.t_S_InstrumentGroup;

-- ��պ�Լ��
truncate table snap.t_S_Instrument;

-- ��պ�Լ���Ա�
truncate table snap.t_S_InstrumentProperty;

-- ���֤ȯȨ���
truncate table snap.t_S_SecurityProfit;

-- ����г���
truncate table snap.t_S_Market;

-- ����г���Ʒ������
truncate table snap.t_S_MarketProduct;

-- ����г���Ʒ�������
truncate table snap.t_S_MarketProductGroup;

-- ������������
truncate table snap.t_S_MarketDataTopic;

-- ��ջ�Ա���������
truncate table snap.t_S_PartTopicSubscribe;

-- ��ջ�Ա�˻���ϵ��
truncate table snap.t_S_PartRoleAccount;

-- ��ջ�Ա��Ʒ��ɫ��
truncate table snap.t_S_PartProductRole;

-- ��ջ�Ա��Ʒ����Ȩ�ޱ�
truncate table snap.t_S_PartProductRight;

-- ��տͻ���Ʒ����Ȩ�ޱ�
truncate table snap.t_S_ClientProductRight;

-- ��պ�Լ���׽׶����Ա�
truncate table snap.t_S_TradingSegmentAttr;

-- ��պ�Լ�۸�󶨱�
truncate table snap.t_S_PriceBanding;

-- ��պ�Լ��֤���ʱ�
truncate table snap.t_S_MarginRate;

-- ��պ�Լ��֤���ʵ���ϸ���ݱ�
truncate table snap.t_S_MarginRateDetail;

-- ��պ�Լ�����������ʵ���ϸ���ݱ�
truncate table snap.t_S_TransFeeRateDetail;

-- ��պ�Լ�����������ʵ���ϸ���ݱ�
truncate table snap.t_S_DelivFeeRateDetail;

-- ����г������
truncate table snap.t_S_MarketData;

-- ��ձ�����
truncate table snap.t_S_Order;

-- ��ճɽ���
truncate table snap.t_S_Trade;

-- ����ʻ������
truncate table snap.t_S_Account;

-- ��ջ���׼�����˻���
truncate table snap.t_S_BaseReserveAccount;

-- ���ҵ�����ò������
truncate table snap.t_S_BusinessConfig;

-- ��տͻ��ʽ��
truncate table snap.t_S_ClientFund;

-- ���Ͷ�����ʽ��
truncate table snap.t_S_InvestorFund;

-- ��ջ�Ա�ʽ��
truncate table snap.t_S_PartFund;

-- ����ڻ���Լ�ֲ���ϸ��
truncate table snap.t_S_FuturePositionDtl;

-- ���δ֪̽�����
truncate table snap.t_S_DiscoveryActivity;

-- ���δ֪̽����������ϵ��
truncate table snap.t_S_DiscoveryActSettleGroup;

-- ���δ֪̽���Ͷ���߹�ϵ��
truncate table snap.t_S_DiscoveryActivityInvestor;

-- ���Ͷ����δ֪̽��������Ϣ��
truncate table snap.t_S_DiscoveryActInvestorEval;

