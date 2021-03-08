/*
Mickey Saine
DBMS 110 - M05A Lab Assignment: Realizing the Database Design
2/15/2021
M05_SaineMichael_CreateTables.sql
This will create four tables in a 2d manner after past failures with 3d table attempts
*/
-- Creates first of 4 tables
CREATE TABLE  "ProjDept"  																						/*Create the table*/
   ("ProjDeptID" NUMBER(6,0) NOT NULL ENABLE,  																	/*Create the column with Attribute*/
	"ProjDeptName" VARCHAR2(30) NOT NULL ENABLE, 																/*Create the column with Attribute*/ 
	"OfficeLocation" VARCHAR2(12) NOT NULL ENABLE, 																/*Create the column with Attribute*/ 
	"PhoneNumber" NUMBER(10)  NOT NULL ENABLE																	/*Create the column with Attribute*/
   )

/

-- Creates second of 4 tables
CREATE TABLE  "Employee"  																						/*Create the table*/
   ("EmployeeID" NUMBER(4,0) NOT NULL ENABLE,  																	/*Create the column with Attribute*/
	"FirstName" VARCHAR2(30) NOT NULL ENABLE, 																	/*Create the column with Attribute*/ 
	"LastName" VARCHAR2(30) NOT NULL ENABLE,  																	/*Create the column with Attribute*/
	"ProjDeptID" NUMBER(6,0) NOT NULL ENABLE, 																	/*Create the column with Attribute*/
	"PhoneNumber" NUMBER(10) 																					/*Create the column with Attribute*/
   )

/      

-- Creates third of 4 tables
CREATE TABLE  "Project"  																						/*Create the table*/
   ("ProjectID" NUMBER(4,0) NOT NULL ENABLE,  																	/*Create the column with Attribute*/
	"ProjectName" VARCHAR2(30) NOT NULL ENABLE, 																/*Create the column with Attribute*/ 
	"ProjDeptID" NUMBER(6,0) NOT NULL ENABLE, 																	/*Create the column with Attribute*/ 
	"MaxHours" NUMBER(6,0) NOT NULL ENABLE, 																	/*Create the column with Attribute*/
	"StartDate" DATE, 																							/*Create the column with Attribute*/
	"EndDate" DATE 																								/*Create the column with Attribute*/
   )

/   

-- Creates fourth of 4 tables
CREATE TABLE  "ProjectTask"  																					/*Create the table*/
   ("ProjectID" NUMBER(4,0)  NOT NULL ENABLE,  																	/*Create the column with Attribute*/
	"EmployeeID" NUMBER(4,0) NOT NULL ENABLE, 																	/*Create the column with Attribute*/ 
	"TaskDetails" VARCHAR2(30),																					/*Create the column with Attribute*/
	"HoursWorked" NUMBER(4,0)																					/*Create the column with Attribute*/
   )

/  