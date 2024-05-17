-- Drop tables if they exist to avoid conflicts
DROP TABLE IF EXISTS patients;
DROP TABLE IF EXISTS psychiatrists;
DROP TABLE IF EXISTS hospitals;

-- Create the hospitals table
CREATE TABLE hospitals (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255),
    contact_info VARCHAR(255)
);

-- Create the psychiatrists table
CREATE TABLE psychiatrists (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    hospital_id INT,
    FOREIGN KEY (hospital_id) REFERENCES hospitals(id)
);

-- Create the patients table
CREATE TABLE patients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone_number VARCHAR(20),
    password VARCHAR(255) NOT NULL,
    patient_photo LONGBLOB NOT NULL,
    psychiatrist_id INT,
    FOREIGN KEY (psychiatrist_id) REFERENCES psychiatrists(id)
);
