/*
Mickey Saine
DBMS 110 - M05B Lab Assignment: Populating the Database 
2/22/2021
M06_SaineMichael_Joins.sql
This script is designed to answer a series of questions concerning Queries
*/

/*
Display the name of courses offered and the name of each department it is offered in.
*/
SELECT COURSE_NAME, DEPARTMENT_NAME
FROM COURSE JOIN DEPARTMENT
ON COURSE.DEPARTMENT_ID = DEPARTMENT.DEPARTMENT_ID;

/*
Display the name of courses offered in the Spring session.
*/
SELECT COURSE_NAME
FROM COURSE COU JOIN ACADEMIC_SESSION ACAD
ON COU.SESSION_ID = ACAD.SESSION_ID
WHERE SESSION_NAME = 'SPRING SESSION';

/*
Display the course details and students who have enrolled for those courses.
*/
SELECT COURSE_NAME, STUDENT_ID
FROM COURSE JOIN STUDENT_COURSE 
ON COURSE.COURSE_ID = STUDENT_COURSE.COURSE_ID
WHERE SESSION_ID = '100';

/*
Explain what output would be generated when the given statement is executed. Include your answers in a comment in your script.
*/

SELECT COURSE_NAME, GRADE, EXAM_ID
FROM COURSE d JOIN EXAM_RESULT a
ON a.COURSE_ID = a.COURSE_ID;

/*
This Query outputs an error code ORA-00920: invalid relational operator, because we have not added the other variable to show which key 
that it attaches too. Therefore, I fixed it by adding that in my script.

Explain what output would be generated when the given statement is executed. Include your answers in a comment in your script.
*/

SELECT *
FROM EXAM_RESULT
CROSS JOIN EXAM_TYPE;

/*
This Query outputs all of the rows (184 rows to be exact) that are a cross join or Cartesian product from EXAM_TYPE and  EXAM_RESULT.
*/