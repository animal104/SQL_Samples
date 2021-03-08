/*
Mickey Saine
DBMS 110 - M05B Lab Assignment: Populating the Database 
3/6/2021
M07_SaineMichael_Functions.sql
This script is designed to create a view
*/

/*
4.   5.	Create an SQL view called ParentInfoView to display the 
names of the parents for each student in the Academic Database.
*/
Create view ParentInfoView AS
Select FIRST_NAME, FATHER_NAME, MOTHER_NAME
from STUDENT, PARENT_INFORMATION
Where STUDENT.PARENT_ID = PARENT_INFORMATION.PARENT_ID;

Select * from ParentInfoView;
