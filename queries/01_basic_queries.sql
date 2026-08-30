-- =========================================
-- Employee Management System
-- Basic SQL Queries
-- Oracle SQL
-- =========================================


-- 1. Display all employees

SELECT *
FROM employee;


-- 2. Display employee name and salary

SELECT
    first_name,
    last_name,
    salary
FROM employee;


-- 3. Find employees whose salary is greater than 40000

SELECT
    employee_id,
    first_name,
    last_name,
    salary
FROM employee
WHERE salary > 40000;


-- 4. Display employees in descending order of salary

SELECT
    employee_id,
    first_name,
    last_name,
    salary
FROM employee
ORDER BY salary DESC;


-- 5. Display employees in ascending order of salary

SELECT
    employee_id,
    first_name,
    last_name,
    salary
FROM employee
ORDER BY salary ASC;


-- 6. Find average salary of all employees

SELECT AVG(salary) AS average_salary
FROM employee;


-- 7. Find highest salary

SELECT MAX(salary) AS highest_salary
FROM employee;


-- 8. Find lowest salary

SELECT MIN(salary) AS lowest_salary
FROM employee;


-- 9. Count total number of employees

SELECT COUNT(*) AS total_employees
FROM employee;


-- 10. Find average salary department-wise

SELECT
    d.department_name,
    AVG(e.salary) AS average_salary
FROM employee e
JOIN department d
    ON e.department_id = d.department_id
GROUP BY d.department_name;


-- 11. Find departments having more than 1 employee

SELECT
    d.department_name,
    COUNT(e.employee_id) AS employee_count
FROM department d
JOIN employee e
    ON d.department_id = e.department_id
GROUP BY d.department_name
HAVING COUNT(e.employee_id) > 1;


-- 12. Find employee with highest salary

SELECT
    employee_id,
    first_name,
    last_name,
    salary
FROM employee
WHERE salary = (
    SELECT MAX(salary)
    FROM employee
);


-- 13. Find second highest salary

SELECT MAX(salary) AS second_highest_salary
FROM employee
WHERE salary < (
    SELECT MAX(salary)
    FROM employee
);


-- 14. Find employees with duplicate salaries

SELECT
    first_name,
    last_name,
    salary
FROM employee
WHERE salary IN (
    SELECT salary
    FROM employee
    GROUP BY salary
    HAVING COUNT(*) > 1
);
