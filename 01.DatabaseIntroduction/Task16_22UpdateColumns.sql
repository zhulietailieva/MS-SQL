CREATE DATABASE SoftUni;
GO
USE SoftUni;

CREATE TABLE Towns
(
Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
[Name] NVARCHAR(50) NOT NULL
)

CREATE TABLE Addresses
(
Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
AddressText NVARCHAR(100) NOT NULL,
TownId INT FOREIGN KEY REFERENCES Towns(Id) NOT NULL 
)

CREATE TABLE Departments
(
Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
[Name] NVARCHAR(50) NOT NULL
)

CREATE TABLE Employees
(
Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
FirstName NVARCHAR(20) NOT NULL,
MiddleName NVARCHAR(20) NOT NULL,
LastName NVARCHAR(20) NOT NULL,
JobTitle NVARCHAR(20) NOT NULL,
DepartmentId INT FOREIGN KEY REFERENCES Departments(Id) NOT NULL,
HireDate DATE,
Salary DECIMAL(7,2),
AddressId INT FOREIGN KEY REFERENCES Addresses(Id)
)

SELECT * FROM Towns
SELECT * FROM Addresses
SELECT * FROM Employees

DROP DATABASE SoftUni

RESTORE DATABASE SoftUni FROM DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\Backup\softuni-backup.bak' WITH RECOVERY

USE SoftUni;
GO


INSERT INTO Towns 
VALUES
('Sofia'),
('Plovdiv'),
('Varna'),
('Burgas')

INSERT INTO Departments
VALUES
('Engineering'),
('Sales'),
('Marketing'),
('Software Development'),
('Quality Assurance')

INSERT INTO Employees(FirstName, MiddleName, LastName, JobTitle, DepartmentId, HireDate, Salary) VALUES
('Ivan', 'Ivanov', 'Ivanov', '.NET Developer', 4, '2013-01-02', 3500.00),
('Petar', 'Petrov', 'Petrov', 'Senior Engineer', 1, '2004-02-03', 4000.00),
('Maria', 'Petrova', 'Ivanova', 'Intern', 5, '2016-08-28', 525.25),
('Georgi', 'Teziev', 'Ivanov', 'CEO', 2, '2007-12-09', 3000.00),
('Peter', 'Pan', 'Pan', 'Intern', 3, '2016-08-28', 599.88)

SELECT * FROM Towns
SELECT * FROM Departments
SELECT * FROM Employees

SELECT * FROM Towns ORDER BY ([Name])
SELECT * FROM Departments ORDER BY ([Name])
SELECT * FROM Employees ORDER BY (Salary) DESC

SELECT [Name] FROM Towns ORDER BY([Name])
SELECT [Name] FROM Departments ORDER BY ([Name])
SELECT FirstName, LastName, JobTitle, Salary FROM Employees ORDER BY (Salary) DESC

SELECT Salary FROM Employees

UPDATE Employees
SET Salary=Salary+0.1*Salary

SELECT Salary FROM Employees




