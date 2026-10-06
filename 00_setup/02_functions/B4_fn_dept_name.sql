CREATE OR REPLACE FUNCTION fn_dept_name(p_dept_id IN NUMBER)
RETURN VARCHAR2
IS
    v_name VARCHAR2(100);
BEGIN
    SELECT DepartmentName INTO v_name
    FROM Departments
    WHERE DepartmentID = p_dept_id;
    RETURN v_name;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Unknown';
    WHEN OTHERS THEN
        RETURN 'Error';
END;
/
