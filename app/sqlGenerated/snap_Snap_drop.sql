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

