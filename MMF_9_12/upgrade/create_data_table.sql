CREATE TABLE DATA_TABLE (
	ID NUMBER GENERATED BY DEFAULT AS IDENTITY,
	Project_Name VARCHAR2(255),
	Project_Description VARCHAR2(255),
	Project_Start_Date DATE,
	Project_End_Date DATE,
	Stage_Name VARCHAR2(255),
	Stage_Start_Date DATE,
	Stage_End_Date DATE,
	Stage_Tasks_Code VARCHAR2(255),
	Stage_Tasks_Start_Date DATE,
	Stage_Tasks_End_Date DATE,
	Stage_Tasks_Name VARCHAR2(255),
	Stage_Tasks_Status VARCHAR2(255),
	Assigned_Person_Name VARCHAR2(256),
	Assigned_Person_Last_Name VARCHAR2(255),
	Assigned_Person_Position VARCHAR2(255),
	Assigned_Person_Department VARCHAR2(255),
	Team_Lead_Name VARCHAR2(255),
	Team_Lead_Last_Name VARCHAR2(255)
);
