SET SERVEROUTPUT ON

DECLARE
    v_employee_id employees.employee_id%TYPE := 101;
    v_first_name  employees.first_name%TYPE;
    v_salary      employees.salary%TYPE;
BEGIN
    SELECT first_name, salary
    INTO v_first_name, v_salary
    FROM employees
    WHERE employee_id = v_employee_id;

    DBMS_OUTPUT.PUT_LINE('Employee: ' || v_first_name);
    DBMS_OUTPUT.PUT_LINE('Current salary: ' || v_salary);

    IF v_salary < 400000 THEN
        DBMS_OUTPUT.PUT_LINE('Decision: Salary needs review.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Decision: Salary is satisfactory.');
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee ID not found.');
END;
/