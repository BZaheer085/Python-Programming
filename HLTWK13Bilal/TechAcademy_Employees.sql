Create database TechAcademy_Employees;

USE TechAcademy_Employees;

-- Create First Table

CREATE TABLE Employee (
        EmpID INT PRIMARY KEY , 
        EmpName VARCHAR(50) NOT NULL, 
        Designation VARCHAR(50) NULL, 
        Department VARCHAR(50) NULL, 
        JoiningDate VARCHAR(50) NULL
	    );

EXPLAIN Employee;

-- Create Second Table

CREATE TABLE EmployeeDetails(
	EmpID INT PRIMARY KEY,
	EmpName VARCHAR(50) NULL,
	Mobile VARCHAR(10) NULL,
	PresentAddress VARCHAR(100) NULL,
	Area VARCHAR(50) NULL,
	City VARCHAR(50) NULL,
	Country VARCHAR(50) NULL,
	Qualification VARCHAR(50) NULL,
	Email VARCHAR(50) NULL
); 

EXPLAIN EmployeeDetails;

-- Entering Records on first table 'Employee'

INSERT INTO Employee 
	(EmpID, EmpName, Designation, Department, JoiningDate)
VALUES 
	(1, 'BILAL ZAHEER', 'LAB ASSISTANT', 'LAB', ' Nov 2021'),
	(2, 'MIKE PEARL', 'SENIOR ACCOUNTANT', 'ACCOUNTS', 'March 2021'),
	(4, 'GREEN FIELD', 'ACCOUNTANT', 'ACCOUNTS', 'Jan 2022'),
	(6, 'DEWANE PAUL', 'PROGRAMMER', 'IT', 'Sep 2021'),
	(3, 'MATTS', 'SR. PROGRAMMER', 'IT', 'Feb 2022'),
	(5, 'PLANK OTO', 'ACCOUNTANT', 'ACCOUNTS', 'Nov 2021'),
	(7, 'MUHAMMAD BILAL', 'LAB ASSISTANT', 'LAB', 'Nov 2021'),
	(8, 'JOHN SMITH', 'SENIOR ACCOUNTANT', 'ACCOUNTS', 'March 2021'),
	(9, 'PATEL', 'ACCOUNTANT', 'ACCOUNTS', 'Jan 2022'),
	(10, 'STACY MILLER', 'PROGRAMMER', 'IT', 'Sep 2021');

SELECT * FROM Employee;

-- Entering Records on second table 'EmployeeDetails'

INSERT INTO EmployeeDetails 
    (EmpID, EmpName, Mobile, PresentAddress, Area, City, Country, Qualification, Email)
VALUES
    (1, 'BILAL ZAHEER', '1234567879', '1 MAIN AVE', 'NORTHFIELDS', 'BIRMINGHAM', 'UNITED KINGDOM', 'GRADUATE','bzaheer085@gmail.com'),
    (2, 'MIKE PEARL', '2152313213', 'B BLOCK NICE STREET', 'WENEN', 'TACOCA', 'SCODD', 'GRADUATE', 'mike230@emample.com'),
    (3, 'GREEN FIELD', '4517825469', 'UNIVERSAL NEW AVE', 'BOURNVILE', 'LONDON', 'UNITED KINGDOM', 'MANAGEMENT','greenden3939@emample.com'),
    (4, 'DEWANE PAUL', '5741115523', 'SPACE, 1 OF 1', 'ANDALUSIAN', 'PARALLEL', 'NEW RIVER', 'MATHEMATICS','dpaul_lime44@emample.com'),
    (5, 'MATTS', '4755#55522', 'NOT KNOWN', 'WOODOO', 'COMMONS', 'UNITED KINGDOM', 'ADVANCE PHYSICS','matts-ino33@emample.com'),
    (6, 'PLANK OTO', '5124785452', 'TUCSON, AZ MSA', 'ALPINE', 'ARIZONA', 'USA', 'DIPLOMA IN FINANCE','plaoto_nk984@emample.com');

SELECT * FROM EmployeeDetails;

-- Update a record

SET SQL_SAFE_UPDATES = 0; -- Can modify your query to without to follow the rule using primary key clause.
UPDATE EmployeeDetails
SET Mobile = 07123455087
WHERE EmpName = 'BILAL ZAHEER';

SELECT * FROM EmployeeDetails;

-- Delete a record

DELETE FROM Employee WHERE EmpName='STACY MILLER';
SET SQL_SAFE_UPDATES = 1; -- Turning the safety feature on

SELECT * FROM Employee;

-- Joining tables

SELECT Employee.EmpName , EmployeeDetails.Mobile
FROM Employee
INNER JOIN EmployeeDetails
ON Employee.EmpID = EmployeeDetails.EmpID;

-- Run a simple query (one field/column) searching one table

SELECT * FROM Employee WHERE EmpID=8;

-- Run a complex query (more than one field/column)

SELECT *
FROM Employee
INNER JOIN EmployeeDetails
WHERE Employee.EmpID = EmployeeDetails.EmpID AND EmployeeDetails.City = "Birmingham";

-- Retrieving data sorted in ascending order

SELECT * FROM Employee ORDER BY EmpID;

-- Filtering data using comparison operators

SELECT * FROM EmployeeDetails
WHERE EmpID > 5;