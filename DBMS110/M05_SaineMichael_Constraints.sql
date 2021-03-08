/*
Mickey Saine
DBMS 110 - M05A Lab Assignment: Realizing the Database Design
2/15/2021
M05_SaineMichael_Constraints.sql
This will add constraints which will bound my tables to my iron will!
*/

-- Alters the Table to create a primary Key 
ALTER TABLE "ProjDept"																							/*alter the table*/
ADD CONSTRAINT ProjDeptID_PK PRIMARY KEY ("ProjDeptID")															/*add Primary key*/
/

-- Alters the Table to create a primary Key 
ALTER TABLE "Employee"																							/*alter the table*/
ADD CONSTRAINT EmployeeID_PK PRIMARY KEY ("EmployeeID")															/*add Primary key*/
USING INDEX  ENABLE
/

-- Alters the Table to create a primary Key 
ALTER TABLE "Project"																							/*alter the table*/
ADD CONSTRAINT ProjectID_PK PRIMARY KEY ("ProjectID")															/*add Primary key*/
/

-- Alters the Table to create a foreign Key 
ALTER TABLE  "Employee" ADD CONSTRAINT "ProjDeptID_FK" FOREIGN KEY ("ProjDeptID")								/*alter the table*/	
	  REFERENCES  "ProjDept" ("ProjDeptID") ENABLE																/*add Foreign key*/	
/

-- Alters the Table to create a foreign Key 	  
ALTER TABLE  "Project" ADD CONSTRAINT "PROJDEPTID_FK" FOREIGN KEY ("ProjDeptID")								/*alter the table*/	
	  REFERENCES  "ProjDept" ("ProjDeptID") ENABLE																/*add Foreign key*/	
/

-- Alters the Table to create a foreign Key 	
ALTER TABLE  "ProjectTask" ADD CONSTRAINT "EmployeeID_FK" FOREIGN KEY ("EmployeeID")							/*alter the table*/	
	  REFERENCES  "Employee" ("EmployeeID") ENABLE																/*add Foreign key*/	
/

-- Alters the Table to create a foreign Key 	  
ALTER TABLE  "ProjectTask" ADD CONSTRAINT "ProjectID_FK" FOREIGN KEY ("ProjectID")								/*alter the table*/	
	  REFERENCES  "Project" ("ProjectID") ENABLE																/*add Foreign key*/
/
