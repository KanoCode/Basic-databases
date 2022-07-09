/* Populate database with sample data. */

INSERT INTO animals (name) VALUES ('Luna');
INSERT INTO animals (name) VALUES ('Daisy');
INSERT INTO animals (name) VALUES ('Charlie');

 INSERT into animals(name,date_of_birth,escape_attempts,neutered,weight_kg) 
VALUES ('Agumon',DATE '03-02-2020',0,'true',10.23);
INSERT into animals(name,date_of_birth,escape_attempts,neutered,weight_kg) 
VALUES ('Pikachu',DATE '07-01-2021',1,'false',15.04);

 INSERT into animals(name,date_of_birth,escape_attempts,neutered,weight_kg) 
VALUES ('Gabumon',DATE '15-11-2018',2,'true',8);

INSERT into animals(name,date_of_birth,escape_attempts,neutered,weight_kg) 
VALUES ('Devimon',DATE '12-05-2017',5,'true',11);


INSERT INTO animals(name,date_of_birth,escape_attempts,neutered, weight_kg)
VALUES('Charmander',DATE '08-02-2020',0,'false',-11);

INSERT INTO animals(name,date_of_birth,escape_attempts,neutered, weight_kg)
VALUES('Plantmon',DATE '2021-11-15',2,'true',-5.7);

 INSERT INTO animals(name,date_of_birth,escape_attempts,neutered, weight_kg)
VALUES('Squirtle',DATE '1993-04-02',3,'false',-12.13);

INSERT INTO animals(name,date_of_birth,escape_attempts,neutered, weight_kg)
VALUES('Angemon',DATE '2005-07-12',1,'true',-45);

INSERT INTO animals(name,date_of_birth,escape_attempts,neutered, weight_kg)
VALUES('Boarmon',DATE '2005-06-07',7,'true',20);

INSERT INTO animals(name,date_of_birth,escape_attempts,neutered, weight_kg)
VALUES('Blossom',DATE '1998-10-13',3,'true',17);

INSERT INTO animals(name,date_of_birth,escape_attempts,neutered, weight_kg)
VALUES('Ditto',DATE '2022-05-14'4,'true',22);


-- Insert data into the owners table;

INSERT INTO owners(full_name,age) VALUES('Sam Smith',34);
INSERT INTO owners(full_name,age) VALUES('Jennifer Orwell',19);
INSERT INTO owners(full_name,age) VALUES('Bob',45);
INSERT INTO owners(full_name,age) VALUES('Melody Pond',77);
INSERT INTO owners(full_name,age) VALUES('Dean Winchester',14);
INSERT INTO owners(full_name,age) VALUES('Jodie Whittaker',38);


-- Insert data into the species table;
INSERT INTO owners(name) VALUES('Pokemon');
INSERT INTO owners(name) VALUES('Digimon');

UPDATE animals SET species_id=2 WHERE name like '%mon'; 
UPDATE animals SET species_id=2 WHERE name NOT like '%mon'; 


--Modifying animals table to include species_id;
UPDATE animals SET owner_id = 1 WHERE name = 'Agumon'; 

UPDATE animals SET owner_id = 2 WHERE name = 'Gabumon' OR name='Pikachu';
UPDATE animals SET owner_id = 3 WHERE name = 'Devimon' OR name='Plantmon';;
UPDATE animals SET owner_id = 4 WHERE name = 'Charmander' OR name= 'Squirtle' OR name = 'Blossom';
UPDATE animals SET owner_id = 5 WHERE name = 'Angemon' OR name ='Boarmon';




INSERT INTO vets(name,age,date_of_graduation) 
VALUES('Vet William Tatcher',54,'2000-04-23'),
('Vet Maisy Smith',26,'2019-06-17'),
('Vet Stephanie Mendez',64,'1981-05-04'),
('Vet Jack Harkness',38,'2008-06-08');


INSERT INTO specializations(species_id,vet_id) VALUES(1,1),(1,3),(2,3),(2,4);

INSERT INTO visits(animals_id,vet_id,date_of_visit) VALUES(1,1,'2020-05-24'),(1,3,'2020-07-22'),(2,4,'2021-02-02'),(3,2,'2020-01-05'),(3,2,'2020-03-08'),(3,2,'2020-05-14'),(4,3,'2021-05-04'),(5,4,'2021-02-24'),(6,2,'2019-12-21'),(6,1,'2020-08-10'),(6,2,'2021-04-07'),(7,3,'2019-09-29'),(8,4,'2020-10-03'),(8,4,'2020-11-04'),(9,2,'2019-01-24'),(9,2,'2019-05-15'),(9,2,'2020-02-27'),(9,2,'2020-08-03'),(10,3,'2020-05-24'),(10,1,'2021-01-11');


