/*
Mickey Saine
DBMS 130 - M03 Hands-On Assignment - Constructing the Database
2/8/2021
*/

-- Creates first of 12 tables
CREATE TABLE  "D_PLAY_LIST_ITEMS" 										/*Create the table*/
("EVENT_ID" NUMBER(5) NOT NULL ENABLE, 									/*Create the column with Attribute*/
"SONG_ID" NUMBER(5) NOT NULL ENABLE,  									/*Create the column with Attribute*/
"COMMENTS" VARCHAR2(80),  												/*Create the column with Attribute*/
CONSTRAINT "D_PLM_PK" PRIMARY KEY ("EVENT_ID", "SONG_ID")				/*sets the constraint for the Primary Key*/
USING INDEX  ENABLE)													/*Allow indexing*/
/

-- Creates second of 12 tables   
CREATE TABLE  "D_JOB_ASSIGNMENTS"  										/*Create the table*/
("PARTNER_ID" NUMBER(5) NOT NULL ENABLE,  								/*Create the column with Attribute*/
"EVENT_ID" NUMBER(5) NOT NULL ENABLE,  									/*Create the column with Attribute*/
"JOB_DATE" DATE NOT NULL ENABLE,  										/*Create the column with Attribute*/
"STATUS" VARCHAR2(50),  												/*Create the column with Attribute*/
CONSTRAINT "D_JAT_PK" PRIMARY KEY ("PARTNER_ID", "EVENT_ID")
USING INDEX  ENABLE)													/*Allow indexing*/
/

 -- Creates third of 12 tables  
CREATE TABLE "D_PARTNERS" 												/*Create the table*/
("ID" NUMBER (5) NOT NULL ENABLE, 										/*Create the column with Attribute*/
"FIRST_NAME" VARCHAR2 (25) NOT NULL ENABLE, 							/*Create the column with Attribute*/
"LAST_NAME" VARCHAR2 (30) NOT NULL ENABLE,  							/*Create the column with Attribute*/
"EXPERTISE" VARCHAR2 (25), 												/*Create the column with Attribute*/
"SPECIALTY" VARCHAR2(25), 												/*Create the column with Attribute*/
"AUTH_EXPENSE_AMT" NUMBER (8,2), 										/*Create the column with Attribute*/
"MANAGER_ID" NUMBER (5),  												/*Create the column with Attribute*/
"PARTNER_TYPE" VARCHAR2 (25) NOT NULL ENABLE,  							/*Create the column with Attribute*/
CONSTRAINT "D_PTR_ID_PK" PRIMARY KEY ("ID")								/*Set Primary Key with Column and Name*/
USING INDEX ENABLE)														/*Allow indexing*/
/

-- Creates fourth of 12 tables
CREATE TABLE "D_SONGS" 													/*Create the table*/
("ID" NUMBER (5) NOT NULL ENABLE, 										/*Create the column with Attribute*/
"TITLE" VARCHAR2 (50) NOT NULL ENABLE, 									/*Create the column with Attribute*/
"DURATION" VARCHAR2 (20), 												/*Create the column with Attribute*/
"ARTIST" VARCHAR2 (20), 												/*Create the column with Attribute*/
"TYPE_CODE" NUMBER (10) NOT NULL ENABLE, 								/*Create the column with Attribute*/
CONSTRAINT "D_SNG_ID_PK" PRIMARY KEY ("ID")								/*Set Primary Key with Column and Name*/
USING INDEX ENABLE														/*Allow indexing*/
)
/   

-- Creates fifth of 12 tables
CREATE TABLE "D_EVENTS" 												/*Create the table*/
("ID" NUMBER (5) NOT NULL ENABLE, 										/*Create the column with Attribute*/
"NAME" VARCHAR2 (50) NOT NULL ENABLE, 									/*Create the column with Attribute*/
"EVENT_DATE" DATE NOT NULL ENABLE, 										/*Create the column with Attribute*/
"DESCRIPTION" VARCHAR2(50), 											/*Create the column with Attribute*/
"COST" NUMBER(8,2) NOT NULL ENABLE, 									/*Create the column with Attribute*/
"VENUE_ID" NUMBER(5) NOT NULL ENABLE, 									/*Create the column with Attribute*/
"PACKAGE_CODE" NUMBER (10) NOT NULL ENABLE, 							/*Create the column with Attribute*/
"THEME_CODE" NUMBER (10) NOT NULL ENABLE, 								/*Create the column with Attribute*/
"CLIENT_NUMBER" NUMBER (5) NOT NULL ENABLE, 							/*Create the column with Attribute*/
CONSTRAINT "D_EVEN_ID_PK" PRIMARY KEY ("ID")							/*Set Primary Key with Column and Name*/
USING INDEX ENABLE)														/*Allow indexing*/
/

