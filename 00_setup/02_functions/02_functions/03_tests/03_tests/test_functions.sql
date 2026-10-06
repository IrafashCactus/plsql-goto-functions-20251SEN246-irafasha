SET SERVEROUTPUT ON;

-- Test B1
BEGIN
    DBMS_OUTPUT.PUT_LINE('Annual Salary for 5000: ' || fn_annual_salary(5000));
END;
/

-- Test B2
BEGIN
    DBMS_OUTPUT.PUT_LINE('Years of Service since 2020-01-15: ' || fn_years_of_service(TO_DATE('2020-01-15','YYYY-MM-DD')));
END;
/

-- Test B3
BEGIN
    DBMS_OUTPUT.PUT_LINE('Tax for 60000: ' || fn_calculate_tax(60000));
END;
/

-- Test B4
BEGIN
    DBMS_OUTPUT.PUT_LINE('Department 10: ' || fn_dept_name(10));
    DBMS_OUTPUT.PUT_LINE('Department 99: ' || fn_dept_name(99));
END;
/
