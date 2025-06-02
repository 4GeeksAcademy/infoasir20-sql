-- queries.sql
-- Complete each mission by writing your SQL query below the instructions.
-- Don't forget to end each query with a semicolon ;

SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;

-- Misión 1: 
-- MISSION 1;
select country , species_id from regions
INNER JOIN observations ON regions.id = observations.id
GROUP BY country
ORDER BY species_id desc
LIMIT 5


-- MISSION 2:
-- Your query here;

select observation_date  from observations
GROUP BY observation_date
ORDER BY observation_date;





-- MISSION 3: 
-- Your query here;
select common_name, count from species
INNER JOIN observations ON species.id = observations.id
ORDER BY count asc;


-- MISSION 4:
-- Your query here;
select name, common_name from species
INNER JOIN regions ON species.id = regions.id
ORDER BY name asc
limit 5;


-- MISSION 5: 
-- Your query here;  
 select scientific_name, observer from species
 INNER JOIN observations ON species.id = observations.species_id
 ORDER BY observer asc;


-- MISSION 6:  
-- Your query here;  Queremos identificar a los observadores más activos. 
-- ¿Quiénes son las personas que más registros de observación han realizado?
SELECT observations.observer, COUNT(*) AS total
FROM observations
GROUP BY observations.observer
ORDER BY total DESC
LIMIT 10;

-- MISSION 7: 
-- Your query here;

select scientific_name, species_id, observer from species
INNER JOIN observations ON species_id = observations.species_id
where  observer IS NULL;




-- MISSION 8: 
-- Your query here;

select observation_date, observer, scientific_name from species
INNER JOIN observations ON species_id = observations.id
ORDER BY observation_date asc;

