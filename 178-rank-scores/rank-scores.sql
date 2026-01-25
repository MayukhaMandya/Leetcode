# Write your MySQL query statement below

/*THOUGHT PROCESS:
1. Sort scores in descending order 
2. We'll use window fucntion
*/

SELECT score, DENSE_RANK() OVER(ORDER BY score DESC) AS "rank"
FROM Scores 