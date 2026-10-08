SET SERVEROUTPUT ON

DECLARE
    v_number NUMBER := 5;
BEGIN
    IF v_number > 0 THEN
        GOTO positive_number;
    ELSIF v_number < 0 THEN
        GOTO negative_number;
    ELSE
        GOTO zero_number;
    END IF;

    <<positive_number>>
    DBMS_OUTPUT.PUT_LINE(v_number || ' is positive.');
    GOTO finished;

    <<negative_number>>
    DBMS_OUTPUT.PUT_LINE(v_number || ' is negative.');
    GOTO finished;

    <<zero_number>>
    DBMS_OUTPUT.PUT_LINE('The number is zero.');

    <<finished>>
    NULL;
END;
/