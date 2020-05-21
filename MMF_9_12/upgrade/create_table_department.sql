CREATE TABLE DEPARTMENT (
	ID NUMBER GENERATED BY DEFAULT AS IDENTITY,
	NAME VARCHAR2(255) NOT NULL,
	CONSTRAINT DEPARTMENT_PK PRIMARY KEY (ID)
);

COMMENT ON COLUMN DEPARTMENT.ID IS 'Unique identifier of the table DEPARTMENT';
COMMENT ON COLUMN DEPARTMENT.NAME IS 'Name of department';