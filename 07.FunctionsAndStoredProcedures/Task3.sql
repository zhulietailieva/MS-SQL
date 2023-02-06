CREATE PROC usp_GetTownsStartingWith(@StartString NVARCHAR(100))
AS SELECT [Name] FROM Towns
WHERE [Name] LIKE @StartString+'%'

EXEC dbo.usp_GetTownsStartingWith 'b'