-- ORIGINAL (with GOTO)
/*
DECLARE
    salary NUMBER := 5000;
BEGIN
    IF salary < 10000 THEN
        GOTO low_salary;
    END IF;
    DBMS_OUTPUT.PUT_LINE('Salary is sufficient.');
    GOTO end_program;
    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary is too low.');
    <<end_program>>
    NULL;
END;
/
*/

-- REWRITTEN WITHOUT GOTO
SET SERVEROUTPUT ON;

DECLARE
    salary NUMBER := 5000;
BEGIN
    IF salary < 10000 THEN
        DBMS_OUTPUT.PUT_LINE('Salary is too low.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Salary is sufficient.');
    END IF;
END;
/
