# Write your MySQL query statement below
/* Thought process:
1. We need to find iis where curr temp > prev temp

*/

SELECT w2.id
FROM Weather w1 JOIN Weather w2
ON DATEDIFF(w2.recordDate, w1.recordDATE) = 1 
AND w2.temperature > w1.temperature 
