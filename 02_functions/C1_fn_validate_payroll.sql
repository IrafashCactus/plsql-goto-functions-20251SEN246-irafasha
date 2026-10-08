SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE validate_payroll
IS
    v_employee_count NUMBER;
    v_invalid_count  NUMBER;
BEGIN
    SELECT COUNT(*),
           COUNT(CASE
                     WHEN salary IS NULL OR salary <= 0 THEN 1
                 END)
    INTO v_employee_count, v_invalid_count
    FROM employees;

    IF v_employee_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Payroll is empty: no employees found.');
    ELSIF v_invalid_count > 0 THEN
        DBMS_OUTPUT.PUT_LINE(
            'Payroll validation failed: ' ||
            v_invalid_count || ' invalid salary record(s).'
        );

        FOR employee_record IN (
            SELECT employee_id, first_name, salary
            FROM employees
            WHERE salary IS NULL OR salary <= 0
            ORDER BY employee_id
        ) LOOP
            DBMS_OUTPUT.PUT_LINE(
                'Employee ID: ' || employee_record.employee_id ||
                ', Name: ' || employee_record.first_name ||
                ', Salary: ' ||
                NVL(TO_CHAR(employee_record.salary), 'NULL')
            );
        END LOOP;
    ELSE
        DBMS_OUTPUT.PUT_LINE(
            'Payroll validation passed: all ' ||
            v_employee_count || ' employees have positive salaries.'
        );
    END IF;
END;
/

SHOW ERRORS PROCEDURE validate_payroll

EXEC validate_payroll