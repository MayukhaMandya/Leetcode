# Write your MySQL query statement below
/*Thought Process:
1. We look at the numbers , have a counter 
2. Then we check if the countter val > 3 , if yes then we print that num
*/

SELECT DISTINCT a.num AS ConsecutiveNums
FROM Logs a 
    JOIN Logs b
        ON a.id = b.id + 1 AND a.num = b.num
    JOIN Logs c
        ON a.id = c.id + 2 AND a.num = c.num