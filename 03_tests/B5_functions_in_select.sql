SET LINESIZE 220
SET PAGESIZE 100

COLUMN first_name FORMAT A12
COLUMN department_name FORMAT A20
COLUMN monthly_salary FORMAT 999,999,990.00
COLUMN yearly_salary FORMAT 999,999,990.00
COLUMN service_years FORMAT 999
COLUMN tax FORMAT 999,999,990.00
COLUMN net_salary FORMAT 999,999,990.00

SELECT employee_id,
       first_name,
       get_department_name(department_id) AS department_name,
       salary AS monthly_salary,
       annual_salary(salary) AS yearly_salary,
       years_of_service(hire_date) AS service_years,
       calculate_tax(salary) AS tax,
       salary - calculate_tax(salary) AS net_salary
FROM employees
ORDER BY employee_id;