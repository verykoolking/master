delete CWORDERINSTANCE cascade;

commit;

truncate table CWMESSAGELOG;

truncate table CWPWORKLIST;

--truncate table CWGLOBALPROCESS;

truncate table CWPROCESS;

truncate table CWPROCESSEVENTLOG;

truncate table CWORDERITEMS;

truncate table CWPROCESSHISTORY;

truncate table CWPPARTICIPANT;

truncate table CWPWORKLIST;

truncate table CWPWORKLISTARCHIVE;

truncate table CWPWORKLISTAUDIT;

truncate table cwpDynamicParticipant;

truncate table CWPACTIVITY;

truncate table CWPGLOBAL;

truncate table CWPACTIVITYARC;

truncate table CWMILESTONE;

truncate table CWPWORKLISTAUDIT;

truncate table CWMILESTONE;

truncate table CWORDERITEMS;

truncate table CWPACTIVITY;

truncate table CWPACTIVITYARC;

truncate table CWPDYNAMICPARTICIPANT;

truncate table CWPGLOBAL;

truncate table CWPPARTICIPANT;

truncate table CWPROCESS;

truncate table CWPROCESSEVENTLOG;

truncate table CWPROCESSHISTORY;

truncate table CWPWORKLIST;

truncate table CWPWORKLISTARCHIVE;

truncate table CWPWORKLISTAUDIT;

delete CWPC_BASKETITEM;

delete CWPC_BASKET;

delete cwpc_basketitemleaves;

-- NGAA Custom Tables
delete plm_order_header;
delete CWPL_CHANGEREQUEST;
delete EPC_ITEMDOC;
delete EPC_PLMCONTROL;
delete EPC_PLMCONTROLPHASE;
delete EPC_PLMDISPLAY;
delete CM_PLMNOTES;
delete ETL_Import_ImpOrderHeader;
delete ETL_Import_FileDoc;
delete ETL_Import_EntityDoc;
delete configSessionDoc;

commit;