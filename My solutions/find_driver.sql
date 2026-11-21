--get car details of suspect
--2. Morty Schapiro	14887
/*
I heard a gunshot and then saw a man run out.
He had a "Get Fit Now Gym" bag. 
The membership number on the bag started with "48Z". 
Only gold members have those bags. 
The man got into a car with a plate that included "H42W".
*/

SELECT * FROM drivers_liscense
WHERE plate_number LIKE '%H42W%'

--view transcript from suspect:Jeremy
SELECT * FROM interview
WHERE person_id= 67318

/*
I was hired by a woman with a lot of money.
I don't know her name but I know she's around 5'5" (65") or 5'7" (67").
She has red hair and she drives a Tesla Model S. 
I know that she attended the SQL Symphony Concert 3 times in December 2017.  
*/

SELECT * FROM drivers_liscense
WHERE hair_color='red' AND car_make='Tesla' AND height=65 

-- girl from description= 918773
--view transcript from the redhead lady
SELECT * FROM interview
WHERE person_id=  918773

-- no transcript
SELECT * FROM facebook_event_checkin
WHERE event_name='SQL Symphony Concert' AND date LIKE '2017-12-%' AND event_id 

--reported to be at the event 3 times
SELECT 
person_id,
COUNT(*) 
FROM facebook_event_checkin
GROUP BY person_id
HAVING count(*)=3

-- person
SELECT * FROM person
WHERE id=918773
--no records of lady

SELECT 
	f.person_id, 
	f.date,
	f.event_name,
	d.id,
	d.hair_color,
	d.car_make
FROM facebook_event_checkin AS f
INNER JOIN drivers_liscense AS d
ON f.person_id=d.id
WHERE f.event_name='SQL Symphony Concert' AND f.date LIKE '2017-12-%'AND  d.hair_color='red'AND d.car_make='Tesla'
-- got nothing

SELECT 
	member.id,
	member.person_id,
	member.membership_status,
	driver.id,
	driver.plate_number
FROM get_fit_now_member AS member
INNER JOIN drivers_liscense AS driver
	ON member.person_id=driver.id

--Multijoin to get killer
SELECT 
	member.id,
	member.person_id,
	member.membership_status,
	driver.id,
	driver.plate_number
FROM get_fit_now_member AS member

INNER JOIN drivers_liscense AS driver
	ON member.person_id=driver.id
WHERE member.membership_status='gold' 
	AND member.id LIKE '48Z__' 
	AND driver.plate_number LIKE '%H42W%';
	
SELECT 
p.id,
p.name,
d.id,
d.gender,
d.plate_number
FROM person AS p
INNER JOIN drivers_liscense AS d
ON p.id=d.id 




