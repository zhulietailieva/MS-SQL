SELECT TOP(5) e.EmployeeID,e.JobTitle,e.AddressID,a.AddressText 
FROM Employees as e
JOIN Addresses as a
ON a.AddressID=e.AddressID
ORDER BY a.AddressID