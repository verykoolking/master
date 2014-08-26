declare
  PROJECT_CODE varchar(32);
begin
  PROJECT_CODE := 'DB844BBC0720442F880659F22856237D';

  DELETE cwmessagelog where user_data1=PROJECT_CODE;
  DELETE cwpworklist where order_vk = PROJECT_CODE;
  DELETE cwprocess where order_id in (select cworderid from cwpl_changerequest where projectcode=PROJECT_CODE);
  DELETE cworderinstance where cwdocid in (select cworderid from cwpl_changerequest where projectcode=PROJECT_CODE);
  DELETE cworderitems where toporderid in (select cworderid from cwpl_changerequest where projectcode=PROJECT_CODE);
  
  DELETE cwpl_changerequest where projectcode=PROJECT_CODE;
  DELETE epc_itemdoc where projectcode=PROJECT_CODE;
  DELETE epc_plmcontrol where projectcode=PROJECT_CODE;
  DELETE epc_plmcontrolphase where catalogcode=PROJECT_CODE;
  DELETE cm_plmnotes where projectcode=PROJECT_CODE;
  
  DELETE CWPC_ITEMATTRIBUTE_V WHERE ITEMATTRVERSIONID IN (SELECT CATALOGOBJECTID FROM CWPC_PROJECTCOMMAND WHERE OBJECTTYPE='cwt_pc:cwt_itemAttribute' AND PROJECTID=(SELECT PROJECTID FROM CWPC_PROJECT WHERE PROJECTCODE=PROJECT_CODE));
  DELETE CWPC_RESTRICTION_V WHERE ITEMCODE IN (SELECT CATALOGOBJECTCODE FROM CWPC_PROJECTCOMMAND WHERE OBJECTTYPE='cwt_pc:cwt_item' AND PROJECTID=(SELECT PROJECTID FROM CWPC_PROJECT WHERE PROJECTCODE=PROJECT_CODE));
  DELETE CWPC_RESTRICTION_V WHERE RESTRICTIONID IN (SELECT CATALOGOBJECTID FROM CWPC_PROJECTCOMMAND WHERE OBJECTTYPE='cwt_pc:cwt_itemAttribute' AND PROJECTID=(SELECT PROJECTID FROM CWPC_PROJECT WHERE PROJECTCODE=PROJECT_CODE));
  DELETE CWPC_ITEMRELATION_V WHERE ITEMCODE IN (SELECT CATALOGOBJECTCODE FROM CWPC_PROJECTCOMMAND WHERE OBJECTTYPE='cwt_pc:cwt_item' AND PROJECTID=(SELECT PROJECTID FROM CWPC_PROJECT WHERE PROJECTCODE=PROJECT_CODE));
  DELETE CWPC_ITEMLABEL_V WHERE ITEMCODE IN (SELECT CATALOGOBJECTCODE FROM CWPC_PROJECTCOMMAND WHERE OBJECTTYPE='cwt_pc:cwt_item' AND PROJECTID=(SELECT PROJECTID FROM CWPC_PROJECT WHERE PROJECTCODE=PROJECT_CODE));
  DELETE CWPC_ITEM WHERE ITEMCODE IN (SELECT CATALOGOBJECTCODE FROM CWPC_PROJECTCOMMAND WHERE OBJECTTYPE='cwt_pc:cwt_item' AND PROJECTID=(SELECT PROJECTID FROM CWPC_PROJECT WHERE PROJECTCODE=PROJECT_CODE));
  DELETE CWPC_ATTRIBUTE WHERE ATTRIBUTECODE IN (SELECT CATALOGOBJECTCODE FROM CWPC_PROJECTCOMMAND WHERE OBJECTTYPE='cwt_pc:cwt_attribute' AND PROJECTID=(SELECT PROJECTID FROM CWPC_PROJECT WHERE PROJECTCODE=PROJECT_CODE));
  DELETE CWPC_PROJECTCOMMAND WHERE PROJECTID=(SELECT PROJECTID FROM CWPC_PROJECT WHERE PROJECTCODE=PROJECT_CODE);
  DELETE CWPC_PROJECT WHERE PROJECTCODE=PROJECT_CODE;

  COMMIT;
end;
/