# Write your MySQL query statement below
/*THOUGHT PROCESS:
1. Use sub queries
*/
SELECT d.name AS Department, x.name AS Employee, x.salary AS Salary
FROM(
    SELECT e.*,
    DENSE_RANK() OVER(PARTITION BY e.departmentId ORDER BY e.salary DESC) AS rnk
    FROM Employee e
) x
JOIN Department d
ON x.departmentId = d.id
WHERE x.rnk <= 3 
  