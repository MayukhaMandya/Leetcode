# Write your MySQL query statement below


/* METHOD 1 - USINg SELF JOIN

SELECT DISTINCT e1.email as Email
FROM Person e1 JOIN Person e2
ON e1.email = e2.email AND e1.id != e2.id

*/
SELECT email FROM 
(SELECT email, COUNT(email) as c 
FROM Person
GROUP BY email) AS temp
WHERE c > 1