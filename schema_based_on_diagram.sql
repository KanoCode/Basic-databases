CREATE DATABASE clinicdb; 
CREATE TABLE patients( id INT GENERATED ALWAYS AS IDENTITY, name VARCHAR, date_of_birth DATE, PRIMARY KEY(id) );
 CREATE TABLE medical_histories( history_id INT GENERATED ALWAYS AS IDENTITY, admitted_at TIMESTAMP, patient_id INT REFERENCES patients(id), status VARCHAR, PRIMARY KEY(history_id) ); 
 CREATE INDEX patient_index ON medical_histories(patient_id ASC); 
 CREATE TABLE invoices ( invoice_id INT GENERATED ALWAYS AS IDENTITY, total_amount FLOAT, generated_at TIMESTAMP, payed_at TIMESTAMP, medical_history_id INT REFERENCES medical_histories(history_id) PRIMARY KEY(invoice_id) ); 
 CREATE INDEX invoice_index ON invoices(medical_history_id ASC); 

 CREATE TABLE invoice_items (
	invoice_item_id INT GENERATED ALWAYS AS IDENTITY,
	unit_price FLOAT,
	quantity INT,
	total_price FLOAT,
	invoice_id INT REFERENCES invoices(invoice_id),
	treatment_id INT REFERENCES treatments(treatment_id),
	PRIMARY KEY(invoice_item_id)
);

CREATE INDEX invoice_items ON invoices_items(invoice_id ASC);

CREATE INDEX invoice_items ON invoices_items(treatment_id ASC);

CREATE TABLE treatments (
	treatment_id INT GENERATED ALWAYS AS IDENTITY,
	type VARCHAR,
	name VARCHAR,
	PRIMARY KEY(treatment_id)
);

CREATE TABLE history_treatment (
	histories_id INT REFERENCES medical_histories (histories_id),
	treatment_id INT REFERENCES treatments (treatment_id)
);

CREATE INDEX histories_id ON history_treatment(histories_id ASC);