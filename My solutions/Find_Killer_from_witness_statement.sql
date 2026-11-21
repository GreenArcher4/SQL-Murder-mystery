--Joins to identify the killer
--1. Annabel Miller	16371
/* 
I saw the murder happen, and I recognized the killer from my gym when
I was working out last week on January the 9th.
*/

SELECT membership_id,check_in_date
FROM get_fit_now_check_in
WHERE check_in_date = '2018-01-09';
--2. Morty Schapiro	14887
/*
I heard a gunshot and then saw a man run out.
He had a "Get Fit Now Gym" bag. 
The membership number on the bag started with "48Z". 
Only gold members have those bags. 
The man got into a car with a plate that included "H42W".
*/

--get suspect  membership number
SELECT *
FROM get_fit_now_member
WHERE membership_status='gold' AND id LIKE '48Z__' ;

--join the two withness' info
SELECT
m.id,
m.person_id,
m.name,
m.membership_status,
c.membership_id,
c.check_in_date
FROM get_fit_now_member AS m
INNER JOIN get_fit_now_check_in AS c
ON m.id=c.membership_id
WHERE m.membership_status='gold' AND m.id LIKE '48Z__' AND c.check_in_date = '2018-01-09';



