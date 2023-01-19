USE SoftUni;

--2
SELECT * FROM Departments

--3
SELECT [Name] FROM Departments

--4
SELECT FirstName,LastName,Salary FROM Employees

--5
SELECT FirstName,MiddleName,LastName FROM Employees

--6
SELECT FirstName+'.'+LastName+'@softuni.bg' AS [Full Email Address] FROM Employees

--7
SELECT DISTINCT Salary FROM Employees

--8
SELECT * FROM Employees WHERE JobTitle='Sales Representative'

--9
SELECT FirstName,LastName,JobTitle FROM Employees WHERE Salary BETWEEN 20000 AND 30000

--10
SELECT FirstName+' '+MiddleName+' '+LastName AS [Full Name] FROM Employees WHERE Salary IN (25000, 14000, 12500 ,23600)

--11
SELECT FirstName,LastName FROM Employees WHERE ManagerID IS NULL

--12
SELECT FirstName,LastName,Salary FROM Employees WHERE Salary>50000 ORDER BY Salary DESC

--13
SELECT TOP(5) FirstName,LastName  FROM Employees ORDER BY Salary DESC

--14
SELECT FirstName,LastName FROM Employees WHERE DepartmentId<>4

--15
SELECT * FROM Employees ORDER BY Salary DESC, FirstName ASC,LastName DESC,MiddleName ASC

--16
CREATE VIEW V_EmployeesSalaries AS
SELECT FirstName,LastName,Salary FROM Employees

GO
SELECT * FROM V_EmployeesSalaries

--17
CREATE VIEW V_EmployeeNameJobTitle AS
SELECT FirstName+' '+ISNULL(MiddleName,'')+' '+LastName AS [Full Name], JobTitle AS [Job Title] FROM Employees

GO
SELECT * FROM V_EmployeeNameJobTitle

--18
SELECT DISTINCT JobTitle FROM Employees 

--19
SELECT TOP(10) * FROM Projects ORDER BY StartDate,[Name]

--20
SELECT TOP(7) FirstName,LastName,HireDate FROM Employees ORDER BY HireDate DESC

--21
BEGIN TRANSACTION
UPDATE Employees
	SET Salary = Salary * 1.12
	WHERE DepartmentID IN (1, 2, 4, 11)

SELECT Salary FROM Employees
ROLLBACK TRANSACTION



