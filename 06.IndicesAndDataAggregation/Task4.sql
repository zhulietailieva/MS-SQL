SELECT TOP(2) DepositGroup
FROM
(
SELECT
DepositGroup, 
AVG(MagicWandSize) AS [RES] FROM WizzardDeposits
GROUP BY DepositGroup
) AS RESULT
ORDER BY RES