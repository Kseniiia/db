CREATE TABLE TEAM (
	ID NUMBER GENERATED BY DEFAULT AS IDENTITY,
	NAME VARCHAR2(255) NOT NULL,
	LEAD_ID NUMBER NOT NULL,
	CONSTRAINT TEAM_PK PRIMARY KEY (ID)
);

COMMENT ON COLUMN TEAM.ID IS 'Unique identifier of the table TEAM';
COMMENT ON COLUMN TEAM.LEAD_ID IS 'Lead id';
