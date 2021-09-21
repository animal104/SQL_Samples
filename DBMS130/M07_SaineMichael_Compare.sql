/*
Mickey Saine
DBMS 130 - M07 Hands-On Assignment - Limiting Data Using Comparison Operators 
3/6/2021
M07_SaineMichael_Compare.sql
This script is designed to use the function syntax to answer a series of questions
*/

/*
1. The manager of DJ's on Demand would like a query of all the CD titles and years of CD's that were produced before the year 2000.
*/ 
SELECT title, year
FROM d_cds 
WHERE year < 2000;

/*
2. Write a query to a list of all the DJ's on Demand CD titles that have “a” as the second letter in the title. 
*/ 
SELECT title
FROM d_cds 
WHERE title LIKE '_a%';

/*
3. Using only the less than, equal, or greater than operators, rewrite the following query:
*/ 

SELECT code, low_range, high_range
FROM d_packages
WHERE low_range >=2501 AND LOW_RANGE <= 10000;

/*
4. Write a query to find out which venues DJ's on Demand is scheduled to have events that are NOT in private homes.
*/
SELECT loc_type, comments
FROM d_venues
WHERE loc_type != 'Private Home';

/*
5. Write a query to find out what play list item does does not have any comments.

I choose to not use NULL, because NULL is not TECHNICALLY the same as not having any comments, 
BUT it's a moot point, because all the listed tracks DO have comments.
*/
SELECT *
FROM D_PLAY_LIST_ITEMS
WHERE COMMENTS = ' ';

/*
6. Using only the between operator, rewrite the following query
*/
SELECT title
FROM d_cds 
WHERE year BETWEEN 1998 AND 2000;


/*
7. Write a query to a list of all the DJ's on Demand CD title and producer name that were produced in either the year 2000 or 2004.
*/
SELECT TITLE, PRODUCER 
FROM d_cds 
WHERE YEAR = 2000 OR YEAR = 2004;


/*
8. The manager of DJ's on Demand would like to know the partners (first name, last name) who do NOT have an authorized expense amount, order the output by first name.
*/
SELECT FIRST_NAME, LAST_NAME 
FROM D_PARTNERS
WHERE AUTH_EXPENSE_AMT IS NULL
ORDER BY FIRST_NAME;