-- Creates sixth of 12 tables
CREATE TABLE "D_THEMES" 												/*Create the table*/
("CODE" NUMBER(10) NOT NULL ENABLE, 									/*Create the column with Attribute*/
"DESCRIPTION" VARCHAR2 (100) NOT NULL ENABLE, 							/*Create the column with Attribute*/
CONSTRAINT "D_TIME_CODE_PK" PRIMARY KEY ("CODE")						/*Set Primary Key with Column and Name*/
USING INDEX ENABLE)														/*Allow indexing*/
/

-- Creates seventh of 12 tables
CREATE TABLE "D_PACKAGES" 												/*Create the table*/
("CODE" NUMBER (10) NOT NULL ENABLE, 									/*Create the column with Attribute*/
"LOW_RANGE" NUMBER (6) NOT NULL ENABLE, 								/*Create the column with Attribute*/
"HIGH_RANGE" NUMBER (6) NOT NULL ENABLE, 								/*Create the column with Attribute*/
CONSTRAINT "D_PKE_CODE_PK" PRIMARY KEY ("CODE")							/*Set Primary Key with Column and Name*/
USING INDEX ENABLE)														/*Allow indexing*/
/

-- Creates eigth of 12 tables
CREATE TABLE "D_TRACK_lISTINGS" 										/*Create the table*/
("SONG_ID" NUMBER (5) NOT NULL ENABLE,  								/*Create the column with Attribute*/
"CD_NUMBER" NUMBER (5) NOT NULL ENABLE, 								/*Create the column with Attribute*/
"TRACK" NUMBER (2) NOT NULL ENABLE, 									/*Create the column with Attribute*/
CONSTRAINT "D_TLG_PK" PRIMARY KEY ("SONG_ID", "CD_NUMBER")				/*Set Primary Key with Column and Name*/
USING INDEX ENABLE)														/*Allow indexing*/
/

-- Creates ninth of 12 tables
CREATE TABLE "D_TYPES" 													/*Create the table*/
("CODE" NUMBER (10) NOT NULL ENABLE, 									/*Create the column with Attribute*/
"DESCRIPTION" VARCHAR (50),  											/*Create the column with Attribute*/
CONSTRAINT "D_TPE_CODE_PK" PRIMARY KEY ("CODE")							/*Set Primary Key with Column and Name*/
USING INDEX ENABLE)														/*Allow indexing*/
/

-- Creates tenth of 12 tables
CREATE TABLE "D_VENUES" 												/*Create the table*/
("ID" NUMBER (5) NOT NULL ENABLE, 										/*Create the column with Attribute*/
"LOC_TYPE" VARCHAR2 (30) NOT NULL ENABLE, 								/*Create the column with Attribute*/
"ADDRESS" VARCHAR2 (100) NOT NULL ENABLE, 								/*Create the column with Attribute*/
"RENTAL_FEE" VARCHAR2 (50) NOT NULL ENABLE, 							/*Create the column with Attribute*/
"COMMENTS" VARCHAR2 (100),  											/*Create the column with Attribute*/
CONSTRAINT "D_VNE_ID_PK" PRIMARY KEY ("ID")								/*Set Primary Key with Column and Name*/
USING INDEX ENABLE)														/*Allow indexing*/
/  

-- Creates eleventh of 12 tables
CREATE TABLE "D_CDS" 													/*Create the table*/
("CD_NUMBER" NUMBER (5) NOT NULL ENABLE, 								/*Create the column with Attribute*/
"TITLE" VARCHAR2 (50) NOT NULL ENABLE, 									/*Create the column with Attribute*/
"PRODUCER" VARCHAR2 (50) NOT NULL ENABLE, 								/*Create the column with Attribute*/
"YEAR" VARCHAR2 (4) NOT NULL ENABLE, 									/*Create the column with Attribute*/
CONSTRAINT "D_CDS_CD_NUMBER_PK" PRIMARY KEY ("CD_NUMBER")				/*Set Primary Key with Column and Name*/
USING INDEX ENABLE)														/*Allow indexing*/
/

-- Creates twelveth of 12 tables
CREATE TABLE "D_CLIENTS" 												/*Create the table*/
("CLIENT_NUMBER" NUMBER(5) NOT NULL ENABLE, 							/*Create the column with Attribute*/
"FIRST_NAME" VARCHAR2(25) NOT NULL ENABLE, 								/*Create the column with Attribute*/
"LAST_NAME" VARCHAR2 (30) NOT NULL ENABLE, 								/*Create the column with Attribute*/ 
"PHONE" NUMBER (15) NOT NULL ENABLE, 									/*Create the column with Attribute*/
"EMAIL" VARCHAR2 (50),  												/*Create the column with Attribute*/
CONSTRAINT "D_CLT_CLIENT_NUMBER_PK" PRIMARY KEY ("CLIENT_NUMBER")		/*Set Primary Key with Column and Name*/
USING INDEX ENABLE)														/*Allow indexing*/
/
