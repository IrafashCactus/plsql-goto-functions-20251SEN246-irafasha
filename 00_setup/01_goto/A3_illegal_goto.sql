-- ILLEGAL GOTO EXAMPLE
-- This will fail because GOTO cannot jump INTO an IF statement

/*
BEGIN
    GOTO inside_if;
    IF TRUE THEN
        <<inside_if>>
        DBMS_OUTPUT.PUT_LINE('Hello');
    END IF;
END;
/
-- Error: PLS-00375: illegal GOTO statement; this GOTO cannot branch to label 'INSIDE_IF'
*/

-- FIXED VERSION
SET SERVEROUTPUT ON;

BEGIN
    IF TRUE THEN
        DBMS_OUTPUT.PUT_LINE('Hello');
    END IF;
END;
/
