CREATE OR REPLACE FUNCTION get_employee_salary (
    p_employee_id IN employee.employee_id%TYPE
)
RETURN NUMBER
IS
    v_salary employee.salary%TYPE;
BEGIN

    SELECT salary
    INTO v_salary
    FROM employee
    WHERE employee_id = p_employee_id;

    RETURN v_salary;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;

END;
