SET SERVEROUTPUT ON
SET LINESIZE 160

DECLARE
    PROCEDURE check_result (
        p_test_name IN VARCHAR2,
        p_passed    IN BOOLEAN
    )
    IS
    BEGIN
        IF p_passed THEN
            DBMS_OUTPUT.PUT_LINE('PASS: ' || p_test_name);
        ELSE
            RAISE_APPLICATION_ERROR(
                -20001, 'FAIL: ' || p_test_name
            );
        END IF;
    END;
BEGIN
    check_result(
        'Annual salary: 500000 -> 6000000',
        annual_salary(500000) = 6000000
    );

    check_result(
        'Service: exactly 3 years',
        years_of_service(ADD_MONTHS(TRUNC(SYSDATE), -36)) = 3
    );

    check_result(
        'Service: 35 months -> 2 completed years',
        years_of_service(ADD_MONTHS(TRUNC(SYSDATE), -35)) = 2
    );

    check_result(
        'Tax: 500000 -> 50000',
        calculate_tax(500000) = 50000
    );

    check_result(
        'Tax rounding: 123.45 -> 12.35',
        calculate_tax(123.45) = 12.35
    );

    check_result(
        'Department 10 -> Administration',
        get_department_name(10) = 'Administration'
    );

    check_result(
        'Unknown department',
        get_department_name(999) = 'Unknown Department'
    );

    DBMS_OUTPUT.PUT_LINE('All function tests passed.');
END;
/