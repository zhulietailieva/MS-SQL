SELECT c.CountryCode,COUNT(mc.CountryCode)AS [MountainRanges]
FROM Countries AS c
LEFT JOIN MountainsCountries AS mc
ON c.CountryCode=mc.CountryCode
JOIN Mountains AS m
ON mc.MountainId=m.Id
WHERE c.CountryName IN ('United States','Russia ','Bulgaria')
GROUP BY c.CountryCode
