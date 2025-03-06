CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    Position VARCHAR(50),
    Salary DECIMAL(10, 2) NOT NULL
);

INSERT INTO Employee (Name, Position, Salary)
VALUES 
('Tony Stark', 'CEO', 100000),
('Steve Smith', 'Editor', 70000),
('Jackie Chan', 'Designer', 90000),
('Jenna Ortega', 'Developer', 50000),
('Sabrina Carpenter', 'Manager', 60000);

SELECT MAX(Salary) AS SecondHighestSalary 
FROM Employee
WHERE Salary < (SELECT MAX(Salary) FROM Employee);
