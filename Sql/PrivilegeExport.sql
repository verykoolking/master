
--------------------------------------
-- USERs/PRIVILEGEs/GROUPs 17/06/2014
--------------------------------------


--------------------------------------
-- DO SOME CLEANUP:
--------------------------------------
--USERGROUPPRIVILEGE
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='ManageProdOff'and USERGROUP='Marketing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='ManageProdSpec'and USERGROUP='Marketing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='ReadProdOff'and USERGROUP='Marketing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='ReadProdSpec'and USERGROUP='Marketing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='ReadServSpec'and USERGROUP='Marketing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='ManageProdOff'and USERGROUP='Revision';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='ManageProdSpec'and USERGROUP='Revision';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='ManageServSpe'and USERGROUP='Revision';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='ReadProdOff'and USERGROUP='Revision';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='ReadProdSpec'and USERGROUP='Revision';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='ReadServSpec'and USERGROUP='Revision';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='ManageServSpe'and USERGROUP='Technical';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='ReadProdOff'and USERGROUP='Technical';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='ReadProdSpec'and USERGROUP='Technical';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='ReadServSpec'and USERGROUP='Technical';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='CatalogAdmin'and USERGROUP='CatAdmin';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='productManager'and USERGROUP='Marketing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='productManager'and USERGROUP='Technical';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='productManager'and USERGROUP='Revision';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='approveTask'and USERGROUP='Technical';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_chTyManager'and USERGROUP='Technical';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_iAttManager'and USERGROUP='Technical';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_iImgManager'and USERGROUP='Technical';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_admin'and USERGROUP='Technical';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_specSearch'and USERGROUP='Technical';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_taxManager'and USERGROUP='Technical';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='WGAvailable'and USERGROUP='Technical';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_impEx'and USERGROUP='Technical';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='WTakeOn'and USERGROUP='Technical';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='approveTask'and USERGROUP='Revision';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_chTyManager'and USERGROUP='Revision';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_iAttManager'and USERGROUP='Revision';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_iImgManager'and USERGROUP='Revision';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_admin'and USERGROUP='Revision';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_specSearch'and USERGROUP='Revision';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_taxManager'and USERGROUP='Revision';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='WGAvailable'and USERGROUP='Revision';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_impEx'and USERGROUP='Revision';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='WTakeOn'and USERGROUP='Revision';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='revisionPriv'and USERGROUP='Revision';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='technicalPriv'and USERGROUP='Technical';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='marketingPriv'and USERGROUP='Marketing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='deployPriv'and USERGROUP='Deploy';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='testingPriv'and USERGROUP='Testing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='errorPriv'and USERGROUP='IT';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='productManager'and USERGROUP='Deploy';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='approveTask'and USERGROUP='Deploy';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_chTyManager'and USERGROUP='Deploy';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_iAttManager'and USERGROUP='Deploy';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_iImgManager'and USERGROUP='Deploy';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_admin'and USERGROUP='Deploy';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_specSearch'and USERGROUP='Deploy';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_taxManager'and USERGROUP='Deploy';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='WGAvailable'and USERGROUP='Deploy';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_impEx'and USERGROUP='Deploy';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='WTakeOn'and USERGROUP='Deploy';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='productManager'and USERGROUP='Testing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='approveTask'and USERGROUP='Testing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_chTyManager'and USERGROUP='Testing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_iAttManager'and USERGROUP='Testing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_iImgManager'and USERGROUP='Testing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_admin'and USERGROUP='Testing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_specSearch'and USERGROUP='Testing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_taxManager'and USERGROUP='Testing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='WGAvailable'and USERGROUP='Testing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='cwpc_impEx'and USERGROUP='Testing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='WTakeOn'and USERGROUP='Testing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='RatingCatalogApp'and USERGROUP='Deploy';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='RatingCatalogApp'and USERGROUP='Testing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='RatingCatalogApp'and USERGROUP='IT';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='RatingCatalogApp'and USERGROUP='Revision';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='RatingCatalogApp'and USERGROUP='Technical';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='RatingCatalogApp'and USERGROUP='Marketing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='WReturn'and USERGROUP='Deploy';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='WReturn'and USERGROUP='Testing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='WReturn'and USERGROUP='IT';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='WReturn'and USERGROUP='Revision';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='WReturn'and USERGROUP='Technical';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='WReturn'and USERGROUP='Marketing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='WDelegate'and USERGROUP='Deploy';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='WDelegate'and USERGROUP='Testing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='WDelegate'and USERGROUP='IT';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='WDelegate'and USERGROUP='Revision';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='WDelegate'and USERGROUP='Technical';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='WDelegate'and USERGROUP='Marketing';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='CatalogDesigner'and USERGROUP='User Profile Administrators';
delete from CWUSERGROUPPRIVILEGE where PRIVILEGE='ETLAppPriv'and USERGROUP='ETL';

