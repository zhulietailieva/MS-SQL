SELECT TOP(50) 
[Name],FORMAT(Start,'yyyy-MM-dd') AS Start
FROM Games 
WHERE Start>'2010-12-31 23:59' AND Start<'2013-1-1 00:00'
ORDER BY Start,[Name]