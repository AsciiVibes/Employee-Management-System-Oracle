-- =========================================
-- Employee Management System
-- JOIN Queries
-- Oracle SQL
-- =========================================


-- 1. Display employee details with department name

SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.job_title,
    e.salary,
    d.department_name
FROM employee e
INNER JOIN department d
    ON e.department_id = d.department_id;


-- 2. Display employees working in IT department

SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.job_title,
    e.salary,
    d.department_name
FROM employee e
INNER JOIN department d
    ON e.department_id = d.department_id
WHERE d.department_name = 'IT';


-- 3. Display employees working in HR department

SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.job_title,
    e.salary,
    d.department_name
FROM employee e
INNER JOIN department d
    ON e.department_id = d.department_id
WHERE d.department_name = 'HR';


-- 4. Display employees with salary greater than 40000
-- along with their department name

SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.salary,
    d.department_name
FROM employee e
INNER JOIN department d
    ON e.department_id = d.department_id
WHERE e.salary > 40000;


-- 5. Display all employees and their department location

SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    d.department_name,
    d.location
FROM employee e
INNER JOIN department d
    ON e.department_id = d.department_id;


-- 6. Display all employees using LEFT JOIN

SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    d.department_name
FROM employee e
LEFT JOIN department d
    ON e.department_id = d.department_id;


-- 7. Display employee name and department name
-- using department ID

SELECT
    e.first_name,
    e.last_name,
    e.department_id,
    d.department_name
FROM employee e
JOIN department d
    ON e.department_id = d.department_id;


-- 8. Find average salary for each department

SELECT
    d.department_name,
    AVG(e.salary) AS average_salary
FROM department d
JOIN employee e
    ON d.department_id = e.department_id
GROUP BY d.department_name;


-- 9. Find number of employees in each department

SELECT
    d.department_name,
    COUNT(e.employee_id) AS employee_count
FROM department d
JOIN employee e
    ON d.department_id = e.department_id
GROUP BY d.department_name;


-- 10. Find departments having more than 1 employee

SELECT
    d.department_name,
    COUNT(e.employee_id) AS employee_count
FROM department d
JOIN employee e
    ON d.department_id = e.department_id
GROUP BY d.department_name
HAVING COUNT(e.employee_id) > 1;
