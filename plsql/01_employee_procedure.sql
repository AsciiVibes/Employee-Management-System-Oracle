

-- PL/SQL Procedure


CREATE OR REPLACE PROCEDURE get_employee_details (
    p_employee_id IN employee.employee_id%TYPE
)
IS
BEGIN

    FOR emp IN (
        SELECT
            e.employee_id,
            e.first_name,
            e.last_name,
            e.job_title,
            e.salary,
            d.department_name
        FROM employee e
        LEFT JOIN department d
            ON e.department_id = d.department_id
        WHERE e.employee_id = p_employee_id
    )
    LOOP

        DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp.employee_id);
        DBMS_OUTPUT.PUT_LINE('Name: ' || emp.first_name || ' ' || emp.last_name);
        DBMS_OUTPUT.PUT_LINE('Job Title: ' || emp.job_title);
        DBMS_OUTPUT.PUT_LINE('Salary: ' || emp.salary);
        DBMS_OUTPUT.PUT_LINE('Department: ' || emp.department_name);

    END LOOP;

END;
/