--USERROLE
delete from CWUSERROLE where USERID='upadmin'and ROLEID='Marketing';
delete from CWUSERROLE where USERID='upadmin'and ROLEID='Revision';
delete from CWUSERROLE where USERID='upadmin'and ROLEID='Technical';
delete from CWUSERROLE where USERID='marketing'and ROLEID='Marketing';
delete from CWUSERROLE where USERID='technical'and ROLEID='Technical';
delete from CWUSERROLE where USERID='revision'and ROLEID='Revision';
delete from CWUSERROLE where USERID='upadmin' and ROLEID='CatAdmin';
delete from CWUSERROLE where USERID='upadmin'and ROLEID='Deploy';
delete from CWUSERROLE where USERID='upadmin'and ROLEID='Testing';
delete from CWUSERROLE where USERID='testing'and ROLEID='Testing';
delete from CWUSERROLE where USERID='deploy'and ROLEID='Deploy';
delete from CWUSERROLE where USERID='upadmin'and ROLEID='IT';
delete from CWUSERROLE where USERID='upadmin'and ROLEID='ETL';

--ROLE
/*
delete from CWROLE where ROLEID='Revision';
delete from CWROLE where ROLEID='Technical';
delete from CWROLE where ROLEID='CatAdmin';
delete from CWROLE where ROLEID='Deploy';
delete from CWROLE where ROLEID='Testing';
delete from CWROLE where ROLEID='ETL';
*/

--PRIVILEGE
/*
delete from CWPRIVILEGE where PRIVILEGE='CatalogAdmin';
delete from CWPRIVILEGE where PRIVILEGE='CatalogDesigner';
delete from CWPRIVILEGE where PRIVILEGE='ManageProdOff';
delete from CWPRIVILEGE where PRIVILEGE='ReadProdOff';
delete from CWPRIVILEGE where PRIVILEGE='ManageProdSpec';
delete from CWPRIVILEGE where PRIVILEGE='ReadProdSpec';
delete from CWPRIVILEGE where PRIVILEGE='ReadServSpec';
delete from CWPRIVILEGE where PRIVILEGE='ManageServSpe';
delete from CWPRIVILEGE where PRIVILEGE='RatingCatalogApp';
delete from CWPRIVILEGE where PRIVILEGE='revisionPriv'; 
delete from CWPRIVILEGE where PRIVILEGE='technicalPriv'; 
delete from CWPRIVILEGE where PRIVILEGE='marketingPriv';
delete from CWPRIVILEGE where PRIVILEGE='deployPriv'; 
delete from CWPRIVILEGE where PRIVILEGE='testingPriv'; 
delete from CWPRIVILEGE where PRIVILEGE='errorPriv'; 
delete from CWPRIVILEGE where PRIVILEGE='ETLAppPriv';
*/

--USER
delete from CWUSER where USERID='revision';
delete from CWUSER where USERID='technical';
delete from CWUSER where USERID='marketing';
delete from CWUSER where USERID='deploy';
delete from CWUSER where USERID='testing';
delete from CWUSER where USERID='it';


