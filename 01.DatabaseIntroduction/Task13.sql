CREATE DATABASE Movies;
GO
USE Movies;

CREATE TABLE Directors
(
Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
DirectorName NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)

INSERT INTO Directors(DirectorName)
VALUES
('Ivan Ivanov'),
('Petar Petrov'),
('Zhulieta Ilieva'),
('Stoyan Stoyanov'),
('Maria Mineva')

SELECT * FROM Directors

CREATE TABLE Genres
(
Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
GenreName NVARCHAR(20) NOT NULL,
Notes NVARCHAR(MAX)
)

INSERT INTO Genres(GenreName)
VALUES
('Comedy'),
('Drama'),
('Horror'),
('Sci-fi'),
('Documentary')

SELECT * FROM Genres

CREATE TABLE Categories 
(
Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
CategoryName NVARCHAR(20) NOT NULL,
Notes NVARCHAR(MAX)
)

INSERT INTO Categories (CategoryName)
VALUES
('Romance'),
('Adventure'),
('Thriller'),
('War'),
('Mystery')

SELECT * FROM Categories 

CREATE TABLE Movies
(
Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
Title NVARCHAR(50) NOT NULL,
DirectorId INT NOT NULL,
CopyrightYear SMALLINT NOT NULL,
[Length] TIME NOT NULL,
GenreId INT NOT NULL,
CategoryId INT NOT NULL,
Rating TINYINT NOT NULL,
Notes NVARCHAR(MAX),
FOREIGN KEY (DirectorId) REFERENCES Directors(Id),
FOREIGN KEY (GenreId) REFERENCES Genres(Id),
FOREIGN KEY (CategoryId) REFERENCES Categories (Id),
)

INSERT INTO Movies 
VALUES
('Movie1',1,1999,'1:55',2,3,3,'Note1'),
('Movie2',3,2018,'2:08',4,5,10,'Note2'),
('Movie3',4,2000,'1:11',3,1,6,NULL),
('Movie4',5,1966,'1:22',5,2,3,NULL),
('Movie5',2,2009,'2:45',2,5,1,'Note3')

SELECT * FROM Movies