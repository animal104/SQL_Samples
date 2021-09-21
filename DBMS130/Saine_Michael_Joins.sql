/*
Mickey Saine
M10 Hands-On Assignment - Retrieving Data From Multiple Tables Using Joins
4/4/2021
Saine_Michael_Joins.sql
You have been contracted by a small company named DJ's on Demand to create a database for storing information on their jobs, event venues, partners, clients, and music catalog. 
*/

/*
Create a Cross join that displays the columns in the d_play_list_items and the d_track_listings in the DJ's on Demand database.
*/

SELECT *
FROM d_play_list_items
CROSS JOIN d_track_listings;


/*
Correct the Cross join produced in question 1 by creating an equijoin using a common column.
*/

SELECT *
FROM d_play_list_items, d_track_listings
WHERE d_play_list_items.SONG_ID = d_track_listings.SONG_ID;


/*
Write a query to display the description, type, and artist from the DJ's on Demand database.
*/

SELECT   d_types.description, d_songs.type_code, d_songs.artist
FROM d_songs, d_types
WHERE d_songs.type_code = d_types.code;

/*
Rewrite the query in question 3 to select only those titles with an ID of 45 or 49.
*/

SELECT   d_types.description, d_songs.type_code, d_songs.artist
FROM d_songs, d_types
WHERE d_songs.type_code = d_types.code AND d_songs.id in (45, 49);



/*
Create and execute an equijoin between DJ's on Demand tables d_track_listings and d_cds. Return the song_id and the track, the Producer only. Order the output by song_id.
*/

SELECT d_track_listings.song_id, d_track_listings.track, d_cds.producer
FROM d_track_listings, d_cds
WHERE d_track_listings.cd_number = d_cds.cd_number
ORDER by d_track_listings.song_id;


/*
Write a query to join DJ's on Demand d_play_list_items, d_track_listings, and d_cds tables with the JOIN USING syntax. Include the song ID, title, and comments in the output.
*/

SELECT song_id, title, comments
FROM  d_play_list_items p JOIN d_track_listings t
USING (song_id) JOIN d_cds using (cd_number);


/*
Write a query of the DJ's on Demand database to return the first name, last name, PackageCode, and description of the event the client held. Include all the clients even if they have not had an event scheduled.
*/

SELECT first_name, last_name, package_code, description
from d_events, d_clients 
WHERE d_events.client_number = d_clients.client_number(+);		


/*
Write a query in the DJ's on Demand database that extracts information from these tables: d_clients table, d_events table, and d_job_assignments. Your query should return the client name, event description, and job date. Order the output by event name.
*/

SELECT CONCAT(CONCAT(first_name, ' '),last_name) AS "Client Name", description, job_date AS "Job Date"
from d_clients, d_events, d_job_assignments
ORDER BY d_events.name;























