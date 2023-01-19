USE Geography;
GO

--Display the "CountryName", "CountryCode", and information about its "Currency": either "Euro" or "Not Euro"

SELECT CountryName,CountryCode,
CASE
	WHEN CurrencyCode='EUR' THEN 'Euro'
	ElSE 'Not Euro'
END AS Currency
FROM Countries
