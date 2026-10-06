SET SERVEROUTPUT ON;

DECLARE
    num NUMBER := -5;
BEGIN
    IF num > 0 THEN
        GOTO positive;
    ELSIF num < 0 THEN
        GOTO negative;
    ELSE
        GOTO zero;
    END IF;

    <<positive>>
    DBMS_OUTPUT.PUT_LINE('The number is Positive');
    GOTO end_block;

    <<negative>>
    DBMS_OUTPUT.PUT_LINE('The number is Negative');
    GOTO end_block;

    <<zero>>
    DBMS_OUTPUT.PUT_LINE('The number is Zero');

    <<end_block>>
    NULL;
END;
/
