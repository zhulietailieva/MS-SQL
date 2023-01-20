USE Geography
GO

SELECT name
FROM sys.tables

SELECT * FROM Mountains
SELECT * FROM Peaks

SELECT Mountains.MountainRange,Peaks.PeakName,Peaks.Elevation 
FROM Peaks JOIN Mountains 
ON Mountains.Id=Peaks.MountainId
WHERE Mountains.MountainRange='Rila'
ORDER BY Peaks.Elevation DESC