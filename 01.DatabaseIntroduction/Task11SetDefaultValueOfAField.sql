CREATE TABLE Users
(
Id BIGINT IDENTITY(1,1) PRIMARY KEY NOT NULL,
Username VARCHAR(30) UNIQUE NOT NULL,
[Password] VARCHAR(26) NOT NULL,
ProfilePicture VARCHAR(MAX),
LastLoginTime DATETIME,
IsDeleted BIT
)

INSERT INTO Users
VALUES
('Ivan','123444','image','12/12/2022',0),
('Petar','234441','image','3/12/2022',1),
('Yoan','123544','image','06/07/2021',0),
('Zhulieta','123251','image','12/19/2021',0),
('Maria','123111','image','12/22/2022',1)

SELECT * FROM Users

ALTER TABLE Users
ADD CONSTRAINT Default_LastLoginTime DEFAULT GETDATE() FOR LastLoginTime