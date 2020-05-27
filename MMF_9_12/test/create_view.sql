CREATE VIEW DATA_TABLE_VIEW AS
SELECT
  P.NAME Project_Name,
  P.DESCRIPTION Project_Description,
  to_char(P.START_DATE, 'dd-mm-yyyy') Project_Start_Date,
  to_char(P.FINISH_DATE, 'dd-mm-yyyy') Project_End_Date,
  S.NAME Stage_Name,
  to_char(S.START_DATE, 'dd-mm-yyyy') Stage_Start_Date,
  to_char(S.FINISH_DATE, 'dd-mm-yyyy') Stage_End_Date,
  T.CODE Stage_Tasks_Code,
  to_char(T.START_DATE, 'dd-mm-yyyy') Stage_Tasks_Start_Date,
  to_char(T.FINISH_DATE, 'dd-mm-yyyy') Stage_Tasks_End_Date,
  T.NAME Stage_Tasks_Name,
  TS.NAME Stage_Tasks_Status,
  DEV.FIRST_NAME Assigned_Person_Name,
  DEV.LAST_NAME Assigned_Person_Last_Name,
  R.NAME Assigned_Person_Position,
  DEP.NAME Assigned_Person_Department,
  DEV2.FIRST_NAME Team_Lead_Name,
  DEV2.LAST_NAME Team_Lead_Last_Name
FROM PROJECT P
  RIGHT JOIN STAGE S ON (P.ID = S.PROJECT_ID)
  RIGHT JOIN TASK T ON (S.ID = T.STAGE_ID)
  LEFT JOIN TASK_STATUS TS ON (T.TASK_STATUS_ID = TS.ID)
  LEFT JOIN DEVELOPER_TASK DT ON (T.ID = DT.TASK_ID)
  LEFT JOIN DEVELOPER DEV ON (DT.DEVELOPER_ID = DEV.ID)
  LEFT JOIN PROJECT_DEVELOPER_ROLE PDR ON (P.ID = PDR.PROJECT_ID AND DEV.ID = PDR.DEVELOPER_ID)
  LEFT JOIN ROLE R ON (PDR.ROLE_ID = R.ID)
  LEFT JOIN DEPARTMENT DEP ON (DEV.DEPARTMENT_ID = DEP.ID)
  LEFT JOIN TEAM_DEVELOPER TD ON (DEV.ID = TD.DEVELOPER_ID)
  LEFT JOIN TEAM TE ON (TD.TEAM_ID = TE.ID)
  LEFT JOIN DEVELOPER DEV2 ON (TE.LEAD_ID = DEV2.ID)
ORDER BY S.START_DATE, S.FINISH_DATE;