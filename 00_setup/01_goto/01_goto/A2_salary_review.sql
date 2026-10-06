SET SERVEROUTPUT ON;

DECLARE
    salary NUMBER := 5000;
BEGIN
    IF salary < 3000 THEN
        GOTO low_salary;
    ELSIF salary > 10000 THEN
        GOTO high_salary;
    ELSE
        GOTO normal_salary;
    END IF;

    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary is Low');
    GOTO end_block;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary is High');
    GOTO end_block;

    <<normal_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary is Normal');

    <<end_block>>
    NULL;
END;
/
