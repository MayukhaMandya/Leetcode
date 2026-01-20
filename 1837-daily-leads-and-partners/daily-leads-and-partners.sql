# Write your MySQL query statement below
/* Thought Proess:
1. Need to gorup by date id and for each unique date we need to display unique lead ids and partner ids

*/

SELECT date_id, make_name, COUNT(DISTINCT lead_id) AS unique_leads, COUNT(DISTINCT partner_id) AS unique_partners
FROM DailySales
GROUP BY date_id, make_name 