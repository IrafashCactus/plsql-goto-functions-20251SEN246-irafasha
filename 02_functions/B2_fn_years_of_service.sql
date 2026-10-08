SET LINESIZE 160

CREATE OR REPLACE FUNCTION years_of_service (
    p_hire_date IN DATE
) RETURN NUMBER
IS
BEGIN
    RETURN TRUNC(
        MONTHS_BETWEEN(TRUNC(SYSDATE), TRUNC(p_hire_date)) / 12
    );
END;
/

SHOW ERRORS FUNCTION years_of_service

COLUMN first_name FORMAT A15
COLUMN hire_date FORMAT A12
COLUMN service_years FORMAT 999

SELECT employee_id,
       first_name,
       TO_CHAR(hire_date, 'DD-MON-YYYY') AS hire_date,
       years_of_service(hire_date) AS service_years
FROM employees
ORDER BY employee_id;