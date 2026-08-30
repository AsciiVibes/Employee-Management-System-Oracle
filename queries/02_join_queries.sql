
-- Employee Management System
-- JOIN Queries
-- Oracle SQL


-- 1. Display employee name and department name

SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    d.department_name
FROM employee e
INNER JOIN department d
    ON e.department_id = d.department_id;


-- 2. Display employee name, job title and department

SELECT
    e.first_name,
    e.last_name,
    e.job_title,
    d.department_name
FROM employee e
INNER JOIN department d
    ON e.department_id = d.department_id;


-- 3. Display employees whose salary is greater than 40000
-- along with their department name

SELECT
    e.first_name,
    e.last_name,
    e.salary,
    d.department_name
FROM employee e
INNER JOIN department d
    ON e.department_id = d.department_id
WHERE e.salary > 40000;


-- 4. Display all employees and their department location

SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    d.department_name,
    d.location
FROM employee e
INNER JOIN department d
    ON e.department_id = d.department_id;


-- 5. Display employees working in IT department

SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    d.department_name
FROM employee e
INNER JOIN department d
    ON e.department_id = d.department_id
WHERE d.department_name = 'IT';
