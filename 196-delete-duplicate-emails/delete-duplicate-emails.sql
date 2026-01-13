# Write your MySQL query statement below
/* Thought Process
1. We need to self jointhe table 
2.
3. 
*/

DELETE p2
FROM Person p1 JOIN Person p2
ON p1.email = p2.email
WHERE p1.id < p2.id