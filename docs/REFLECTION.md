# Reflection

In this assignment, I learned how to use `GOTO` statements, create PL/SQL functions, call functions in SQL queries, and write a payroll validation procedure.

## Key learning points

- `GOTO` helped me understand how execution can jump to a labelled statement. Rewriting the salary review with `IF ... ELSE` made the logic easier to follow because it removed the jumps and labels.
- Functions made calculations reusable. I used them to calculate annual salary, years of service, and tax, and to return department names.
- Calling these functions in a single SQL query produced a combined employee report, which showed how reusable logic can be integrated into database queries.
- I also learned the importance of checking whether a function already exists before calling it. When `YEARS_OF_SERVICE` caused an `ORA-00904` error, creating the function and verifying it with `SHOW ERRORS` was the next step.
- The payroll validator demonstrated how a procedure can review employee records and report invalid salaries.

## Conclusion

Overall, this assignment helped me understand when to use conditional statements, functions, and procedures in PL/SQL. It also improved my ability to debug errors and write cleaner, more maintainable database logic.