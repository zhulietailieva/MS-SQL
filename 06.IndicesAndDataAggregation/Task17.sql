SELECT COUNT(Salary) AS [Count]
FROM Employees
WHERE ManagerID IS NULL
GROUP BY ManagerID
