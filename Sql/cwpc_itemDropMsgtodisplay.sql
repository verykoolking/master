set serveroutput on
set feedback off
declare
  table_doesnt_exist exception;
  PRAGMA exception_init(table_doesnt_exist, -00904);
begin
  execute immediate('ALTER TABLE CWPC_ITEM DROP (MSGTODISP)');
exception when table_doesnt_exist then
  dbms_output.put_line('Sequence exists.');
end;
/
set feedback on

