create database customer_information;
show databases;
use customer_information;
CREATE TABLE customers_details (
	customer_id INT PRIMARY KEY,
	first_name VARCHAR (255) NOT NULL,
	last_name VARCHAR (255) NOT NULL,
    email VARCHAR (255) NOT NULL,
	phone VARCHAR (25),
	street VARCHAR (255),
	city VARCHAR (50),
	county VARCHAR (25),
	postcode VARCHAR (5));
explain customers_details;
INSERT INTO customers_details VALUES
('1', 'Bilal', 'Zaheer', 'bzaheer085@gmail.com',
'07120000000', 'bristol road', 
'Birmingham', 'West_Midlands', 'B31 4NN');
ALTER TABLE customers_details
MODIFY COLUMN postcode VARCHAR (10);
SELECT * FROM customers_details;
INSERT INTO customers_details VALUES
('2', 'George', 'Foreman', 'george123085@gmail.com',
'071211111', 'main road', 
'Birmingham', 'West_Midlands', 'B32');
select* from customers_details;
INSERT INTO customers_details VALUES
('3', 'Mike', 'Hunt', 'mike1275@gmail.com',
'0712222222', 'watford road', 
'Hounslow', 'Greater London', 'TW6 4HZ');
select* from customers_details;