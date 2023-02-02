SELECT SUM([second].DepositAmount-[first].DepositAmount) 
FROM WizzardDeposits AS [first]
JOIN WizzardDeposits AS [second]
ON [first].Id=[second].id+1