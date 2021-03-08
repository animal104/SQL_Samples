/*
Mickey Saine
DBMS 110 - M05B Lab Assignment: Populating the Database 
2/21/2021
M05B_SaineMichael_InsertInto.sql
This will cumulate in the realization of my dream to have a database populated that doesn't involve Jedi Survivors
*/

-- Adds Tables into the ProjDept table
INSERT INTO "ProjDept" VALUES ('1001', 'Accounting', 'ITCC01-400', 8882858100);	
INSERT INTO "ProjDept" VALUES ('2001', 'Human Resources', 'ITCC01-200', 8882858200);
INSERT INTO "ProjDept" VALUES ('3001', 'Marketing', 'ITCC01-300', 8882858300);	
INSERT INTO "ProjDept" VALUES ('4001', 'Information Technology', 'ITCC01-100', 8882858400);	

-- Adds Tables into the EmployeeID table
INSERT INTO "Employee" VALUES ('10', 'Mark', 'Columbus', '1001', '8882858101', 'mark@itcc.com');
INSERT INTO "Employee" VALUES ('29', 'Elvin', 'Wahl', '2001', '8882858201', 'elvin@itcc.com');
INSERT INTO "Employee" VALUES ('38', 'Taylor', 'Noel', '3001', '8882858303', 'taylor@itcc.com');
INSERT INTO "Employee" VALUES ('47', 'Ariel', 'Colby', '4001', '8882858401', 'ariel@itcc.com');

-- Adds Tables into the Project table
INSERT INTO "Project" VALUES ('901', 'Product Plan', '3001', '135', TO_DATE ('10-May-2012','DD-Mon-YYYY'), TO_DATE ('15-Sep-2012','DD-Mon-YYYY'));
INSERT INTO "Project" VALUES ('902', 'Tax Preparation', '1001', '120', TO_DATE ('05-Jul-2012','DD-Mon-YYYY'), TO_DATE ('15-Oct-2012','DD-Mon-YYYY'));
INSERT INTO "Project" VALUES ('903', 'Portfolio Analysis', '2001', '145', TO_DATE ('10-Aug-2012','DD-Mon-YYYY'), TO_DATE ('15-Nov-2012','DD-Mon-YYYY'));

-- Adds Tables into the PROJECTDEPT table
INSERT INTO "ProjectTask" VALUES ('901', '47', NULL, '30');
INSERT INTO "ProjectTask" VALUES ('901', '38', NULL, '55');
INSERT INTO "ProjectTask" VALUES('902', '10', NULL, '45');	
INSERT INTO "ProjectTask" VALUES('903', '29', NULL, '40');
