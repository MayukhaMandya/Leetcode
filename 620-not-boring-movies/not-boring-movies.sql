# Write your MySQL query statement below

/* Thought Process
1. Movies with odd id 
2. descipton NOT boring
3. Rating in DESC 
*/

SELECT *
FROM Cinema
WHERE id % 2 != 0 AND description != 'boring'
ORDER BY rating DESC