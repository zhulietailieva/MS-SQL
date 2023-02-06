CREATE PROC usp_GetEmployeesFromTown(@TownName NVARCHAR(50))
AS SELECT e.FirstName,e.LastName FROM Employees AS e
LEFT JOIN Addresses AS a
ON e.AddressID=a.AddressID LEFT JOIN Towns as t
ON a.TownID=t.TownID
WHERE t.[Name]=@TownName

EXEC dbo.usp_GetEmployeesFromTown 'Sofia'


