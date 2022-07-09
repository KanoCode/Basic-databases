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