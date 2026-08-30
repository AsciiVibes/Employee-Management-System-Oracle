-- =========================================
-- Employee Management System
-- Oracle SQL Project
-- Sample Data
-- =========================================


-- Department Data

INSERT INTO department
VALUES (10, 'IT', 'Mumbai');

INSERT INTO department
VALUES (20, 'HR', 'Pune');

INSERT INTO department
VALUES (30, 'Finance', 'Mumbai');

INSERT INTO department
VALUES (40, 'Sales', 'Nashik');


-- Employee Data

INSERT INTO employee
VALUES (
    101, 'Rahul', 'Sharma',
    'rahul@gmail.com',
    '9876543210',
    DATE '2023-01-10',
    'Software Engineer',
    50000,
    10
);

INSERT INTO employee
VALUES (
    102, 'Priya', 'Patil',
    'priya@gmail.com',
    '9876543211',
    DATE '2022-06-15',
    'HR Executive',
    40000,
    20
);

INSERT INTO employee
VALUES (
    103, 'Amit', 'Joshi',
    'amit@gmail.com',
    '9876543212',
    DATE '2021-03-20',
    'Accountant',
    45000,
    30
);

INSERT INTO employee
VALUES (
    104, 'Sneha', 'Deshmukh',
    'sneha@gmail.com',
    '9876543213',
    DATE '2024-02-01',
    'Sales Executive',
    35000,
    40
);

INSERT INTO employee
VALUES (
    105, 'Vikas', 'More',
    'vikas@gmail.com',
    '9876543214',
    DATE '2023-08-12',
    'Database Developer',
    60000,
    10
);


-- Save Changes

COMMIT;
