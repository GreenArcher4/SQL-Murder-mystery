--Step 2 of investigations
-- look at interview transcripts
--1. Annabel Miller	16371
SELECT * FROM interview
WHERE person_id= 16371

/* 
I saw the murder happen, and I recognized the killer from my gym when
I was working out last week on January the 9th.*/

--2. Morty Schapiro	14887
SELECT * FROM interview
WHERE person_id= 14887

/*
I heard a gunshot and then saw a man run out.
He had a "Get Fit Now Gym" bag. 
The membership number on the bag started with "48Z". 
Only gold members have those bags. 
The man got into a car with a plate that included "H42W".
*/


--view transcript from suspect: JOE
SELECT * FROM interview
WHERE person_id= 28819
--no transcript

--view transcript from suspect:Jeremy
SELECT * FROM interview
WHERE person_id= 67318

