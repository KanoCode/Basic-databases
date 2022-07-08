/* Database schema to keep the structure of entire database. */

-- CREATE TABLE animals(
-- id INT GENERATED ALWAYS AS IDENTITY,name TEXT NOT NULL, 
-- date_of_birth DATE NOT NULL,
-- escape_attempts INT, neutered TEXT NOT NULL, 
-- weight_kg FLOAT NOT NULL);
CREATE TABLE animals(id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
name VARCHAR(50),
date_of_birth DATE NOT NULL,escape_attempts INT,neutered VARCHAR(30),
weight_kg FLOAT);
