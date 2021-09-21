/*
Mickey Saine
M10 Hands-On Assignment - Retrieving Data From Multiple Tables Using Joins
4/4/2021
Saine_Michael_Subqueries.sql 
A demonstration of the vast universal power of Joins 
*/

/*Write a SQL statement using a subquery that returns the DJ's on Demand d_play_list_items song_id’s that have the same event_id as song_id 45.*/

SELECT SONG_ID
FROM D_PLAY_LIST_ITEMS
WHERE EVENT_ID IN(SELECT EVENT_ID FROM d_play_list_items where song_id = 45);

/*Write a SQL statement using a subquery and a quantified comparison predicate that returns the distinct event names that cost more than event_id = 110. Order the results by event name.*/
SELECT NAME
FROM D_EVENTS
WHERE COST>(SELECT cost FROM d_events WHERE id = 110)
GROUP by NAME
ORDER by NAME;

/*Write a SQL statement using a subquery to find the track number of the song that has the same CD number as “Graduation Songbook.”*/

SELECT TRACK
FROM D_TRACK_LISTINGS
WHERE CD_NUMBER = (SELECT CD_NUMBER FROM D_CDS WHERE title = 'Graduation Songbook');

/*Write a SQL statement using a subquery to list the events whose theme code is the same as the code for “Tropical”.*/
SELECT id, name
FROM d_events
WHERE theme_code = (SELECT code FROM d_themes WHERE description = 'Tropical');

/*Write a SQL statement using a subquery to list the event names that have the same theme code as event ID 120. Order the output by event name.*/
SELECT NAME
FROM D_EVENTS
WHERE THEME_CODE = (SELECT THEME_CODE FROM D_EVENTS WHERE ID = 120)
ORDER BY NAME;

/*Write a SQL statement that returns Reggae and pop songs using a multi-row subquery and use the d_songs and d_types tables. Include the id, title, duration, and artist name.*/
SELECT ID, TITLE, DURATION, ARTIST
FROM D_SONGS
WHERE TYPE_CODE IN (select CODE FROM D_TYPES WHERE DESCRIPTION in('Reggae', 'pop'));


/*Write a SQL statement using a subquery and a quantified comparison predicate that returns the names of the partners whose authorized expense amount is 
greater than or equal to the partner whose ID is 200.*/
SELECT FIRST_NAME, LAST_NAME
FROM D_PARTNERS
WHERE AUTH_EXPENSE_AMT >= (SELECT AUTH_EXPENSE_AMT from D_PARTNERS WHERE ID = 200);

/*Write a SQL statement using two subqueries to list the event name that has the same theme code as event ID 110 and is being hosted at the venue with ID 220.*/
SELECT NAME
FROM D_EVENTS
WHERE THEME_CODE IN ( SELECT THEME_CODE FROM D_EVENTS where ID =110) and VENUE_ID = 220;