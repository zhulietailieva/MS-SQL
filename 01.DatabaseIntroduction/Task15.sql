CREATE DATABASE Hotel;
GO
USE Hotel;

CREATE TABLE Employees
(
Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
FirstName NVARCHAR(20) NOT NULL,
LastName NVARCHAR(20) NOT NULL,
Title NVARCHAR(20) NOT NULL,
Notes NVARCHAR(MAX)
)

INSERT INTO Employees 
VALUES
('Yoan','Marinov','receptionist',NULL),
('Zhulieta','Ilieva','receptionist',NULL),
('John','Doe','manager',NULL)

CREATE TABLE Customers
(
AccountNumber INT PRIMARY KEY NOT NULL,
FirstName NVARCHAR(20) NOT NULL,
LastName NVARCHAR(20) NOT NULL,
PhoneNumber CHAR(10) NOT NULL,
EmergencyName NVARCHAR(20) NOT NULL,
EmergencyNumber CHAR(10) NOT NULL,
Notes NVARCHAR(MAX)
)

INSERT INTO Customers 
VALUES
(1234,'Vasil','Vasilev','0878536669','Ivan Stoev','0878454545',NULL),
(12344552,'Yana','Yaneva','0878454541','Yavor Manev','0896354522',NULL),
(75848,'Krasimira','Nacheva','088887855','Lili Ivanova','0876741125',NULL)

SELECT * FROM Customers

CREATE TABLE RoomStatus
(
RoomStatus NVARCHAR(20) PRIMARY KEY NOT NULL,
Notes NVARCHAR(MAX)
)

INSERT INTO RoomStatus
VALUES
('cleaned',NULL),
('available',NULL),
('not available',NULL)

SELECT * FROM RoomStatus

CREATE TABLE RoomTypes
(
RoomType NVARCHAR(20) PRIMARY KEY NOT NULL,
Notes NVARCHAR(MAX)
)

INSERT INTO RoomTypes
VALUES
('big',NULL),
('small',NULL),
('average',NULL)

SELECT * FROM RoomTypes

CREATE TABLE BedTypes
(
BedType NVARCHAR(20) PRIMARY KEY NOT NULL,
Notes NVARCHAR(MAX)
)

INSERT INTO BedTypes
VALUES
('for 1',NULL),
('for 2',NULL),
('sofa',NULL)

SELECT * FROM BedTypes

CREATE TABLE Rooms
(
RoomNumber VARCHAR(5) PRIMARY KEY NOT NULL,
RoomType NVARCHAR(20) NOT NULL,
BedType NVARCHAR(20) NOT NULL,
Rate TINYINT,
RoomStatus NVARCHAR(20)NOT NULL,
Notes NVARCHAR(MAX),
FOREIGN KEY (RoomType) REFERENCES RoomTypes(RoomType),
FOREIGN KEY (BedType) REFERENCES BedTypes(BedType),
FOREIGN KEY (RoomStatus) REFERENCES RoomStatus(RoomStatus),
)

INSERT INTO Rooms
VALUES
('203A','big','sofa',4,'cleaned',NULL),
('307','small','for 1',10,'available',NULL),
('509A','big','for 2',8,'not available',NULL)

SELECT * FROM Rooms

CREATE TABLE Payments
(
Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
EmployeeId INT NOT NULL,
PaymentDate DATE,
AccountNumber INT NOT NULL,
FirstDateOccupied DATE,
LastDateOccupied DATE,
TotalDays TINYINT,
TaxRate INT,
TaxAmount DECIMAL(5,2),
PaymentTotal DECIMAL(6,2) NOT NULL,
Notes NVARCHAR(MAX),
FOREIGN KEY (EmployeeId) REFERENCES Employees(Id),
FOREIGN KEY (AccountNumber) REFERENCES Customers(AccountNumber),
)

INSERT INTO Payments 
VALUES
(1,NULL,1234,NULL,NULL,4,20,NULL,100,NULL),
(2,NULL,1234,NULL,NULL,5,25,NULL,110,NULL),
(1,NULL,1234,NULL,NULL,6,27,NULL,120,NULL)

SELECT * FROM Payments

CREATE TABLE Occupancies
(
Id INT IDENTITY(1,1) PRIMARY KEY NOT  NULL,
EmployeeId INT NOT NULL,
DateOccupied DATE,
AccountNumber INT NOT NULL,
RoomNumber VARCHAR(5) NOT NULL,
RateApplied SMALLINT,
PhoneCharge SMALLINT,
Notes NVARCHAR(MAX),
FOREIGN KEY (EmployeeId) REFERENCES Employees(Id),
FOREIGN KEY (RoomNumber) REFERENCES Rooms(RoomNumber)
)

INSERT INTO Occupancies
VALUES
(1,NULL,1234,'203A',NULL,NULL,NULL),
(2,NULL,1234,'509A',NULL,NULL,NULL),
(2,NULL,1234,'307',NULL,NULL,NULL)

SELECT * FROM Occupancies