/*
Mickey Saine
DBMS 110 - M05B Lab Assignment: Populating the Database 
3/6/2021
M07_SaineMichael_Functions.sql
This script is designed to use the function syntax to answer a series of questions
*/

/*
1.   Display the number of students that had a grade of 60 or above. 
*/ 
SELECT COUNT(GRADE) || ' students scored 60 or above on their exam'
FROM EXAM_RESULT
WHERE GRADE > '59';

/*
2.   Display the highest exam score that Rhonda received.  
*/ 
SELECT 'The highest Score that Rhonda recieved was ' || MAX(GRADE) || '%'
from EXAM_RESULT
Where STUDENT_ID = '740';

/*
3.   Display the least number of days off. 
*/ 

SELECT MIN(No_Of_Days_Off) || ' was the least number of days off'
from STUDENT_ATTENDANCE;

/*
4.   Display the average exam grade for the ‘MARINE BIOLOGY’ course. 
*/
SELECT AVG(GRADE)  
from EXAM_RESULT
where COURSE_ID = '197';
