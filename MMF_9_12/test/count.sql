SET SERVEROUTPUT ON SIZE 30000;
DECLARE
    num NUMBER;
BEGIN
    SELECT COUNT(id) INTO num FROM PROJECT;
    dbms_output.put_line('PROJECT - number of rows: ' || num);

    SELECT COUNT(id) INTO num FROM STAGE;
    dbms_output.put_line('STAGE - number of rows: ' || num);

    SELECT COUNT(id) INTO num FROM TASK;
    dbms_output.put_line('TASK - number of rows: ' || num);

    SELECT COUNT(id) INTO num FROM ROLE;
    dbms_output.put_line('ROLE - number of rows: ' || num);

    SELECT COUNT(id) INTO num FROM SKILL;
    dbms_output.put_line('SKILL - number of rows: ' || num);

    SELECT COUNT(id) INTO num FROM TEAM;
    dbms_output.put_line('TEAM - number of rows: ' || num);

    SELECT COUNT(id) INTO num FROM DEVELOPER;
    dbms_output.put_line('DEVELOPER - number of rows: ' || num);

    SELECT COUNT(id) INTO num FROM DEVELOPER_TASK;
    dbms_output.put_line('DEVELOPER_TASK - number of rows: ' || num);

    SELECT COUNT(id) INTO num FROM DEVELOPER_SKILL;
    dbms_output.put_line('DEVELOPER_SKILL - number of rows: ' || num);

    SELECT COUNT(id) INTO num FROM TEAM_DEVELOPER;
    dbms_output.put_line('TEAM_DEVELOPER - number of rows: ' || num);

    SELECT COUNT(id) INTO num FROM TEAM_PROJECT;
    dbms_output.put_line('TEAM_PROJECT - number of rows: ' || num);

    SELECT COUNT(id) INTO num FROM PROJECT_DEVELOPER_ROLE;
    dbms_output.put_line('PROJECT_DEVELOPER_ROLE - number of rows: ' || num);

    SELECT COUNT(id) INTO num FROM TASK_STATUS;
    dbms_output.put_line('TASK_STATUS - number of rows: ' || num);

    SELECT COUNT(id) INTO num FROM DEPARTMENT;
    dbms_output.put_line('DEPARTMENT - number of rows: ' || num);
END;
/