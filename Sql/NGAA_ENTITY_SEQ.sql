--------------------------------------------------------
--  File creato - mercoledì-marzo-19-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence NGAA_ENTITY_SEQ
--------------------------------------------------------
set serveroutput on
set feedback off
declare
  sequence_exists exception;
  PRAGMA exception_init(sequence_exists, -00955);
begin
  execute immediate('CREATE SEQUENCE  NGAA_ENTITY_SEQ  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE');
exception when sequence_exists then
  dbms_output.put_line('Sequence exists.');
end;
/
set feedback on



set feedback off
CREATE SEQUENCE  NGAA_ENTITY_SEQ  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
set feedback on


