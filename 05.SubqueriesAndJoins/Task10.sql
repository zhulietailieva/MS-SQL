SELECT TOP(50)
e.EmployeeID
,CONCAT_WS(' ',e.FirstName,e.LastName) AS [EmployeeName]
,CONCAT_WS(' ',m.FirstName,m.LastName) AS [ManagerName]
,d.Name AS [DepartmentName]
FROM Employees AS e
JOIN Employees as m
ON e.ManagerID=m.EmployeeID
JOIN Departments as d
ON e.DepartmentID=d.DepartmentID
ORDER BY e.EmployeeID
