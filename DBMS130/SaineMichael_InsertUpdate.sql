/*
Mickey Saine
M05 Hands-On Assignment - Inserting and Modifying Data
2/21/2021
SaineMichael_InsertUpdate.sql
This will further verify that I understood this week's homework from DBMS 110, which allows me to insert, update, and delete a series of Database Records
*/

-- Adds Tables into the D_CDS table
INSERT INTO "D_CDS" VALUES ('90', 'The Celebrants Live in Concert', 'Old Town Records', '1997');
INSERT INTO "D_CDS" VALUES ('91', '	Party Music for All Occasions', '	The Music Man', '2000');	
INSERT INTO "D_CDS" VALUES ('92', '	Back to the Shire', '	Middle Earth Records', '2002');	
INSERT INTO "D_CDS" VALUES ('93', 'Songs from My Childhood', 'Old Town Records', '1999');	
INSERT INTO "D_CDS" VALUES ('94', 'Carpe Diem', 'R & B Inc.', '2000');	
INSERT INTO "D_CDS" VALUES ('95', 'Here Comes the Bride', 'The Music Man', '2001');	
INSERT INTO "D_CDS" VALUES ('96', 'Graduation Songbook', 'Tunes Are Us', '1998');	
INSERT INTO "D_CDS" VALUES ('98', 'Whirled Peas', 'Old Town Records', '2004');	

--Statement to update the table as instructed
UPDATE "D_PARTNERS"
SET "EXPERTISE" = 'Promotional Events'
WHERE "ID" = 22;	

UPDATE "D_PARTNERS"
SET "SPECIALTY" = 'Corporate Events'
WHERE "ID" = 33;

UPDATE "D_PLAY_LIST_ITEMS"
SET "COMMENTS" = 'After Graduation'
WHERE "EVENT_ID" = 100 AND "SONG_ID" = 46;	

UPDATE "D_VENUES"
SET "RENTAL_FEE" = '325/per person'
WHERE "ID" = 22;	

UPDATE "D_THEMES"
SET "DESCRIPTION" = 'Tiki Lounge'
WHERE "CODE" = 660;	

--Statement to Delete Row as instructed in the work
DELETE FROM "D_CLIENTS" WHERE "CLIENT_NUMBER" = 9595;
