CREATE PROCEDURE uspManageStudents
    @Action VARCHAR(10), 
    @StudentID INT = NULL,
    @FirstName VARCHAR(50) = NULL,
    @LastName VARCHAR(50) = NULL,
    @DepartmentID INT = NULL
AS
BEGIN
    IF @Action = 'CREATE'
    BEGIN
        INSERT INTO Students (StudentID, FirstName, LastName, DepartmentID)
        VALUES (@StudentID, @FirstName, @LastName, @DepartmentID);
    END
    ELSE IF @Action = 'READ'
    BEGIN
        SELECT StudentID, FirstName, LastName, DepartmentID
        FROM Students
        WHERE (@StudentID IS NULL OR StudentID = @StudentID);
    END
    ELSE IF @Action = 'UPDATE'
    BEGIN
        UPDATE Students
        SET FirstName = @FirstName, LastName = @LastName, DepartmentID = @DepartmentID
        WHERE StudentID = @StudentID;
    END
    ELSE IF @Action = 'DELETE'
    BEGIN
        DELETE FROM Students
        WHERE StudentID = @StudentID;
    END
END;


EXEC uspManageStudents 'CREATE',5, 'Captain', 'America', 2;

EXEC uspManageStudents 'READ';

EXEC uspManageStudents 'READ', 1;

EXEC uspManageStudents 'UPDATE', 1, 'John', 'Doe', 3;

EXEC uspManageStudents 'DELETE', 4;