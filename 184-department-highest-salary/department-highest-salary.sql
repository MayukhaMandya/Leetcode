# Write your MySQL query statement below
/* Thought Process:
1. Use window fucntion
2. use partition by 
*/
WITH temp as(
    SELECT d.name AS Department, e.name AS Employee, e.salary,
    MAX(e.salary) OVER(PARTITION BY e.departmentId) AS dept_max
    FROM Employee e JOIN Department d
    ON e.departmentId  = d.id
)
SELECT Department, Employee, Salary
FROM temp
WHERE Salary = dept_max