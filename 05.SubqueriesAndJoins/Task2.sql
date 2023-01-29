
SELECT TOP(50) e.FirstName,e.LastName,t.Name,a.AddressText 
FROM Employees AS e
JOIN Addresses as a
ON e.AddressID=a.AddressID
JOIN Towns as t
ON a.TownID=t.TownID
ORDER BY e.FirstName,e.LastName