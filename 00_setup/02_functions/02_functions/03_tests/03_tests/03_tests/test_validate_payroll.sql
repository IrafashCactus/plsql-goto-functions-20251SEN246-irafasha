SET SERVEROUTPUT ON;

-- Test C1
BEGIN
    DBMS_OUTPUT.PUT_LINE('Employee 101: ' || fn_validate_payroll(101));
    DBMS_OUTPUT.PUT_LINE('Employee 102: ' || fn_validate_payroll(102));
    DBMS_OUTPUT.PUT_LINE('Employee 999: ' || fn_validate_payroll(999));
END;
/
