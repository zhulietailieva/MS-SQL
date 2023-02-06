CREATE FUNCTION dbo.ufn_IsWordComprised(@setOfLetters VARCHAR(100), @word VARCHAR(10)) 
RETURNS BIT
AS BEGIN
 DECLARE @count INT = 1;
	WHILE @count <= LEN(@word)
	BEGIN
		IF (CHARINDEX(SUBSTRING(@word, @count, 1), @setOfLetters)) = 0
			RETURN 0;
		SET @count += 1
	END
RETURN 1
END
GO
SELECT dbo.ufn_IsWordComprised('oistmiahf', 'Sofia')
