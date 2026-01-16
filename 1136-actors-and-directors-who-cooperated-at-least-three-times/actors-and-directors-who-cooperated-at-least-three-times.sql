# Write your MySQL query statement below

/*Thought Process:
1. We need to find instances where actor id == diretor id 
2. We then count the frequencies 
*/
SELECT actor_id, director_id 
FROM ActorDirector
GROUP BY director_id, actor_id 
HAVING COUNT(timestamp) >= 3