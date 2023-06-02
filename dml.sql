-- Table: Donors
CREATE TABLE Donors (
  donor_id INT PRIMARY KEY,
  donor_name VARCHAR(50),
  gender VARCHAR(10),
  blood_type VARCHAR(5),
  contact_number VARCHAR(25)
);

-- Table: Blood Samples
CREATE TABLE BloodSamples (
  sample_id INT PRIMARY KEY,
  donor_id INT,
  collection_date VARCHAR(25),
  volume INT,
  FOREIGN KEY (donor_id) REFERENCES Donors(donor_id)
);

-- Table: Recipients
CREATE TABLE Recipients (
  recipient_id INT PRIMARY KEY,
  donor_id INT,
  recipient_name VARCHAR(50),
  date_of_birth VARCHAR(25),
  gender VARCHAR(10),
  blood_type VARCHAR(5),
  contact_number VARCHAR(20),
  hospital_name VARCHAR(100),
  doctor_name VARCHAR(100),
  FOREIGN KEY (donor_id) REFERENCES Donors(donor_id)
);

-- Table: Transactions
CREATE TABLE Transactions (
  transaction_id INT PRIMARY KEY,
  donor_id INT,
  recipient_id INT,
  sample_id INT,
  donation_date VARCHAR(25),
  transfusion_date VARCHAR(25),
  FOREIGN KEY (donor_id) REFERENCES Donors(donor_id),
  FOREIGN KEY (recipient_id) REFERENCES Recipients(recipient_id),
  FOREIGN KEY (sample_id) REFERENCES BloodSamples(sample_id)
);


INSERT INTO Donors (donor_id, donor_name, gender, blood_type, contact_number) VALUES (1, 'John Smith', 'Male', 'A+', '1234567890');
INSERT INTO Donors (donor_id, donor_name, gender, blood_type, contact_number) VALUES (2, 'Emily Johnson', 'Female', 'O-', '9876543210');
INSERT INTO Donors (donor_id, donor_name, gender, blood_type, contact_number) VALUES (3, 'Michael Davis', 'Male', 'B+', '5555555555');
INSERT INTO Donors (donor_id, donor_name, gender, blood_type, contact_number) VALUES (4, 'Sarah Wilson', 'Female', 'AB-', '9999999999');
INSERT INTO Donors (donor_id, donor_name, gender, blood_type, contact_number) VALUES (5, 'David Brown', 'Male', 'A-', '1111111111');
INSERT INTO Donors (donor_id, donor_name, gender, blood_type, contact_number) VALUES (6, 'Jessica Taylor', 'Female', 'O+', '2222222222');
INSERT INTO Donors (donor_id, donor_name, gender, blood_type, contact_number) VALUES (7, 'Christopher Anderson', 'Male', 'B-', '3333333333');
INSERT INTO Donors (donor_id, donor_name, gender, blood_type, contact_number) VALUES (8, 'Olivia Martinez', 'Female', 'AB+', '4444444444');
INSERT INTO Donors (donor_id, donor_name, gender, blood_type, contact_number) VALUES (9, 'Daniel Lee', 'Male', 'O+', '6666666666');
INSERT INTO Donors (donor_id, donor_name, gender, blood_type, contact_number) VALUES (10, 'Sophia Lopez', 'Female', 'A-', '7777777777');


