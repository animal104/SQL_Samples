/*
Mickey Saine
M14 Hands-On Assignment - Transaction Processing and Query Optimization
5/3/2021
Saine_Michael_Final.sql 
One final script to rule them all
*/

/*Create a view called TITLE_UNAVAIL to show the movie titles and media_id of the media not returned yet.*/
CREATE VIEW  TITLE_UNAVAIL AS 
SELECT TITLE, MEDIA_ID
FROM MOVIES, RENTAL_HISTORY
WHERE RETURN_DATE = NULL
WITH READ ONLY;

/*Create the following sequences to be used for primary key values*/
--CREATE SEQUENCE FOR CUSTOMER_ID
CREATE SEQUENCE CUSTOMER_SEQ
START WITH 101
INCREMENT BY 1
NOCACHE
NOCYCLE;

UPDATE CUSTOMERS
SET CUSTOMER_ID = CUSTOMER_SEQ.nextval

--CREATE SEQUENCE FOR TITLE_ID
CREATE SEQUENCE TITLE_SEQ
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

UPDATE MOVIES
SET TITLE_ID = TITLE_SEQ.nextval

--CREATE SEQUENCE FOR MEDIA_ID
CREATE SEQUENCE MEDIA_SEQ
START WITH     1001
INCREMENT BY   1
NOCACHE
NOCYCLE;

UPDATE MEDIA
   SET MEDIA_ID = MEDIA_SEQ.nextval

--CREATE SEQUENCE FOR ACTOR_ID
CREATE SEQUENCE ACTOR_SEQ
START WITH     1001
INCREMENT BY   1
NOCACHE
NOCYCLE;

UPDATE ACTOR
SET ACTOR_ID = ACTOR_SEQ.nextval



/*Create records in your tables. You can use the file, OracleFlix_SQL_Project_Tables.pdf as a guide to loading data in your tables.*/
-- INSERTING ROWS IN THE CUSTOMERS TABLE
INSERT INTO CUSTOMERS VALUES (108, 'YODA', 'NA', '710-270-2669', '123 MAIN ST.', 'DAGOBAH', 'DH', 'YODA@JEDIACEDEMY.EDU', 716-555-2212);
INSERT INTO CUSTOMERS VALUES (109, 'TANO', 'AHSOKA', '710-270-2669', '123 MAIN ST', 'SHILI', 'SH', 'AHSOKA.TANO@JEDIACEDEMY.EDU', 716-555-2213);
INSERT INTO CUSTOMERS VALUES (110, 'SOLO', 'HAN', '710-270-2669', '1 MILLINUM FALCON', 'COURASANT', 'CT', 'HSOLO@GMAIL.COM', 716-555-2214);
INSERT INTO CUSTOMERS VALUES (111, 'SKYWALKER', 'LUKE', '710-270-2669', '1 REBEL ALLIANCE WAY', 'TATOOINE', 'TA', 'LUKESKYWALKER@PROTONMAIL.EDU', 716-555-2215);
INSERT INTO CUSTOMERS VALUES (112, 'SKYWALKER', 'ANAKIN', '710-270-2669', '123 MAIN ST ', 'TATOOINE', 'BC', 'DARTH.VADER@JEDIACEDEMY.EDU', 716-555-2216);
INSERT INTO CUSTOMERS VALUES (113, 'MARA', 'JADE', '710-270-2669', '1 SENATE COUNCIL ', 'COURASANT', 'CA', 'MJADE@EMPIRE.EDU', 716-555-2217);
INSERT INTO CUSTOMERS VALUES (114, 'ORGANA', 'LEIA', '710-270-2669', '1 REBEL ALLINACE WAY ', 'ALDERANN', 'AN', 'LEIA.ORGANA@REBELSCUM.COM', 716-555-2217);

-- INSERTING ROWS IN THE MOVIES TABLE
INSERT INTO MOVIES VALUES (8, 'Tales from the Crypt Demon Knight', 'A man on the run is hunted by a demon known as the Collector.', 'R', 'SCIFI', TO_DATE('13-Jan-1995','DD-Mon-YYYY'));
INSERT INTO MOVIES VALUES (9, 'Ready Player One', 'When the creator of a virtual reality called the OASIS dies, he makes a posthumous challenge to all OASIS users to find his Easter Egg, which will give the finder his fortune and control of his world.', 'PG-13', 'SCIFI', TO_DATE('29-Mar-2018','DD-Mon-YYYY'));
INSERT INTO MOVIES VALUES (10, 'Ex Machina', 'A young programmer is selected to participate in a ground-breaking experiment in synthetic intelligence by evaluating the human qualities of a highly advanced humanoid A.I.', 'R', 'SCIFI', TO_DATE('24-Apr-2015','DD-Mon-YYYY'));
INSERT INTO MOVIES VALUES (11, 'The Lorax', 'A ruined industrialist tells his tale of his environmentally self-destructive greed despite the warnings of an old forest creature.', 'G', 'DRAMA', TO_DATE('14-Feb-1972','DD-Mon-YYYY'));
INSERT INTO MOVIES VALUES (12, 'The Crow', 'A man brutally murdered comes back to life as an undead avenger of his and his fiancée\'s murder.', 'R', 'DRAMA', TO_DATE('13-May-1994','DD-Mon-YYYY'));
INSERT INTO MOVIES VALUES (13, 'Her', 'In a near future, a lonely writer develops an unlikely relationship with an operating system designed to meet his every need.', 'R', 'SCIFI', TO_DATE('03-Jun-2014','DD-Mon-YYYY'));
INSERT INTO MOVIES VALUES (14, 'Rogue One A Star Wars Story', 'The daughter of an Imperial scientist joins the Rebel Alliance in a risky move to steal the plans for the Death Star.', 'PG-13', 'SCIFI', TO_DATE('16-Dec-1977','DD-Mon-YYYY'));

-- INSERTING ROWS IN THE MEDIA TABLE
INSERT INTO MEDIA VALUES (106, 'DVD', 8);
INSERT INTO MEDIA VALUES (107, 'VHS', 8);
INSERT INTO MEDIA VALUES (108, 'DVD', 9);
INSERT INTO MEDIA VALUES (109, 'VHS', 9);
INSERT INTO MEDIA VALUES (110, 'DVD', 10);
INSERT INTO MEDIA VALUES (111, 'VHS', 10);
INSERT INTO MEDIA VALUES (112, 'DVD', 11);
INSERT INTO MEDIA VALUES (113, 'VHS', 11);
INSERT INTO MEDIA VALUES (114, 'DVD', 12);
INSERT INTO MEDIA VALUES (115, 'BET', 12);
INSERT INTO MEDIA VALUES (116, 'DVD', 13);
INSERT INTO MEDIA VALUES (117, 'BET', 13);
INSERT INTO MEDIA VALUES (118, 'DVD', 14);
INSERT INTO MEDIA VALUES (119, 'BLR', 14);

/*Create an index on the last_name column of the Customers table.*/
/*Write a SQL statement to create a unique index for the DJ's on Demand database column (email) in the D_CLIENTS table*/
CREATE INDEX LASTNAME_IDX
ON CUSTOMERS(LAST_NAME);

/*Create a synonym called TU for the TITLE_UNAVAIL view*/
CREATE SYNONYM TU 
FOR sys.TITLE_UNAVAIL;