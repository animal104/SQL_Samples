/*
Mickey Saine
M14 Hands-On Assignment - Transaction Processing and Query Optimization
5/3/2021
Saine_Michael_QueryOptimization.sql 
An answering of questions concerning Transaction processing and Query Optimizations
*/


/*Write a SQL statement to create a non-unique index for the DJ's on Demand database column (Track) in the D_TRACK_LISTINGS table.*/
CREATE INDEX TRACK_IDX
ON D_TRACK_LISTINGS(TRACK);

/*Write a SQL statement to create a unique index for the DJ's on Demand database column (email) in the D_CLIENTS table*/
CREATE INDEX EMAIL_IDX
ON D_CLIENTS(EMAIL);

/*Write a SQL statement to create a non-unique index for the DJ's on Demand database columns (title, duration) in the D_SONGS table*/
CREATE INDEX TITLE_DURATION_IDX
ON D_SONGS(TITLE, DURATION);

/*Write a SQL statement for the DJ's on Demand database D_SONGS table that deletes the song “All These Years,” 
inserts a new Country song called ‘Happy Birthday Sunshine’ by “The Sunsets” with a duration of 4 min and an ID = 60 */
SAVEPOINT A;
DELETE D_SONGS WHERE Title = 'All These Years' ;
INSERT INTO D_SONGS VALUES(60, 'Happy Birthday Sunshine', 4, 'The Sunsets', 'Country');

/*DJ's on Demand just purchased four new CD's. Create an insert statement for each record to be inserted.*/
SAVEPOINT B;
INSERT INTO D_CDS VALUES(101, 'Rock and Roll', 'Old Town Records', 2004);
INSERT INTO D_CDS VALUES(100, 'Party Music', 'Old Town Records', 2005);
INSERT INTO D_CDS VALUES(99, 'Holiday Tunes', 'Tunes are Us', 2006);
INSERT INTO D_CDS VALUES(97, 'Celebrate the Day',  'R and B Inc.', 2007);
COMMIT WORK;

/*Write a SQL statement to update the event name in the D_EVENTS table; change the event name to "Staff Training" where the event name is "Corporate Training".*/
SAVEPOINT C;
UPDATE D_EVENTS
SET NAME = "Staff Training"
WHERE NAME = "Corporate Training"
ROLLBACK to S3;

/*Using explain plan is a good way of learning how the database will execute any query and can also be used to find parts of the query that may need re-written.*/
/*D_EVENTS
D_VNE_ID_PK

/*Create and run your own explain plan script using a query from a previous assignment.
EXPLAIN PLAN 
EXPLAIN PLAN   
    SET STATEMENT_ID = 'myPlan2'  
    FOR  
    select *   
    from D_SONGS   
    WHERE ID =    
           (SELECT id FROM D_SONGS
               WHERE id = 48);  */