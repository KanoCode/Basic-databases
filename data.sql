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
