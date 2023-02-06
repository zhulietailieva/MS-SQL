USE SoftUni
GO
CREATE PROC dbo.usp_GetEmployeesSalaryAbove35000 
AS 
SELECT [FirstName],[LastName] FROM Employees
WHERE Salary>35000
GO
EXEC dbo.usp_GetEmployeesSalaryAbove35000