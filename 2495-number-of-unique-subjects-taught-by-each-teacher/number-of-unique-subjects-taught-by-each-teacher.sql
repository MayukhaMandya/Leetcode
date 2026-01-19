# Write your MySQL query statement below
/* Thought Process:
1. We can group by teacher id 
2. Then count the frequency 
*/

SELECT teacher_id, COUNT(DISTINCT(subject_id)) as cnt
FROM Teacher
GROUP BY teacher_id