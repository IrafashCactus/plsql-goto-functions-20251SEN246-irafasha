SET SERVEROUTPUT ON
SET LINESIZE 160

SHOW ERRORS PROCEDURE validate_payroll

SELECT employee_id, first_name, salary
FROM employees
ORDER BY employee_id;

BEGIN
    validate_payroll;
END;
/