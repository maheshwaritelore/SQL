CREATE DATABASE college_student
DROP DATABASE college_student
USE college_student

CREATE TABLE student(
	rollno INT PRIMARY KEY,
	name VARCHAR(40),
	marks INT NOT NULL,
	grade VARCHAR(1),
	city VARCHAR(30)
)

INSERT INTO student(rollno,name,marks,grade,city)
VALUES
(101,'mahi',90,'A','shevgaon'),
(102,'sanket',80,'B','pune'),
(103,'vaisha',65,'C','mumbai'),
(104,'akanksha',67,'C','thane'),
(105,'puja',87,'B','dhule'),
(106,'kartiki',62,'C','sangamner')

SELECT rollno,name FROM student

SELECT * FROM student

SELECT DISTINCT name FROM student  --unique value return from this table and also alphabaticale order

--WHERE CLAUSE

SELECT *FROM student WHERE marks >=80

SELECT *FROM student WHERE city ='sangamner'

SELECT *FROM student WHERE marks >=50 AND city ='sangamner'

SELECT *FROM student WHERE marks+10 > 80  ----Arithmatic operator(+,-,*,/,%)
SELECT *FROM student WHERE marks != 80    -------comparison oprator(=,!=,<,<=,>,>=)
----logical operator(AND,OR,NOT,IN,ALL,BETWEEN,LIKE,ANY)
--AND
SELECT *FROM student WHERE marks >=50 AND city ='sangamner'
SELECT *FROM student WHERE marks >=50 OR city ='sangamner'





--------------------------------------------------------------------------------------------------------------------------------