CREATE DATABASE clinicdb; 
CREATE TABLE patients( id INT GENERATED ALWAYS AS IDENTITY, name VARCHAR, date_of_birth DATE, PRIMARY KEY(id) );
 CREATE TABLE medical_histories( history_id INT GENERATED ALWAYS AS IDENTITY, admitted_at TIMESTAMP, patient_id INT REFERENCES patients(id), status VARCHAR, PRIMARY KEY(history_id) ); 
 CREATE INDEX patient_index ON medical_histories(patient_id ASC); 
 CREATE TABLE invoices ( invoice_id INT GENERATED ALWAYS AS IDENTITY, total_amount FLOAT, generated_at TIMESTAMP, payed_at TIMESTAMP, medical_history_id INT REFERENCES medical_histories(history_id) PRIMARY KEY(invoice_id) ); 
 CREATE INDEX invoice_index ON invoices(medical_history_id ASC); 