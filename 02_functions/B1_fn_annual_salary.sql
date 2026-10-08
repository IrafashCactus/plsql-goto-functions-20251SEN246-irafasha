SET LINESIZE 160

CREATE OR REPLACE FUNCTION annual_salary (
    p_monthly_salary IN NUMBER
) RETURN NUMBER
IS
BEGIN
    RETURN p_monthly_salary * 12;
END;
/

SHOW ERRORS FUNCTION annual_salary

COLUMN first_name FORMAT A15
COLUMN monthly_salary FORMAT 999,999,990.00
COLUMN yearly_salary FORMAT 999,999,990.00

SELECT employee_id,
       first_name,
       salary AS monthly_salary,
       annual_salary(salary) AS yearly_salary
FROM employees
ORDER BY employee_id;