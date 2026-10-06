SET SERVEROUTPUT ON;

-- Call functions in SQL SELECT
SELECT EmployeeID,
       FirstName,
       Salary,
       fn_annual_salary(Salary) AS AnnualSalary,
       fn_years_of_service(HireDate) AS YearsOfService,
       fn_calculate_tax(Salary) AS TaxAmount
FROM Employees;
