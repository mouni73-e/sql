CREATE DATABASE hospital;

USE hospital;

CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50),
    Location VARCHAR(50)
);
CREATE TABLE Doctor (
    Doctor_ID INT PRIMARY KEY,
    Doctor_Name VARCHAR(50),
    Specialization VARCHAR(50),
    Phone VARCHAR(15),
    Dept_ID INT,
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);
CREATE TABLE Patient (
    Patient_ID INT PRIMARY KEY,
    Patient_Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Address VARCHAR(100),
    Phone VARCHAR(15)
);
CREATE TABLE Appointment (
    Appointment_ID INT PRIMARY KEY,
    Patient_ID INT,
    Doctor_ID INT,
    Appointment_Date DATE,
    Appointment_Time TIME,
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);


INSERT INTO Department VALUES
(101,'Cardiology','Block A'),
(102,'Neurology','Block B'),
(103,'Orthopedics','Block C'),
(104,'Pediatrics','Block D');
-- Insert Doctor Data
INSERT INTO Doctor VALUES
(201,'Dr. Ramesh','Cardiologist','9876543210',101),
(202,'Dr. Priya','Neurologist','9876543211',102),
(203,'Dr. Kumar','Orthopedic','9876543212',103),
(204,'Dr. Anitha','Pediatrician','9876543213',104);

-- Insert Patient Data
INSERT INTO Patient VALUES
(301,'Rahul',25,'Male','Hyderabad','9001111111'),
(302,'Sneha',30,'Female','Bangalore','9002222222'),
(303,'Arjun',40,'Male','Chennai','9003333333'),
(304,'Meena',18,'Female','Mysore','9004444444');

-- Insert Appointment Data
INSERT INTO Appointment VALUES
(401,301,201,'2026-08-05','10:00:00'),
(402,302,202,'2026-08-05','11:00:00'),
(403,303,203,'2026-08-06','09:30:00'),
(404,304,204,'2026-08-06','02:00:00');

SELECT * FROM Department;
SELECT * FROM Doctor;
SELECT * FROM Patient;
SELECT * FROM Appointment;