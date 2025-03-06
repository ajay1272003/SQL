CREATE TABLE Owners ( OwnerID INT PRIMARY KEY, OwnerName VARCHAR(100) NOT NULL, OwnerEmail VARCHAR(100) UNIQUE NOT NULL);

CREATE TABLE Cars ( CarID INT PRIMARY KEY, CarName VARCHAR(100) NOT NULL, Description VARCHAR(100), Owner VARCHAR(100));

INSERT INTO Owners VALUES(1,'Tony','tony@gmail.com');
INSERT INTO Cars VALUES(1,'Audi','R8','Tony');
INSERT INTO Owners VALUES(2,'Groot','groot@gmail.com');
INSERT INTO Cars VALUES(2,'BMW','M5','Groot');
INSERT INTO Owners VALUES(3,'Rocket','rocket@gmail.com');
INSERT INTO Cars VALUES(3,'Tesla','Cybertruck','Rocket');
INSERT INTO Owners VALUES(4,'Thanos','thanos@gmail.com');
INSERT INTO Cars VALUES(4,'Bugatti','Chiron','Thanos');
INSERT INTO Cars VALUES(5,'Koenigsegg','Jesko','Wanda');
INSERT INTO Cars VALUES(6,'Rolls Royce','Cullinan','Hulk');
INSERT INTO Owners VALUES(7,'Peter','peter@gmail.com');
INSERT INTO Owners VALUES(8,'Thor','thor@gmail.com');


SELECT * FROM Owners INNER JOIN Cars ON Owners.OwnerID = Cars.CarID;
SELECT * FROM Owners LEFT JOIN Cars ON Owners.OwnerID = Cars.CarID;
SELECT * FROM Owners RIGHT JOIN Cars ON Owners.OwnerID = Cars.CarID;
SELECT * FROM Owners FULL OUTER JOIN Cars ON Owners.OwnerID = Cars.CarID;
SELECT * FROM Owners WHERE OwnerName LIKE '%t';
SELECT * FROM Owners WHERE OwnerName LIKE 'T%';
SELECT * FROM Cars WHERE CarName LIKE '_u%';




