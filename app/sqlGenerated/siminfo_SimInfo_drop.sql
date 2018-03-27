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

