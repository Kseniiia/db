CREATE TABLE TASK
(
	ID NUMBER GENERATED BY DEFAULT AS IDENTITY,
	CODE VARCHAR2(256) NOT NULL,
	NAME VARCHAR2(255) NOT NULL,
	START_DATE DATE NOT NULL,
	FINISH_DATE DATE NOT NULL,
	STAGE_ID NUMBER NOT NULL,
	TASK_STATUS_ID NUMBER NOT NULL,
	CONSTRAINT TASK_PK PRIMARY KEY (ID)
);

COMMENT ON COLUMN TASK.ID IS 'Unique identifier of the table TASK';
COMMENT ON COLUMN TASK.CODE IS 'Code of project';
COMMENT ON COLUMN TASK.NAME IS 'Name of task';
COMMENT ON COLUMN TASK.START_DATE IS 'Start date of task';
COMMENT ON COLUMN TASK.FINISH_DATE IS 'Finish date of task';
COMMENT ON COLUMN TASK.STAGE_ID IS 'Stage id';
COMMENT ON COLUMN TASK.TASK_STATUS_ID IS 'Status id';