--------------------------------------
-- INSERT NEW RECORDS:
--------------------------------------
--USER
Insert into CWUSER (USERID,USER_NAME,DOMAIN,EMAIL,ACTIVE,PROFILEID,MINTASKS,MAXTASKS,CURRENT_TASKS,AVAILABLE,EXTERNALUSER,EXTUSERPSW,POSITIONID) values ('revision','Revision User',null,null,'1','revision','3','10','0','1','0',null,null);
Insert into CWUSER (USERID,USER_NAME,DOMAIN,EMAIL,ACTIVE,PROFILEID,MINTASKS,MAXTASKS,CURRENT_TASKS,AVAILABLE,EXTERNALUSER,EXTUSERPSW,POSITIONID) values ('technical','Technical User',null,null,'1','technical','3','10','0','1','0',null,null);
Insert into CWUSER (USERID,USER_NAME,DOMAIN,EMAIL,ACTIVE,PROFILEID,MINTASKS,MAXTASKS,CURRENT_TASKS,AVAILABLE,EXTERNALUSER,EXTUSERPSW,POSITIONID) values ('marketing','Marketing User',null,null,'1','marketing','3','10','0','1','0',null,null);
-- Added 1/07/2014
Insert into CWUSER (USERID,USER_NAME,DOMAIN,EMAIL,ACTIVE,PROFILEID,MINTASKS,MAXTASKS,CURRENT_TASKS,AVAILABLE,EXTERNALUSER,EXTUSERPSW,POSITIONID) values ('deploy','Deploy User',null,null,'1','deploy','3','10','0','1','0',null,null);
Insert into CWUSER (USERID,USER_NAME,DOMAIN,EMAIL,ACTIVE,PROFILEID,MINTASKS,MAXTASKS,CURRENT_TASKS,AVAILABLE,EXTERNALUSER,EXTUSERPSW,POSITIONID) values ('testing','Testing User',null,null,'1','testing','3','10','0','1','0',null,null);
Insert into CWUSER (USERID,USER_NAME,DOMAIN,EMAIL,ACTIVE,PROFILEID,MINTASKS,MAXTASKS,CURRENT_TASKS,AVAILABLE,EXTERNALUSER,EXTUSERPSW,POSITIONID) values ('it','It User',null,null,'1','it','3','10','0','1','0',null,null);

--PRIVILEGE
Insert /*+ IGNORE_ROW_ON_DUPKEY_INDEX(CWPRIVILEGE,CWPRIVILEGE_PK) */ into CWPRIVILEGE (PRIVILEGE,DESCRIPTION) values ('CatalogAdmin','Catalog Administration');  
Insert /*+ IGNORE_ROW_ON_DUPKEY_INDEX(CWPRIVILEGE,CWPRIVILEGE_PK) */ into CWPRIVILEGE (PRIVILEGE,DESCRIPTION) values ('CatalogDesigner','Catalog Designer Application');
Insert /*+ IGNORE_ROW_ON_DUPKEY_INDEX(CWPRIVILEGE,CWPRIVILEGE_PK) */ into CWPRIVILEGE (PRIVILEGE,DESCRIPTION) values ('ManageProdOff','Manage Product Offering');
Insert /*+ IGNORE_ROW_ON_DUPKEY_INDEX(CWPRIVILEGE,CWPRIVILEGE_PK) */ into CWPRIVILEGE (PRIVILEGE,DESCRIPTION) values ('ReadProdOff','Read Product Offering');
Insert /*+ IGNORE_ROW_ON_DUPKEY_INDEX(CWPRIVILEGE,CWPRIVILEGE_PK) */ into CWPRIVILEGE (PRIVILEGE,DESCRIPTION) values ('ManageProdSpec','Manage Product Specification');
Insert /*+ IGNORE_ROW_ON_DUPKEY_INDEX(CWPRIVILEGE,CWPRIVILEGE_PK) */ into CWPRIVILEGE (PRIVILEGE,DESCRIPTION) values ('ReadProdSpec','Read Product Specification');
Insert /*+ IGNORE_ROW_ON_DUPKEY_INDEX(CWPRIVILEGE,CWPRIVILEGE_PK) */ into CWPRIVILEGE (PRIVILEGE,DESCRIPTION) values ('ReadServSpec','Read Service Specification');
Insert /*+ IGNORE_ROW_ON_DUPKEY_INDEX(CWPRIVILEGE,CWPRIVILEGE_PK) */ into CWPRIVILEGE (PRIVILEGE,DESCRIPTION) values ('ManageServSpe','Manage Service Specification');
Insert /*+ IGNORE_ROW_ON_DUPKEY_INDEX(CWPRIVILEGE,CWPRIVILEGE_PK) */ into CWPRIVILEGE (PRIVILEGE,DESCRIPTION) values ('RatingCatalogApp','Rating Catalog Application');

