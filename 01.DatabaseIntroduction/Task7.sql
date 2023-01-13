CREATE TABLE People 
(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(200) NOT NULL,
	Picture VARBINARY(MAX),
	CHECK (DATALENGTH([Picture]) <= 2000000),
	Height DECIMAL(3,2),
	[Weight] DECIMAL(5,2),
	Gender CHAR(1) NOT NULL,
	CHECK([Gender] = 'm' OR [Gender] = 'f'),
	[Birthdate] DATE NOT NULL,
	Biography NVARCHAR(MAX)
)

INSERT INTO People([Name], Height, [Weight], Gender, Birthdate,Biography)
	VALUES
('Petar Petrov', 1.75, 80, 'm', '1999-09-09','Bio1'),
('Georgi Georgiev', 2.00, 90, 'm', '2000-01-01','Bio1'),
('Zhulieta Ilieva', 1.70, 52, 'f', '2003-12-06','Bio1'),
('Ivan Ivanov', 1.95, 95, 'm', '1998-02-02','Bio1'),
('Maria Mineva', 1.67, 52, 'f', '2001-03-03','Bio1')

SELECT * FROM People

