# Write your MySQL query statement below
/*Constraints:
1. 30 days ending on 27th July 2019
2. Should make atleast one activity in thatt time frame
*/
SELECT activity_date AS day, COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY) AND '2019-07-27'
GROUP BY activity_date