-- Added 26/06/2014
Insert /*+ IGNORE_ROW_ON_DUPKEY_INDEX(CWPRIVILEGE,CWPRIVILEGE_PK) */ into CWPRIVILEGE (PRIVILEGE,DESCRIPTION) values ('revisionPriv','Revision Privilege'); 
Insert /*+ IGNORE_ROW_ON_DUPKEY_INDEX(CWPRIVILEGE,CWPRIVILEGE_PK) */ into CWPRIVILEGE (PRIVILEGE,DESCRIPTION) values ('technicalPriv','Technical Privilege'); 
Insert /*+ IGNORE_ROW_ON_DUPKEY_INDEX(CWPRIVILEGE,CWPRIVILEGE_PK) */ into CWPRIVILEGE (PRIVILEGE,DESCRIPTION) values ('marketingPriv','Marketing Privilege');
-- Added 1/07/2014
Insert /*+ IGNORE_ROW_ON_DUPKEY_INDEX(CWPRIVILEGE,CWPRIVILEGE_PK) */ into CWPRIVILEGE (PRIVILEGE,DESCRIPTION) values ('deployPriv','Deploy Privilege'); 
Insert /*+ IGNORE_ROW_ON_DUPKEY_INDEX(CWPRIVILEGE,CWPRIVILEGE_PK) */ into CWPRIVILEGE (PRIVILEGE,DESCRIPTION) values ('testingPriv','Testing Privilege'); 
Insert /*+ IGNORE_ROW_ON_DUPKEY_INDEX(CWPRIVILEGE,CWPRIVILEGE_PK) */ into CWPRIVILEGE (PRIVILEGE,DESCRIPTION) values ('errorPriv','Error Privilege'); 
Insert /*+ IGNORE_ROW_ON_DUPKEY_INDEX(CWPRIVILEGE,CWPRIVILEGE_PK) */ into CWPRIVILEGE (PRIVILEGE,DESCRIPTION) values ('ETLAppPriv','ETL Application Privilege');

--ROLE
INSERT /*+ IGNORE_ROW_ON_DUPKEY_INDEX(CWROLE,CWROLE_PK) */ INTO CWROLE (ROLEID, ROLE_NAME) VALUES ('Revision', 'Revision Group');
INSERT /*+ IGNORE_ROW_ON_DUPKEY_INDEX(CWROLE,CWROLE_PK) */ INTO CWROLE (ROLEID, ROLE_NAME) VALUES ('Technical', 'Technical Group');
INSERT /*+ IGNORE_ROW_ON_DUPKEY_INDEX(CWROLE,CWROLE_PK) */ INTO CWROLE (ROLEID, ROLE_NAME) VALUES ('CatAdmin', 'Catalog Admin Group');
-- Added 1/07/2014
INSERT /*+ IGNORE_ROW_ON_DUPKEY_INDEX(CWROLE,CWROLE_PK) */ INTO CWROLE (ROLEID, ROLE_NAME) VALUES ('Deploy', 'Deploy Group');
INSERT /*+ IGNORE_ROW_ON_DUPKEY_INDEX(CWROLE,CWROLE_PK) */ INTO CWROLE (ROLEID, ROLE_NAME) VALUES ('Testing', 'Testing Group');
INSERT /*+ IGNORE_ROW_ON_DUPKEY_INDEX(CWROLE,CWROLE_PK) */ INTO CWROLE (ROLEID, ROLE_NAME) VALUES ('ETL', 'ETL Group');

