CREATE DATABASE constraints
DROP DATABASE constraints

USE constraints

---------------------------------------------------------------------------------------
--UNIQUE
CREATE TABLE temp_1(
	id INT UNIQUE
)

INSERT INTO temp_1 values(101)
INSERT INTO temp_1 values(101)---error occour becz of id in UNIQUE

SELECT* FROM temp_1

----------------------------------------------------------------------------------------------------
--PRIMARY KEY
CREATE TABLE temp_2(
	id INT ,
	name VARCHAR(50),
	age INT,
	city VARCHAR(20),
	PRIMARY KEY(id ,name)
)

INSERT INTO temp_2 values(101,'mahi',20,'shevgaon')
INSERT INTO temp_2 values(102,'sanket',20,'shevgaon')
INSERT INTO temp_2 values(102,'sanket',20,'shevgaon')-----------error

---------------------------------------------------------------------------------------------------

--foreign key

CREATE TABLE customer(

)
CREATE TABLE temp(
	cust_id INT,
	FOREIGN KEY(cust_id)references customer(id)

)

--------------------------------------------------------------------------------------------------
--DEFAULT

CREATE TABLE emp(
	id INT,
	salary INT DEFAULT 250000
)
INSERT INTO emp(id)VALUES(101)

SELECT*FROM emp

--------------------------------------------------------------------------------------------------------
--CHECK
CREATE TABLE city(
	id INT PRIMARY KEY,
	city VARCHAR(50),
	age INT,
	CONSTRAINT age_check CHECK(age >=18 AND city='delhi')

)
INSERT INTO city(id,age)VALUES(1,23)
INSERT INTO city(id,age)VALUES(2,15)------error

SELECT*FROM city

--OR

CREATE TABLE newTable(
	age INT CHECK(age >=18)
)
INSERT INTO newTable(age)VALUES(23)
INSERT INTO newTable(age)VALUES(15)-----error

SELECT*FROM newTable

---------------------------------------------------------------------------------------------------------

