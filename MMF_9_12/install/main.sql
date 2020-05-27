SPOOL INSTALL.LOG
ALTER SESSION SET "_oracle_script"=true;

DEFINE USER_NAME = &&1
DEFINE LOCATION = &&2
PROMPT Calling script create_tablespaces
@create_tablespaces &&USER_NAME &&LOCATION
PROMPT Calling script create_schema
@create_schema &&USER_NAME
PROMPT Calling script privilege_schema
@privilege_schema &&USER_NAME

SPOOL OFF
