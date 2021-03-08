/*
Mickey Saine
DBMS 110 - M05B Lab Assignment: Populating the Database 
2/22/2021
M06_SaineMichael_Queries.sql
This script is designed to answer a series of questions concerning Queries
*/

/*
1.   Write a simple query to view the data inserted in Course table created for the Academic Database.
*/
SELECT *
FROM COURSE;

/*
2.   Write a query to retrieve the marks obtained by the student for each exam attempted.
*/
SELECT *
FROM EXAM_RESULT;

/*
3.   Display the department name and the HOD of the department from the Department table.
*/
SELECT DEPARTMENT_NAME || ' is headed by ' || HOD 
FROM DEPARTMENT;

/*
4.   Display the distinct Session ID from the Course table.
*/
SELECT SESSION_ID
FROM COURSE;

/*
5.   Display the course details for the Fall Session (Session ID 200).
*/
SELECT COURSE_NAME
FROM COURSE
WHERE SESSION_ID = '200' ;

/*
6.   Display the details of the students who have scored more than 91.
*/
SELECT STUDENT_ID
FROM EXAM_RESULT
WHERE GRADE > '91';

/*
7.   Display the course details for departments 20 and 30.
*/
SELECT COURSE_NAME
FROM COURSE
WHERE DEPARTMENT_ID BETWEEN '20' AND '30';


/*
8.   Display the details of students whose first name begins with the letter “J".
*/
SELECT FIRST_NAME
FROM STUDENT
WHERE FIRST_NAME like 'J%';

/*
9.   Display the details of students who have opted for courses 175 or 195.
*/
SELECT STUDENT_ID || ' has opted for ' || COURSE_ID 
FROM STUDENT_COURSE
WHERE COURSE_ID = '175' OR COURSE_ID = '195';

/*
10. Display the course details offered by department 30 for the SPRING Session (Session ID 100).
*/
SELECT COURSE_NAME
FROM COURSE
WHERE DEPARTMENT_ID = '30' AND SESSION_ID = '100';
