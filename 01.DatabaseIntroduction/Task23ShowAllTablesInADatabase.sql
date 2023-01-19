USE Hotel;
GO

SELECT name
FROM sys.tables

SELECT TaxRate FROM Payments

UPDATE Payments
SET TaxRate=TaxRate-TaxRate*0.03

SELECT TaxRate FROM Payments