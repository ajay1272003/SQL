CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Position VARCHAR(50),
    Salary DECIMAL(10, 2) NOT NULL
);


INSERT INTO Employee (Name, Department, Position, Salary)
VALUES 
('Tony Stark', 'Design', 'Designer', 70000),
('Steve Smith', 'HR', 'Developer', 60000),
('Jackie Chan', 'IT', 'Recruiter', 40000),
('Jenna Ortega', 'IT', 'Developer', 55000),
('Sabrina Carpenter', 'Design', 'Recruiter', 65000),
('Emma Watson', 'HR', 'Manager', 75000);

SELECT Department, COUNT(*) AS NumberOfEmployees
FROM Employee
GROUP BY Department;

