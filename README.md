Task 8: Stored Procedures and Functions

Objective
The objective of this task is to:

Learn how to create and use stored procedures and functions in SQL

Understand the concept of modular and reusable SQL blocks

Practice using parameters and conditional logic in SQL

Tools Used

MySQL Workbench

MySQL Server

What I Did

Created a database
CREATE DATABASE sqlinternship;
USE sqlinternship;

Created a sample table
CREATE TABLE student2 (
s_id INT PRIMARY KEY,
name VARCHAR(55),
dept VARCHAR(55),
status VARCHAR(10)
);

Inserted sample data
INSERT INTO student2 VALUES
(1, 'TANVI', 'IT', 'ACTIVE'),
(2, 'AMIT', 'CS', 'INACTIVE'),
(3, 'AYESHA', 'IT', 'ACTIVE'),
(4, 'RAJ', 'CS', 'ACTIVE');

Stored Procedure

Name: getactivestudents
Purpose: Fetch all students who have an "ACTIVE" status

DELIMITER //
CREATE PROCEDURE getactivestudents()
BEGIN
SELECT * FROM student2 WHERE status = 'ACTIVE';
END //
DELIMITER ;

How to call it:
CALL getactivestudents();

Function

Name: GetDeptCount
Purpose: Return the total number of students in a specified department

DELIMITER //
CREATE FUNCTION GetDeptCount(deptName VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
DECLARE dept_count INT;
SELECT COUNT(*) INTO dept_count FROM student2 WHERE dept = deptName;
RETURN dept_count;
END //
DELIMITER ;

How to use it:
SELECT GetDeptCount('IT') AS IT_Dept_Students;

What I Learned

The difference between stored procedures and functions in SQL

How to use CREATE PROCEDURE and CREATE FUNCTION

How to pass parameters to functions

How to use conditional logic inside SQL blocks

Importance of DELIMITER when creating multi-line blocks

Use of modular SQL for clean and reusable code

Outcome

Successfully created and executed one stored procedure and one function

Gained confidence in writing reusable SQL code

Understood how to modularize business logic using SQL
