define PROJECT_CODE = 'pCode';

delete from cwpworklist where order_vk = &PROJECT_CODE;
delete from cwprocess where order_id in (select cworderid from cwpl_changerequest where projectcode=&PROJECT_CODE);









;