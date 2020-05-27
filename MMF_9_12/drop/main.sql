SPOOL DROP.LOG
ALTER SESSION SET "_oracle_script"=true;

DEFINE USER_NAME = &&1
PROMPT Calling script drop_schema
@drop_schema &&USER_NAME
PROMPT Calling script drop_tablespaces
@drop_tablespaces

SPOOL OFF
