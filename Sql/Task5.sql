CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);


INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID) VALUES
(1, 'Tony', 'Stark', 1),
(2, 'Steve', 'Smith', 2),
(3, 'Peter', 'Parker', 1),
(4, 'Justin', 'Bieber', 3),
(5, 'Vinn', 'Diesel', 6);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Editing'),
(2, 'Cinematography'),
(3, 'Actor'),
(4, 'Choreograher'),
(5, 'Marketing');

SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
RIGHT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
FULL OUTER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;