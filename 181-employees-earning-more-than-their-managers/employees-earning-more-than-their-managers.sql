# Write your MySQL query statement below

/* Thought process:
1. We need access for employee salary and the manager salary
2. We need to match the manager id 
3. Select the empoyee ids where emp salary > manager salary 
*/

SELECT e.name as Employee 
FROM Employee e JOIN Employee m
    ON e.managerId = m.id
WHERE e.salary > m.salary 
