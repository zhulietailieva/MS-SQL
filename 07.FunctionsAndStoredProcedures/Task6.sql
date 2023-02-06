CREATE PROC usp_EmployeesBySalaryLevel (@salaryLevel VARCHAR(10))
AS SELECT FirstName,LastName 
FROM Employees
WHERE 
	(SELECT dbo.ufn_GetSalaryLevel(Salary)) = @salaryLevel

EXEC dbo.usp_EmployeesBySalaryLevel 'High'
DROP PROC dbo.usp_EmployeesBySalaryLevel
