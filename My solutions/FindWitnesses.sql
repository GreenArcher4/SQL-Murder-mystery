/*
A crime has taken place and the detective needs your help. The detective gave you the crime scene report, but you somehow lost it. You vaguely remember that the crime was a ​murder​ that occurred sometime on ​Jan.15, 2018​ and that it took place in ​SQL City​. Start by retrieving the corresponding crime scene report from the police department’s database.
*/

-- LOOK AT CRIME SCENE REPORT
SELECT * FROM crime_scene_report
WHERE city ='SQL City' AND type ='murder';

--witness 1:  living in Northwestern DR
SELECT TOP 1 
name,id
FROM person
WHERE address_street_name = 'Northwestern Dr' 
ORDER BY address_number DESC;
-- name:Morty Schapiro	14887

--Alter the column dtype from text to VARCHAR 
ALTER TABLE person
ALTER COLUMN address_street_name VARCHAR(255);

--witness 2: Annabel on Franklin Ave
SELECT name,id
FROM person
WHERE address_street_name = 'Franklin Ave' AND name LIKE 'Annabel %';
-- identity: Annabel Miller	16371