--USERROLE
Insert into CWUSERROLE (USERID,ROLEID,ACTIVE,MANAGER) values ('upadmin','Marketing','1','0');
Insert into CWUSERROLE (USERID,ROLEID,ACTIVE,MANAGER) values ('upadmin','Revision','1','0');
Insert into CWUSERROLE (USERID,ROLEID,ACTIVE,MANAGER) values ('upadmin','Technical','1','0');
Insert into CWUSERROLE (USERID,ROLEID,ACTIVE,MANAGER) values ('marketing','Marketing','1','0');
Insert into CWUSERROLE (USERID,ROLEID,ACTIVE,MANAGER) values ('technical','Technical','1','0');
Insert into CWUSERROLE (USERID,ROLEID,ACTIVE,MANAGER) values ('revision','Revision','1','0');
Insert into CWUSERROLE (USERID,ROLEID,ACTIVE,MANAGER) values ('upadmin','CatAdmin','1','0');
-- Added 1/07/2014
Insert into CWUSERROLE (USERID,ROLEID,ACTIVE,MANAGER) values ('upadmin','Deploy','1','0');
Insert into CWUSERROLE (USERID,ROLEID,ACTIVE,MANAGER) values ('upadmin','Testing','1','0');
Insert into CWUSERROLE (USERID,ROLEID,ACTIVE,MANAGER) values ('testing','Testing','1','0');
Insert into CWUSERROLE (USERID,ROLEID,ACTIVE,MANAGER) values ('deploy','Deploy','1','0');
Insert into CWUSERROLE (USERID,ROLEID,ACTIVE,MANAGER) values ('upadmin','IT','1','0');
Insert into CWUSERROLE (USERID,ROLEID,ACTIVE,MANAGER) values ('upadmin','ETL','1','0');

--USERGROUPPRIVILEGE
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('ManageProdOff','Marketing');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('ManageProdSpec','Marketing');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('ReadProdOff','Marketing');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('ReadProdSpec','Marketing');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('ReadServSpec','Marketing');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('ManageProdOff','Revision');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('ManageProdSpec','Revision');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('ManageServSpe','Revision');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('ReadProdOff','Revision');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('ReadProdSpec','Revision');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('ReadServSpec','Revision');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('ManageServSpe','Technical');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('ReadProdOff','Technical');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('ReadProdSpec','Technical');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('ReadServSpec','Technical');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('CatalogAdmin','CatAdmin');
-- Added 18/06/2014
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('productManager','Marketing');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('productManager','Technical');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('productManager','Revision');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('approveTask','Technical');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_chTyManager','Technical');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_iAttManager','Technical');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_iImgManager','Technical');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_admin','Technical');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_specSearch','Technical');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_taxManager','Technical');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('WGAvailable','Technical');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_impEx','Technical');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('WTakeOn','Technical');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('approveTask','Revision');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_chTyManager','Revision');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_iAttManager','Revision');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_iImgManager','Revision');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_admin','Revision');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_specSearch','Revision');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_taxManager','Revision');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('WGAvailable','Revision');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_impEx','Revision');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('WTakeOn','Revision');
-- Added 26/06/2014
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('revisionPriv','Revision');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('technicalPriv','Technical');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('marketingPriv','Marketing');
-- Added 1/07/2014
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('deployPriv','Deploy');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('testingPriv','Testing');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('errorPriv','IT');

Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('productManager','Deploy');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('approveTask','Deploy');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_chTyManager','Deploy');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_iAttManager','Deploy');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_iImgManager','Deploy');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_admin','Deploy');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_specSearch','Deploy');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_taxManager','Deploy');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('WGAvailable','Deploy');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_impEx','Deploy');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('WTakeOn','Deploy');

Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('productManager','Testing');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('approveTask','Testing');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_chTyManager','Testing');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_iAttManager','Testing');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_iImgManager','Testing');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_admin','Testing');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_specSearch','Testing');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_taxManager','Testing');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('WGAvailable','Testing');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('cwpc_impEx','Testing');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('WTakeOn','Testing');

Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('RatingCatalogApp','Deploy');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('RatingCatalogApp','Testing');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('RatingCatalogApp','IT');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('RatingCatalogApp','Revision');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('RatingCatalogApp','Technical');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('RatingCatalogApp','Marketing');

-- Added 07/07/2014
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('WReturn','Deploy');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('WReturn','Testing');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('WReturn','IT');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('WReturn','Revision');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('WReturn','Technical');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('WReturn','Marketing');

Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('WDelegate','Deploy');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('WDelegate','Testing');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('WDelegate','IT');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('WDelegate','Revision');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('WDelegate','Technical');
Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('WDelegate','Marketing');

Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('CatalogDesigner','User Profile Administrators');

Insert into CWUSERGROUPPRIVILEGE (PRIVILEGE,USERGROUP) values ('ETLAppPriv','ETL');


COMMIT;
