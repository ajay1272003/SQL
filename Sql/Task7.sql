CREATE PROCEDURE uspInsertStudents
	@StudentID INT,
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @DepartmentID INT
AS
BEGIN
    INSERT INTO Students (StudentID, FirstName, LastName, DepartmentID)
    VALUES (@StudentID, @FirstName, @LastName, @DepartmentID);
END;


CREATE PROCEDURE uspGetStudents
AS
BEGIN
    SELECT StudentID, FirstName, LastName, DepartmentID
    FROM Students;
END;


CREATE PROCEDURE uspUpdateStudents
    @StudentID INT,
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @DepartmentID INT
AS
BEGIN
    UPDATE Students
    SET FirstName = @FirstName, LastName = @LastName, DepartmentID = @DepartmentID
    WHERE StudentID = @StudentID;
END;


CREATE PROCEDURE uspDeleteStudents
    @StudentID INT
AS
BEGIN
    DELETE FROM Students
    WHERE StudentID = @StudentID;
END;



EXEC uspInsertStudents 5, 'Jackie', 'Chang', 2;

EXEC uspGetStudents;

EXEC uspUpdateStudents 5, 'John', 'Cena', 3;

EXEC uspDeleteStudents 5;


