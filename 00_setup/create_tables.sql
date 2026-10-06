-- Create Employees table
CREATE TABLE Employees (
    EmployeeID NUMBER PRIMARY KEY,
    FirstName VARCHAR2(50),
    LastName VARCHAR2(50),
    Salary NUMBER,
    HireDate DATE,
    JobID VARCHAR2(10),
    DepartmentID NUMBER
);

-- Create Departments table
CREATE TABLE Departments (
    DepartmentID NUMBER PRIMARY KEY,
    DepartmentName VARCHAR2(100)
);

-- Create Jobs table
CREATE TABLE Jobs (
    JobID VARCHAR2(10) PRIMARY KEY,
    MinSalary NUMBER,
    MaxSalary NUMBER
);

-- Insert sample data
INSERT INTO Departments VALUES (10, 'IT');
INSERT INTO Departments VALUES (20, 'HR');
INSERT INTO Departments VALUES (30, 'Finance');

INSERT INTO Jobs VALUES ('IT_PROG', 4000, 10000);
INSERT INTO Jobs VALUES ('HR_REP', 3000, 8000);
INSERT INTO Jobs VALUES ('FIN_ACC', 5000, 12000);

INSERT INTO Employees VALUES (101, 'John', 'Doe', 6000, TO_DATE('2020-01-15','YYYY-MM-DD'), 'IT_PROG', 10);
INSERT INTO Employees VALUES (102, 'Jane', 'Smith', 4500, TO_DATE('2021-06-20','YYYY-MM-DD'), 'HR_REP', 20);
INSERT INTO Employees VALUES (103, 'Bob', 'Johnson', 9000, TO_DATE('2019-03-10','YYYY-MM-DD'), 'FIN_ACC', 30);
INSERT INTO Employees VALUES (104, 'Alice', 'Brown', 5500, TO_DATE('2022-11-05','YYYY-MM-DD'), 'IT_PROG', 10);

COMMIT;
