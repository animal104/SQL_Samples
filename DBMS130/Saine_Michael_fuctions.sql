/*
Mickey Saine
M09 Hands-On Assignment - Numeric and Character Manipulation Using Functions
3/29/2021
Saine_Michael_Functions.sql
A script to rock some Numberic and Character Manipulations!
*/

/*
Write a query that will show the lowest cost of the DJ's on Demand events. Round to two decimal places.
*/
SELECT ROUND(MIN (COST))  
FROM D_EVENTS;

/*
Write a query to display the number of months between the event_date of EVENT_ID 125 and today’s date in the DJ's on Demand database. Round to the nearest month.
*/

SELECT ROUND(MONTHS_BETWEEN (SYSDATE, EVENT_DATE)) AS MONTHS_BETWEEN
FROM D_EVENTS
WHERE ID = 125;

/*
Write a query that will display the DJ's on Demand CD titles for CD_NUMBER 93 and 95 in UPPERCASE in a column aliased as “Demand Collections.”
*/
SELECT CD_NUMBER AS "Demand Collections" 
FROM D_TRACK_LISTINGS 
WHERE CD_NUMBER = '93' OR CD_NUMBER = '95';

/*
Write a query to create usernames for the DJ's on Demand partners. The usernames will be the lowercase first letter in the first name + the lowercase last name. Alias the column as "Name." For example, Mary Smythers would be msmythers.
*/

SELECT LOWER(last_name)|| LOWER(SUBSTR(first_name,1,1)) AS "User Name"
FROM D_PARTNERS;


/*
Write a query that will show the total cost of the DJ's on Demand events.
*/

SELECT SUM(COST) FROM D_EVENTS;

/*
Using a DECODE and the DJ's on Demand D_SONGS table, create a query that replaces the 2-minute songs with “shortest” and the 10-minute songs with “longest”. Label the output column.
*/
UPDATE D_SONGS
SET DURATION='SHORTEST'
WHERE DURATION ='2-minute songs';

UPDATE D_SONGS
SET DURATION='LARGEST'
WHERE DURATION ='10-minute songs';

/*
For all null values in the specialty column in the DJ's on Demand d_partners table, write a query to substitute “No Specialty Available.” Show the first name and specialty columns only.
*/

SELECT FIRST_NAME, coalesce(SPECIALTY, 'No Specialty Available') 
AS RESULT
FROM D_PARTNERS
WHERE SPECIALTY IS NULL;

/*
Write a query that will format the DJ's on Demand d_packages columns, low-range, and high-range package costs, in the format $4400.00.
*/
SELECT TO_CHAR(LOW_RANGE,'L99G999D99MI') as LOW_RANGE, TO_CHAR(HIGH_RANGE,'L99G999D99MI') as HIGH_RANGE
FROM D_PACKAGES;

