CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(100) NOT NULL
);
CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    salary NUMBER(10,2) NOT NULL,
    hire_date DATE NOT NULL,
    department_id NUMBER,
    CONSTRAINT fk_emp_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);
*/insert*/
INSERT INTO departments VALUES (10, 'IT');

INSERT INTO departments VALUES (20, 'Human Resources');

INSERT INTO departments VALUES (30, 'Finance');

INSERT INTO departments VALUES (40, 'Marketing');

INSERT INTO employees
VALUES (101, 'Felicien', 'Nshimyumukiza',
        500000, DATE '2023-01-15', 10);

INSERT INTO employees
VALUES (102, 'Alice', 'Uwase',
        350000, DATE '2021-06-10', 20);

INSERT INTO employees
VALUES (103, 'Eric', 'Mugisha',
        700000, DATE '2019-03-20', 30);

INSERT INTO employees
VALUES (104, 'Diane', 'Ineza',
        450000, DATE '2024-02-01', 10);

INSERT INTO employees
VALUES (105, 'Patrick', 'Habimana',
        300000, DATE '2020-11-12', 40);