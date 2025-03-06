CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);


INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(1, 'Chemistry'),
(2, 'Physics'),
(3, 'Maths');

INSERT INTO Students(StudentID, FirstName, LastName, DepartmentID) VALUES
(1, 'Tony', 'Stark', 1),
(2, 'Jaden', 'Smith', 2),
(3, 'Peter', 'Parker', 1),
(4, 'Sarah', 'James', 3);

SELECT Students.FirstName, Students.LastName, Department.DepartmentName
FROM Students
INNER JOIN Department ON Students.DepartmentID = Department.DepartmentID;

--another method
SELECT FirstName, LastName, (SELECT DepartmentName FROM Department WHERE DepartmentID = Students.DepartmentID) AS DepartmentName FROM Students;