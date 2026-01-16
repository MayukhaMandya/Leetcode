# Write your MySQL query statement below

/* METHOD 1 - This mehtod doesn't work for NULL cases

SELECT salary as SecondHighestSalary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1 
*/

SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary NOT IN (SELECT MAX(salary) FROM Employee)