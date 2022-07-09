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


--Modifying animals table to include owners_id;



