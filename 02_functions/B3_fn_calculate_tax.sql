SET LINESIZE 160

CREATE OR REPLACE FUNCTION calculate_tax (
    p_salary IN NUMBER
) RETURN NUMBER
IS
BEGIN
    RETURN ROUND(p_salary * 0.10, 2);
END;
/

SHOW ERRORS FUNCTION calculate_tax

COLUMN first_name FORMAT A15
COLUMN salary FORMAT 999,999,990.00
COLUMN tax FORMAT 999,999,990.00
COLUMN net_salary FORMAT 999,999,990.00

SELECT employee_id,
       first_name,
       salary,
       calculate_tax(salary) AS tax,
       salary - calculate_tax(salary) AS net_salary
FROM employees
ORDER BY employee_id;