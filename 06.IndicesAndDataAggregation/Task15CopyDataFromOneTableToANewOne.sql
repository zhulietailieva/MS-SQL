SELECT * INTO [AverageSalaries]
	FROM [Employees]
   WHERE [Salary] > 30000

DELETE FROM AverageSalaries
WHERE ManagerID=42

SELECT * FROM AverageSalaries

UPDATE AverageSalaries
SET Salary=Salary+5000
WHERE DepartmentId=1

SELECT DepartmentID,AVG(Salary) AS [AverageSalary]
FROM AverageSalaries
GROUP BY DepartmentID
	