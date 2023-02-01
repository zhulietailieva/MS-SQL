SELECT * FROM
(
SELECT 
DepositGroup,SUM(DepositAmount) AS [TotalSum] 
FROM WizzardDeposits
WHERE MagicWandCreator='Ollivander family' 
GROUP BY DepositGroup
) AS Res
WHERE TotalSum<150000
ORDER BY TotalSum DESC