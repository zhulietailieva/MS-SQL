
CREATE TABLE ItemTypes
(
ItemTypeID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
[Name] VARCHAR(100)
)

CREATE TABLE Items
(
ItemID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
[Name] VARCHAR(100),
ItemTypeID INT FOREIGN KEY REFERENCES ItemTypes(ItemTypeID)
)

CREATE TABLE Cities
(
CityID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
[Name] VARCHAR(50)
)

CREATE TABLE Customers
(
CustomerID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
[Name] VARCHAR(50),
Birthday DATE,
CityID INT FOREIGN KEY REFERENCES Cities(CityID)
)

CREATE TABLE Orders
(
OrderID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
CustomerID INT FOREIGN KEY REFERENCES Customers(CUstomerID)
)

CREATE TABLE OrderItems
(
OrderID INT REFERENCES Orders(OrderID),
ItemID INT REFERENCES Items(ItemID),
PRIMARY KEY(OrderID,ItemID)
)
