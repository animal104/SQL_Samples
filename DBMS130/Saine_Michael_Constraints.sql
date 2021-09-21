/*
Mickey Saine
DBMS 130 - M03 Hands-On Assignment - Constructing the Database
2/8/2021
*/

-- Creates first of 12 Primary Keys
ALTER TABLE "D_PLAY_LIST_ITEMS"																		/*alter the table*/								
ADD CONSTRAINT D_PLM_PK PRIMARY KEY (EVENT_ID, SONG_ID)												/*add primary key*/	
/

-- Creates second of 12 Primary Keys
ALTER TABLE "D_JOB_ASSIGNMENTS"																		/*alter the table*/	
ADD CONSTRAINT D_JAT_PK PRIMARY KEY (PARTNER_ID, EVENT_ID)											/*add primary key*/	
/

-- Creates third of 12 Primary Keys
ALTER TABLE "D_PARTNERS"																			/*alter the table*/	
ADD CONSTRAINT D_PTR_ID_PK PRIMARY KEY (ID)															/*add primary key*/	
/

-- Creates fourth of 12 Primary Keys
ALTER TABLE "D_SONGS"																				/*alter the table*/	
ADD CONSTRAINT D_SNG_ID_PK PRIMARY KEY (ID)															/*add primary key*/	
/

-- Creates fifth of 12 Primary Keys
ALTER TABLE "D_EVENTS"																				/*alter the table*/	
ADD CONSTRAINT D_EVE_ID_PK PRIMARY KEY (ID)															/*add primary key*/	
/

-- Creates sixth of 12 Primary Keys
ALTER TABLE "D_THEMES"																				/*alter the table*/	
ADD CONSTRAINT D_TIME_CODE_PK PRIMARY KEY (CODE)													/*add primary key*/	
/

-- Creates seventh of 12 Primary Keys
ALTER TABLE "D_PACKAGES"																			/*alter the table*/	
ADD CONSTRAINT D_PKE_CODE_PK PRIMARY KEY (CODE)														/*add primary key*/	
/

-- Creates eighth of 12 Primary Keys
ALTER TABLE "D_TRACK_LISTINGS"																		/*alter the table*/	
ADD CONSTRAINT D_TLG_PK PRIMARY KEY (SONG_ID, CD_NUMBER)											/*add primary key*/	
/

-- Creates ninth of 12 Primary Keys
ALTER TABLE "D_TYPES"																				/*alter the table*/	
ADD CONSTRAINT D_TPE_CODE_PK PRIMARY KEY (CODE)														/*add primary key*/	
/

-- Creates tenth of 12 Primary Keys
ALTER TABLE "D_VENUES"																				/*alter the table*/	
ADD CONSTRAINT D_VNE_ID_PK PRIMARY KEY (ID)															/*add primary key*/	
/

-- Creates eleventh of 12 Primary Keys
ALTER TABLE "D_CLIENTS"																				/*alter the table*/	
ADD CONSTRAINT D_CLT_CLIENT_NUMBER_PK PRIMARY KEY (CLIENT_NUMBER)									/*add primary key*/	
/

-- Creates twelveth of 12 Primary Keys
ALTER TABLE "D_CDS"																					/*alter the table*/	
ADD CONSTRAINT D_CDS_CD_NUMBER_PK PRIMARY KEY (CD_NUMBER)											/*add primary key*/	
/


-- Creates first of 11 foreign Keys
ALTER TABLE  "D_PLAY_LIST_ITEMS" ADD CONSTRAINT "D_PLM_EVENT_ID_FK" FOREIGN KEY ("EVENT_ID")		/*alter the table*/	
	  REFERENCES  "D_EVENTS" ("ID") ENABLE															/*add Foreign key*/	
/

-- Creates second of 11 foreign Keys
ALTER TABLE  "D_PLAY_LIST_ITEMS" ADD CONSTRAINT "D_PLM_SONG_ID_FK" FOREIGN KEY ("SONG_ID")			/*alter the table*/	
	  REFERENCES  "D_SONGS" ("ID") ENABLE															/*add Foreign key*/
/

-- Creates third of 11 foreign Keys
ALTER TABLE  "D_JOB_ASSIGNMENTS" ADD CONSTRAINT "D_JAT_EVENT_ID_FK" FOREIGN KEY ("EVENT_ID")		/*alter the table*/	
	  REFERENCES  "D_EVENTS" ("ID") ENABLE															/*add Foreign key*/
/

-- Creates fourth of 11 foreign Keys
ALTER TABLE  "D_JOB_ASSIGNMENTS" ADD CONSTRAINT "D_JAT_PARTNER_ID_FK" FOREIGN KEY ("PARTNER_ID")	/*alter the table*/	
	  REFERENCES  "D_PARTNERS" ("ID") ENABLE														/*add Foreign key*/
/

-- Creates fifth of 11 foreign Keys
ALTER TABLE  "D_EVENTS" ADD CONSTRAINT "D_EVE_CLIENT_NUMBER_FK" FOREIGN KEY ("CLIENT_NUMBER")		/*alter the table*/	
	  REFERENCES  "D_CLIENTS" ("CLIENT_NUMBER") ENABLE												/*add Foreign key*/
/

-- Creates sixth of 11 foreign Keys
ALTER TABLE  "D_EVENTS" ADD CONSTRAINT "D_EVE_PACKAGE_CODE_FK" FOREIGN KEY ("PACKAGE_CODE")			/*alter the table*/	
	  REFERENCES  "D_PACKAGES" ("CODE") ENABLE														/*add Foreign key*/
/

-- Creates seventh of 11 foreign Keys
ALTER TABLE  "D_EVENTS" ADD CONSTRAINT "D_EVE_THEME_CODE_FK" FOREIGN KEY ("THEME_CODE")				/*alter the table*/	

	  REFERENCES  "D_THEMES" ("CODE") ENABLE														/*add Foreign key*/
/

-- Creates eighth of 11 foreign Keys
ALTER TABLE  "D_EVENTS" ADD CONSTRAINT "D_EVE_VENUE_ID_FK" FOREIGN KEY ("VENUE_ID")					/*alter the table*/	
	  REFERENCES  "D_VENUES" ("ID") ENABLE															/*add Foreign key*/
/

-- Creates ninth of 11 foreign Keys
ALTER TABLE  "D_SONGS" ADD CONSTRAINT "D_SNG_TYPE_CODE_FK" FOREIGN KEY ("TYPE_CODE")				/*alter the table*/	
	  REFERENCES  "D_TYPES" ("CODE") ENABLE															/*add Foreign key*/
/

-- Creates tenth of 11 foreign Keys
ALTER TABLE  "D_TRACK_LISTINGS" ADD CONSTRAINT "D_TLG_CD_NUMBER_FK" FOREIGN KEY ("CD_NUMBER")		/*alter the table*/	
	  REFERENCES  "D_CDS" ("CD_NUMBER") ENABLE														/*add Foreign key*/
/

-- Creates eleventh of 11 foreign Keys
ALTER TABLE  "D_TRACK_LISTINGS" ADD CONSTRAINT "D_TLG_SONG_ID_FK" FOREIGN KEY ("SONG_ID")			/*alter the table*/	
	  REFERENCES  "D_SONGS" ("ID") ENABLE															/*add Foreign key*/
/
