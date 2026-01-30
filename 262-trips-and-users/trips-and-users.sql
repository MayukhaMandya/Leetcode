# Write your MySQL query statement below
/*Thought Process: 
1. Look at the date, for one particular day 
2. Look at the COUNT(day)
3. Then look at the status , GROUP BY the statu
4. Also look at banned status 
5. Cancellation rate = #of cancelled requests / total # of requests
*/

SELECT request_at AS "Day", ROUND(SUM(IF(status != "completed", 1, 0)) / COUNT(status), 2) AS "Cancellation Rate"
FROM Trips 
WHERE request_at >= "2013-10-01" AND request_at <= "2013-10-03"
AND client_id NOT IN(SELECT users_id FROM Users WHERE banned = "Yes") AND 
driver_id NOT IN (SELECT users_id FROM Users WHERE banned = "Yes") 
GROUP BY request_at