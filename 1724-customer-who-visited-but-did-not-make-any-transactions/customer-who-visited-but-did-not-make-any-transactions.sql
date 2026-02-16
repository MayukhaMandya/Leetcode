# Write your MySQL query statement below
/*Thought Process:
(Visited without making any transactons and no.of times this happened)
1. Visits -> Customers who vivited the mall
2. Transactions -> Customers who made transactions
3. We need to find the common visit_ids in both the tables
*/
SELECT v.customer_id, COUNT(DISTINCT v.visit_id) AS count_no_trans
FROM Visits v LEFT JOIN Transactions t
ON t.visit_id = v.visit_id
WHERE t.transaction_id IS NULL
GROUP BY customer_id

