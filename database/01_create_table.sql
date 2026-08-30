-- Employee Management System
-- Oracle SQL Project
-- Database Table Creation

-- Department Table

CREATE TABLE department (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50),
    location VARCHAR2(50)
);

--Employee table
CREATE TABLE employee(
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50),
    email VARCHAR2(100) UNIQUE,
    phone VARCHAR2(15),
    hire_date DATE,
    job_title VARCHAR2(50),
    salary NUMBER(10,2),
    department_id NUMBER,


       CONSTRAINT fk_employee_department
       FOREIGN KEY (department_id)
       REFERENCES department(departmant_id)

    );
    
    
