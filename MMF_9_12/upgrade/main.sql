SPOOL INSTALL.LOG
DEFINE USER_NAME = &&1

PROMPT Calling script create_data_table
@create_data_table.sql
PROMPT Calling script create_table_project
@create_table_project.sql
PROMPT Calling script create_table_stage
@create_table_stage.sql
PROMPT Calling script create_table_skill
@create_table_skill.sql
PROMPT Calling script create_table_task
@create_table_task.sql
PROMPT Calling script create_table_task_status
@create_table_task_status.sql
PROMPT Calling script create_table_department
@create_table_department.sql
PROMPT Calling script create_table_developer
@create_table_developer.sql
PROMPT Calling script create_table_developer_task
@create_table_developer_task.sql
PROMPT Calling script create_table_developer_skill
@create_table_developer_skill.sql
PROMPT Calling script create_table_role
@create_table_role.sql
PROMPT Calling script create_table_developer_role
@create_table_project_developer_role.sql
PROMPT Calling script create_table_team
@create_table_team.sql
PROMPT Calling script create_table_team_developer
@create_table_team_developer.sql
PROMPT Calling script create_table_team_project
@create_table_team_project.sql
PROMPT Calling script create_constraints
@create_constraints.sql

SPOOL OFF

