# Write your MySQL query statement below
/* Thought process:
1. id != p_id and pid is NULL -> Root
2. pid != id AND pid = 1 
*/

SELECT id,
CASE 
WHEN p_id IS NULL THEN 'Root'
WHEN id IN (SELECT p_id FROM tree) THEN 'Inner'
ELSE 'Leaf' 
END AS type
FROM tree