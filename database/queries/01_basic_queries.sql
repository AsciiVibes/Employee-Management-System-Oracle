
-- Employee Management System
-- Basic SQL Queries
-- Oracle SQL


-- 1. Display all employees

SELECT *FROM employee;


-- 2. Display employee name and salary

SELECT
    first_name,
    last_name,
    salary FROM employee;


-- 3. Display employees whose salary is greater than 40000

SELECT
    employee_id,
    first_name,
    last_name,
    salary FROM employee
WHERE salary > 40000;


-- 4. Display employees from IT department

SELECT
    employee_id,
    first_name,
    last_name,
    department_id
FROM employee
WHERE department_id = 10;


-- 5. Display employees in descending order of salary

SELECT
    employee_id,
    first_name,
    last_name,
    salary
FROM employee
ORDER BY salary DESC;


-- 6. Display employees in ascending order of salary

SELECT
    employee_id,
    first_name,
    last_name,
    salary
FROM employee
ORDER BY salary ASC;


-- 7. Display employees whose job title is Software Engineer

SELECT
    employee_id,
    first_name,
    last_name,
    job_title
FROM employee
WHERE job_title = 'Software Engineer';


-- 8. Display employees hired after 01-JAN-2023

SELECT
    employee_id,
    first_name,
    last_name,
    hire_date
FROM employee
WHERE hire_date > DATE '2023-01-01';
