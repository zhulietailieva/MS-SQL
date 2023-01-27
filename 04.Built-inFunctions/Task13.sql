SELECT p.PeakName,r.RiverName
,LOWER(Concat(LEFT(p.PeakName,LEN(p.PeakName)-1),r.RiverName)) 
AS Mix FROM Peaks AS p,Rivers as r
WHERE RIGHT(p.PeakName,1)=LEFT(r.RiverName,1)
ORDER BY Mix