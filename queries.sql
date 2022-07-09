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

  

