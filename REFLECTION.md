# PL/SQL GOTO and Functions Assignment

## Overview
This project focuses on core PL/SQL programming concepts, including `GOTO` statements, user-defined functions, SQL integration, and payroll validation procedures. The assignment was designed to strengthen understanding of control flow, reusable logic, and database-driven reporting.

## Learning Objectives
- Use `GOTO` and labels to control program flow
- Rewrite logic using `IF ... ELSE` for cleaner and more maintainable code
- Create and reuse PL/SQL functions for calculations and lookups
- Call functions directly from SQL queries
- Validate employee records through a PL/SQL procedure
- Troubleshoot database errors such as missing object references

## Repository Structure
- `00_setup` – initialization and environment setup
- `01_goto` – exercises involving `GOTO` flow control and salary review logic
- `02_functions` – function creation and usage for salary, service length, tax, and department name lookups
- `03_tests` – validation and testing files
- `docs` – supporting documentation
- `screenshots` – images related to the assignment output

## Reflection
In this assignment, I learned how to use `GOTO`, create PL/SQL functions, call functions in SQL queries, and write a payroll validation procedure.

`GOTO` helped me understand how execution jumps to a labelled statement. Rewriting the salary review with `IF ... ELSE` made the logic easier to follow because it removed the jumps and labels.

Functions made calculations reusable. I used them to calculate annual salary, years of service, and tax, and to return department names. Calling these functions in one SQL query produced a combined employee report.

I also learned to check that functions exist before calling them. When `YEARS_OF_SERVICE` caused an `ORA-00904` error, creating the function and checking it with `SHOW ERRORS` was the next step.

The payroll validator demonstrated how a procedure can check employee records and report invalid salaries. Overall, the assignment helped me understand when to use conditional statements, functions, and procedures.

## Outcome
The assignment reinforced the practical use of PL/SQL for solving business logic problems in Oracle databases, especially when working with employee data, payroll checks, and reusable query logic.
