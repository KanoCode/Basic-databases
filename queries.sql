/*Queries that provide answers to the questions from all projects.*/



SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;

SELECT * FROM animals WHERE neutered = 'true';

SELECT * FROM animals WHERE neutered = 'true' AND escape_attempts < 3;

SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;

SELECT * FROM animals WHERE name NOT IN ('Gabumon');

SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';

SELECT * FROM animals WHERE date_of_birth BETWEEN DATE '2016-01-01' 
AND '2019-01-01';

SELECT * FROM animals WHERE name LIKE '%mon';


-- Counting entries
--Count number of animals 
SELECT COUNT(*) FROM animals;

--Count number of animals that have not attempted escape 
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;

--Avarage weight of animals 
SELECT AVG(weight_kg) FROM animals;

--Sum of escape attempts and compare between neutered and non-neutered
SELECT neutered, SUM(escape_attempts) FROM animals GROUP BY neutered;

--Minimum and maximum weights of each type of animal
SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;

--Average number of escape attempts per animal type of those born between 1990 and 2000 
SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth 
BETWEEN '1990-01-01' AND '2000-12-31' GROUP BY species;



 -- Update table with transactions



-- Verify that change was made and persists after commit.

  BEGIN;
  ALTER TABLE animals
  RENAME species TO unspecified;

  ROLLBACK;

--  Update the animals table by setting the species column to digimon for all animals that have a name ending in mon.
  BEGIN;
  UPDATE animals
  SET species = 'digimon'
  WHERE name LIKE '%mon';

-- Update the animals table by setting the species column to pokemon for all animals that don't have species already set.
  UPDATE animals;
  SET species = 'pokemon'
  WHERE species IS NULL;

-- Commit the transaction.
  COMMIT;




-- Now, take a deep breath and... Inside a transaction delete all records in the animals table, then roll back the transaction.
  BEGIN;
  DELETE FROM animals;

--   check table 
SELECT * FROM animals;

-- Restore
ROLLBACK;
-- After the rollback verify if all records in the animals table still exists. After that, you can start breathing as usual ;)
-- Take a screenshot of the results of your actions.

-- Inside a transaction:
BEGIN;
-- Delete all animals born after Jan 1st, 2022.
DELETE FROM animals
WHERE date_of_birth > DATE '2022-01-01';
-- Create a savepoint for the transaction.
SAVEPOINT save_point1;
-- Update all animals' weight to be their weight multiplied by -1.
UPDATE animals
SET weight_kg = weight_kg * -1;

-- Rollback to the savepoint
ROLLBACK TO save_point1;

-- Update all animals' weights that are negative to be their weight multiplied by -1.
UPDATE animals
SET weight_kg = weight_kg * -1;
-- Commit transaction
COMMIT;

SELECT animals.* FROM animals INNER JOIN owners on animals.owner_id=owners.id WHERE owners.full_name='Melody Pond';


SELECT animals.* FROM animals WHERE species_id=1;

SELECT animals.* from owners LEFT JOIN animals ON animals.owner_id =owners.id;

select species.name,count(*) from animals INNER JOIN species on species.id=animals.species_id GROUP BY species.name;

select * from animals where owner_id=2 and species_id=2;

select * from animals where owner_id=5 and escape_attempts=0;

select full_name,age,owner_id from owners LEFT JOIN animals ON owners.id=animals.owner_id group by full_name,age,owner_id order by count(*) desc limit 1; 

SELECT animals.name,animals.date_of_birth,animals.weight_kg, max(visits.date_of_visit) AS visit_date from visits left join animals on animals.id=visits.animals_id where vets_id=1 group by animals.name,animals.date_of_birth,animals.weight_kg limit 1;

select count(*) from animals join visits on animals.id=visits.animals_id where visits.vets_id=2; 

select * from vets left join specializations on vets.id=specializations.vets_id left join species on species.id=specializations.species_id;

SELECT animals.* from animals inner join visits on animals.id=visits.animals_id where visits.date_of_visit between '2020-04-01' and '2020-08-30' and visits.vets_id=3;

 SELECT animals.name,animals.date_of_birth,animals.weight_kg,count(*) as visit_count from animals INNER JOIN visits ON animals.id=visits.animals_id group by animals.name,animals.date_of_birth,animals.weight_kg order by count(*) desc limit 1;

SELECT animals.name,animals.date_of_birth,animals.weight_kg, max(visits.date_of_visit) as visit_date from visits left join animals on animals.id=visits.animals_id where vets_id=4 group by animals.name,animals.date_of_birth,animals.weight_kg limit 1;

SELECT animals.name as animal_name,animals.date_of_birth as animal_dob,animals.weight_kg as animal_weight,vets.name as vetname,vets.age as vet_age,vets.date_of_graduation as vet_graduation_date, min(visits.date_of_visit) as visit_date from visits inner join animals on animals.id=visits.animals_id inner join vets on visits.vets_id=vets.id group by animals.name,animals.date_of_birth,animals.weight_kg,vets.name,vets.age,vets.date_of_graduation order by  max(visits.date_of_visit) asc limit 1;

SELECT count(*) from visits inner join vets on visits.vets_id=vets.id left join specializations on specializations.vets_id=vets.id where specializations.vets_id is null;

SELECT species.name from animals inner join visits on animals.id=visits.animals_id inner join vets on vets.id=visits.vets_id inner join species on animals.species_id=species.id where vets.id=2 group by species.name order by count(*) desc limit 1;
