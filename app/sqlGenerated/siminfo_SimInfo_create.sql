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
	,ActivityName   varchar(20) binary  not null COMMENT '���»����'
	,ActivityType   varchar(4) binary  not null COMMENT '���»����'
	,ActivityStatus   char(1) binary  not null COMMENT '���»״̬'
	,InitialBalance 	   decimal(19,3)    default '100000' not null COMMENT '��ʼ�ʽ�'
	,CreateDate   varchar(8) binary  not null COMMENT '��������'
	,CreateTime   varchar(8) binary  not null COMMENT '����ʱ��'
	,BeginDate   varchar(8) binary   COMMENT '��ʼ����'
	,EndDate   varchar(8) binary   COMMENT '��������'
	,UpdateDate   varchar(8) binary  not null COMMENT '����޸�����'
	,UpdateTime   varchar(8) binary  not null COMMENT '����޸�ʱ��'
	  ,PRIMARY KEY (ActivityID)
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
	,InvestorID   varchar(10) binary  not null COMMENT 'Ͷ���ߴ���'
	,JoinDate   varchar(8) binary   COMMENT '��������'
	,JoinStatus   char(1) binary   default '0'  COMMENT '����״̬'
	  ,PRIMARY KEY (ID,ActivityID,InvestorID)
) COMMENT='���»Ͷ���߹�ϵ';



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
	,InvestorID   varchar(10) binary  not null COMMENT 'Ͷ���ߴ���'
	,InitialAsset 	   decimal(19,3)   not null COMMENT '�ڳ��ʲ�'
	,PreAsset 	   decimal(19,3)   not null COMMENT '���ʲ�'
	,CurrentAsset 	   decimal(19,3)   not null COMMENT '��ǰ�ʲ�'
	,TotalReturnRate 	   decimal(22,6)   not null COMMENT '��������'
	,ReturnRateOf1Day 	   decimal(22,6)   not null COMMENT '��������'
	,RankingStatus   char(1) binary   default '0' not null COMMENT '�Ƿ��������'
	,PreRanking    bigInt(10)     default '0' not null COMMENT '��������������'
	,Ranking    bigInt(10)     default '0' not null COMMENT '������������'
	  ,PRIMARY KEY (ActivityID,InvestorID)
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



