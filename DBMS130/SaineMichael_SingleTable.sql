/*
Mickey Saine
DBMS 130 - M05B Lab Assignment: Populating the Database 
2/22/2021
SaineMichael_SingleTable.sql
This script is designed to answer a series of questions concerning Queries
*/

/*
1.   The owners of DJ's on Demand would like a query that returns of all items in their D_CDs table with the following column headings:
	Inventory Item, CD Title, Music Producer, and Year Purchased
*/
SELECT cd_number as "Inventory Item", title as "CD Title", producer as "Music Producer", year as "Year Purchased"
FROM d_cds;

/*
2.   Write a query to return the title of the oldest recording in the D_CDS table. Your query should return only 1 row.
*/
SELECT TITLE
FROM d_cds
ORDER BY YEAR
FETCH FIRST ROW ONLY;

/*
3.   Write a query to return the producer information from the D_CDS table for the CD titled "Carpe Diem".
*/
SELECT PRODUCER
FROM D_CDS
WHERE TITLE = 'Carpe Diem';

/*
4.   The manager of DJ's on Demand would like a query of all the CD titles and years of CD's that were produced by "Old Town Records".
*/
SELECT TITLE, YEAR
FROM D_CDS
WHERE PRODUCER = 'Old Town Records';

/*
5.   Write a query that will list the titles and years of all the DJ's on Demand's CD's that were NOT produced in the year 2000.
*/
SELECT TITLE, YEAR
FROM D_CDS
WHERE YEAR NOT LIKE '2%';

/*
6.   Write a query to display the location type and comments for all DJ's on Demand venues that are "Private Home".
*/
SELECT LOC_TYPE, COMMENTS
FROM D_VENUES
WHERE LOC_TYPE = 'Private Home';

/*
7.  Write a query to a list of all information for DJ's On Demand track listings for CD Number 91.
*/
SELECT *
FROM D_TRACK_LISTINGS
WHERE CD_NUMBER = '91';


/*
8.   The manager of DJ's on Demand would like a list of partners (first name, last name), order the output by last name.
*/
SELECT FIRST_NAME, LAST_NAME
FROM D_PARTNERS
ORDER BY LAST_NAME;

/*
9.   Write a query that lists the titles of songs in the DJ's on Demand inventory that are type code 77, 12, or 1; order by title.
*/
SELECT TITLE
FROM D_SONGS
WHERE TYPE_CODE = '77' OR TYPE_CODE = '12' OR TYPE_CODE = '1'
ORDER BY TITLE;

/*
10. Write a query that will return all the DJ's on Demand CD information (title, year) ordered by year and title.
*/
SELECT TITLE, YEAR
FROM D_CDS
ORDER BY YEAR, TITLE;

/*
11. Write a query to list the DJ's on Demand songs ordered (descending) by title. Use the alias "Our Collection" for the song title.
*/
SELECT TITLE as "Our Collection"
FROM D_CDS
ORDER BY TITLE DESC;

/*
12. Write a query to return a DISTINCT list of producers for the CD's DJ's on Demand has in their collection.
*/
SELECT DISTINCT PRODUCER
FROM D_CDS;

