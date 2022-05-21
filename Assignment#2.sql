Use SQLAssignments

SELECT LEFT(First_name , 3) AS 'First 3 Letters'
FROM Worker

SELECT CHARINDEX('a',First_Name) AS pos
FROM Worker
WHERE First_Name= 'Shreyansh'

WITH W1 AS (SELECT  [DEPARTMENT]  AS Department , MAX([Salary]) AS Salary
FROM Worker
GROUP BY  [DEPARTMENT])
SELECT w.First_name , w.Last_name, w.DEPARTMENT , w.Salary 
FROM Worker w
JOIN W1 
ON w.DEPARTMENT = W1.Department AND w.Salary = W1.Salary