
SELECT TOP(5)
c.CountryName,r.RiverName 
FROM Countries AS c
JOIN CountriesRivers AS cr
ON c.CountryCode=cr.CountryCode
JOIN Rivers AS r
ON cr.RiverId=r.Id
WHERE ContinentCode='AF'
ORDER BY c.CountryName
