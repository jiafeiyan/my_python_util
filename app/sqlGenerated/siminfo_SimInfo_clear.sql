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
-- truncate table siminfo.t_TradeSystemTradingDay;

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

-- ������»������Ͷ���߱�
truncate table siminfo.t_ActivityRankableInvestor;

-- ���������
-- truncate table siminfo.t_TradingCalendar;

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