INSERT INTO BloodSamples (sample_id, donor_id, collection_date, volume) VALUES (1, 1, '2023-05-01', 250);
 INSERT INTO BloodSamples (sample_id, donor_id, collection_date, volume) VALUES (2, 2, '2023-05-02', 300);
 INSERT INTO BloodSamples (sample_id, donor_id, collection_date, volume) VALUES (3, 3, '2023-05-03', 200);
 INSERT INTO BloodSamples (sample_id, donor_id, collection_date, volume) VALUES (4, 4, '2023-05-04', 350);
  INSERT INTO BloodSamples (sample_id, donor_id, collection_date, volume) VALUES(5, 5, '2023-05-05', 150);
 INSERT INTO BloodSamples (sample_id, donor_id, collection_date, volume) VALUES (6, 6, '2023-05-06', 400);
 INSERT INTO BloodSamples (sample_id, donor_id, collection_date, volume) VALUES (7, 7, '2023-05-07', 300);
 INSERT INTO BloodSamples (sample_id, donor_id, collection_date, volume) VALUES (8, 8, '2023-05-08', 250);
 INSERT INTO BloodSamples (sample_id, donor_id, collection_date, volume) VALUES (9, 9, '2023-05-09', 200);
 INSERT INTO BloodSamples (sample_id, donor_id, collection_date, volume) VALUES (10, 10, '2023-05-10', 350);



  INSERT INTO Recipients (recipient_id, donor_id, recipient_name, date_of_birth, gender, blood_type, contact_number, hospital_name, doctor_name) VALUES (1, 1, 'Emma Davis', '1990-07-15', 'Female', 'A+', '5554443333', 'ABC Hospital', 'Dr. Smith');
  INSERT INTO Recipients (recipient_id, donor_id, recipient_name, date_of_birth, gender, blood_type, contact_number, hospital_name, doctor_name) VALUES(2, 2, 'James Wilson', '1985-12-20', 'Male', 'O-', '9998887777', 'XYZ Hospital', 'Dr. Johnson');
  INSERT INTO Recipients (recipient_id, donor_id, recipient_name, date_of_birth, gender, blood_type, contact_number, hospital_name, doctor_name) VALUES(3, 3, 'Mia Thompson', '1995-03-10', 'Female', 'B+', '1112223333', 'DEF Hospital', 'Dr. Brown');
  INSERT INTO Recipients (recipient_id, donor_id, recipient_name, date_of_birth, gender, blood_type, contact_number, hospital_name, doctor_name) VALUES(4, 4, 'Ethan Miller', '1978-09-05', 'Male', 'AB-', '4445556666', 'GHI Hospital', 'Dr. Martinez');
  INSERT INTO Recipients (recipient_id, donor_id, recipient_name, date_of_birth, gender, blood_type, contact_number, hospital_name, doctor_name) VALUES(5, 5, 'Ava Harris', '1982-06-25', 'Female', 'A-', '7778889999', 'JKL Hospital', 'Dr. Anderson');
  INSERT INTO Recipients (recipient_id, donor_id, recipient_name, date_of_birth, gender, blood_type, contact_number, hospital_name, doctor_name) VALUES(6, 6, 'Noah Thomas', '1993-11-12', 'Male', 'O+', '2223334444', 'MNO Hospital', 'Dr. Taylor');
  INSERT INTO Recipients (recipient_id, donor_id, recipient_name, date_of_birth, gender, blood_type, contact_number, hospital_name, doctor_name) VALUES(7, 7, 'Liam Martinez', '1998-04-02', 'Male', 'B-', '8889990000', 'PQR Hospital', 'Dr. Lopez');
  INSERT INTO Recipients (recipient_id, donor_id, recipient_name, date_of_birth, gender, blood_type, contact_number, hospital_name, doctor_name) VALUES(8, 8, 'Isabella Clark', '1987-08-18', 'Female', 'AB+', '3334445555', 'STU Hospital', 'Dr. Lee');
  INSERT INTO Recipients (recipient_id, donor_id, recipient_name, date_of_birth, gender, blood_type, contact_number, hospital_name, doctor_name) VALUES(9, 9, 'Lucas Anderson', '1992-02-27', 'Male', 'O+', '6667778888', 'VWX Hospital', 'Dr. Wilson');
  INSERT INTO Recipients (recipient_id, donor_id, recipient_name, date_of_birth, gender, blood_type, contact_number, hospital_name, doctor_name) VALUES(10, 10, 'Sophia Davis', '1989-05-16', 'Female', 'A-', '1112223333', 'YZA Hospital', 'Dr. Johnson');


INSERT INTO Transactions (transaction_id, donor_id, recipient_id, sample_id, donation_date, transfusion_date) VALUES (1, 1, 1, 1, '2023-05-01', '2023-05-02');
 INSERT INTO Transactions (transaction_id, donor_id, recipient_id, sample_id, donation_date, transfusion_date) VALUES (2, 2, 2, 2, '2023-05-02', '2023-05-03');
 INSERT INTO Transactions (transaction_id, donor_id, recipient_id, sample_id, donation_date, transfusion_date) VALUES (3, 3, 3, 3, '2023-05-03', '2023-05-04');
 INSERT INTO Transactions (transaction_id, donor_id, recipient_id, sample_id, donation_date, transfusion_date) VALUES (4, 4, 4, 4, '2023-05-04', '2023-05-05');
 INSERT INTO Transactions (transaction_id, donor_id, recipient_id, sample_id, donation_date, transfusion_date) VALUES (5, 5, 5, 5, '2023-05-05', '2023-05-06');
 INSERT INTO Transactions (transaction_id, donor_id, recipient_id, sample_id, donation_date, transfusion_date) VALUES (6, 6, 6, 6, '2023-05-06', '2023-05-07');
 INSERT INTO Transactions (transaction_id, donor_id, recipient_id, sample_id, donation_date, transfusion_date) VALUES (7, 7, 7, 7, '2023-05-07', '2023-05-08');
  INSERT INTO Transactions (transaction_id, donor_id, recipient_id, sample_id, donation_date, transfusion_date) VALUES(8, 8, 8, 8, '2023-05-08', '2023-05-09');
  INSERT INTO Transactions (transaction_id, donor_id, recipient_id, sample_id, donation_date, transfusion_date) VALUES(9, 9, 9, 9, '2023-05-09', '2023-05-10');
  INSERT INTO Transactions (transaction_id, donor_id, recipient_id, sample_id, donation_date, transfusion_date) VALUES(10, 10, 10, 10, '2023-05-10', '2023-05-11');
