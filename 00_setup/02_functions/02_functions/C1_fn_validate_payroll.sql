CREATE OR REPLACE FUNCTION fn_validate_payroll(p_emp_id IN NUMBER)
RETURN VARCHAR2
IS
    v_salary NUMBER;
    v_job_id VARCHAR2(10);
    v_min NUMBER;
    v_max NUMBER;
BEGIN
    SELECT Salary, JobID INTO v_salary, v_job_id
    FROM Employees
    WHERE EmployeeID = p_emp_id;

    SELECT MinSalary, MaxSalary INTO v_min, v_max
    FROM Jobs
    WHERE JobID = v_job_id;

    IF v_salary BETWEEN v_min AND v_max THEN
        RETURN 'VALID';
    ELSE
        RETURN 'INVALID';
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'ERROR';
    WHEN OTHERS THEN
        RETURN 'ERROR';
END;
/
