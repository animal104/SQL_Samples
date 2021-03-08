/*
Mickey Saine
DBMS 110 - M05B Lab Assignment: Populating the Database 
2/21/2021
M05B_SaineMichael_Update.sql
After populating that database, we will now UPDATE the database
*/

--Statement to update the table as instructed
UPDATE "ProjectTask"
SET "TaskDetails" = 'Payments'
WHERE "ProjectID" = 901 AND "EmployeeID" = 47;

--Statement to update the table as instructed
UPDATE "ProjectTask"
SET "TaskDetails" = 'Error checking'
WHERE "ProjectID" = 901 AND "EmployeeID" = 56;

--Statement to update the table as instructed
UPDATE "ProjectTask"
SET "TaskDetails" = 'Annual Accounts'
WHERE "ProjectID" = 902 AND "EmployeeID" = 65;

--Statement to update the table as instructed
UPDATE "ProjectTask"
SET "TaskDetails" = 'Research requirements'
WHERE "ProjectID" = 902 AND "EmployeeID" = 10;