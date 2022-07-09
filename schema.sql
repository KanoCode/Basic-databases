/* Database schema to keep the structure of entire database. */

CREATE TABLE animals(id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
name VARCHAR(50),
date_of_birth DATE NOT NULL,escape_attempts INT,neutered VARCHAR(30)
,
weight_kg FLOAT);

-- Added a new column to the animals table;
ALTER TABLE animals
 ADD species TEXT; species TEXT

 -- Add new tables inside vet_clinic
CREATE TABLE owners(id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
full_name VARCHAR(50),
age INT);

-- Create a table named species

CREATE TABLE species(id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
name VARCHAR(50));

-- Remove column species
ALTER TABLE animals
  DROP COLUMN species;

  --ADD new column species_id which is a foreign key which references the species table
  ALTER TABLE animals
  ADD COLUMN species_id INT;

  ALTER TABLE animals
    ADD FOREIGN KEY (species_id) REFERENCES species(id);
  -- ADD new column owner_id which is a foreign key referencing owners table

   ALTER TABLE animals
  ADD COLUMN owner_id INT;

    ALTER TABLE animals
    ADD FOREIGN KEY (owner_id) REFERENCES owner(id);

    --Join visits
    CREATE TABLE vets(id serial PRIMARY KEY,name TEXT, age INTEGER, date_of_graduation DATE);

    CREATE TABLE specializations(species_id INTEGER, vets_id INTEGER, CONSTRAINT FK_species FOREIGN KEY (species_id) REFERENCES species (id), CONSTRAINT FK_vets FOREIGN KEY (vets_id) REFERENCES vets (id) );


CREATE TABLE visits(animals_id INTEGER, vets_id INTEGER, CONSTRAINT FK_animals FOREIGN KEY (animals_id) REFERENCES animals (id), CONSTRAINT FK_vets FOREIGN KEY (vets_id) REFERENCES vets (id) );

ALTER TABLE visits ADD COLUMN date_of_visit DATE;
