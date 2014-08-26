define NUMBER_OF_DAYS = 30;

--Logs and closed data
truncate table cwMessageLog;
truncate table cwProcessHistory;
truncate table cwpWorkListAudit;
truncate table cwpWorkListArchive;
truncate table cwProcessEventLog;
truncate table cwpworklistarchive;

--Terminated processes
delete cwprocess where order_id in (select cworderid from cwpl_changerequest where projectcode in (select projectcode from cwpc_project where status='ACT' and cwcreated<sysdate-&NUMBER_OF_DAYS));
--Delete old warnings
delete cwpworklist where flags=2 and creation_date<sysdate-&NUMBER_OF_DAYS;

commit;