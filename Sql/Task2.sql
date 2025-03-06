CREATE TABLE Car (
    CarID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
	Brand VARCHAR(100),
	Colour VARCHAR(100),
    Owner VARCHAR(100) NOT NULL,
    OwnerEmail VARCHAR(100) UNIQUE,
    ManufactureYear INT,
    Origin VARCHAR(50),
    NumberOfUnits INT,
    Price DECIMAL(10, 2)
);


INSERT INTO Car VALUES ('R8','Audi','Grey','Tony','tony@gmail.com',2012,'Germany',1203,200000);
INSERT INTO Car VALUES ('Huracan','Lamborghini','Orange','Wanda','wanda@gmail.com',2015,'Italy',333,350000);
INSERT INTO Car VALUES ('Mustang','Ford','Purple','Chris','chris@gmail.com',2017,'US',543,250000);
INSERT INTO Car VALUES ('LaFerrari','Ferrari','Red','Mike','mike@gmail.com',2013,'Italy',246,400000);
INSERT INTO Car VALUES ('GLS','Mercedes','White','Steve','steve@gmail.com',2020,'Germany',3404,230000);
INSERT INTO Car VALUES ('M5','BMW','Grey','Dustin','dustin@gmail.com',2022,'Germany',1645,320000);

SELECT * FROM Car;

UPDATE Car SET NumberOfUnits = NumberOfUnits - 1 WHERE CarID = 1;

SELECT * FROM Car WHERE Origin = 'Germany';

DELETE FROM Car WHERE CarID = 2;

