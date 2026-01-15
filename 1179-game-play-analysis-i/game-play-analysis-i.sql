# Write your MySQL query statement below
/* Thought Process
1. We can self join the table based on player id 

*/

SELECT player_id, MIN(event_date) AS first_login
FROM Activity 
GROUP BY player_id