CREATE DATABASE student;

USE student; 

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100),
    marks INT
);

INSERT INTO students VALUES
(1, 'Anjali', 'Mumbai', 95),
(2, 'Rahul', 'Delhi', 78),
(3, 'Sneha', 'Mumbai', 91),
(4, 'Amit', 'Pune', 88),
(5, 'Raj', 'Bangalore', 72);

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    salary DECIMAL(10,2)
);

INSERT INTO employees VALUES
(1, 'Neha', 'HR', 50000),
(2, 'Karan', 'Finance', 75000),
(3, 'Meena', 'HR', 62000),
(4, 'Ravi', 'Engineering', 85000),
(5, 'Simran', 'Sales', 48000);


CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100)
);

INSERT INTO customers VALUES
(1, 'Aman', 'Delhi'),
(2, 'Anita', 'Mumbai'),
(3, 'Brian', 'Pune'),
(4, 'Aarav', 'Chennai'),
(5, 'Chetan', 'Kolkata');

CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10,2)
);

INSERT INTO products VALUES
(1, 'Laptop', 45000),
(2, 'Mouse', 250),
(3, 'Keyboard', 350),
(4, 'Monitor', 9000),
(5, 'USB Cable', 150);
 
-- 1.

SELECT * 
FROM students;

SELECT * 
FROM customers;
 
SELECT * 
FROM employees;

SELECT * 
FROM products;

-- 2.
SELECT name , marks
FROM students
WHERE marks > 80;

-- 3.
SELECT name , department
FROM employees
WHERE department = 'HR';

-- 4.
SELECT name , city , marks  
FROM students
WHERE city IN ('Mumbai') 
	AND marks > 90;

-- 5.
SELECT DISTINCT department
FROM employees;

-- 6.
SELECT name , marks 
FROM students
ORDER BY  marks  DESC;

-- 7. 
SELECT  city , COUNT(name) 
FROM students
GROUP BY  city  ;

-- 8.
SELECT name 
FROM customers
WHERE name LIKE 'A%'; 

-- 9. 
SELECT name,price 
FROM products
WHERE price BETWEEN 100 and 500;

-- 10.
SELECT * 
FROM employees 
ORDER BY salary DESC 
LIMIT 5;















































