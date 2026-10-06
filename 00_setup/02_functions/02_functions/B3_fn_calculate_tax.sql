CREATE OR REPLACE FUNCTION fn_calculate_tax(p_salary IN NUMBER)
RETURN NUMBER
IS
BEGIN
    IF p_salary > 100000 THEN
        RETURN p_salary * 0.30;
    ELSIF p_salary >= 50000 THEN
        RETURN p_salary * 0.20;
    ELSE
        RETURN p_salary * 0.10;
    END IF;
END;
/
