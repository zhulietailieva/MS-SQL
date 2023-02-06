CREATE PROC usp_GetEmployeesSalaryAboveNumber(@minSalary DECIMAL(18,4))
AS
SELECT FirstName,LastName FROM Employees
WHERE Salary>=@minSalary

EXEC dbo.usp_GetEmployeesSalaryAboveNumber 48100