SET LINESIZE 160

CREATE OR REPLACE FUNCTION get_department_name (
    p_department_id IN NUMBER
) RETURN VARCHAR2
IS
BEGIN
    RETURN CASE p_department_id
        WHEN 10 THEN 'Administration'
        WHEN 20 THEN 'Finance'
        WHEN 30 THEN 'IT'
        WHEN 40 THEN 'Human Resources'
        ELSE 'Unknown Department'
    END;
END;
/

SHOW ERRORS FUNCTION get_department_name

COLUMN first_name FORMAT A15
COLUMN department_name FORMAT A25

SELECT employee_id,
       first_name,
       department_id,
       get_department_name(department_id) AS department_name
FROM employees
ORDER BY employee_id;