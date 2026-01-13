# Write your MySQL query statement below
/* Thought Process:
1. We need to find customers who never ordered i.e where id in Orders table is NULL
2. To do that we need to use custId and Join the table Customers and Orders to display
*/
SELECT c.name as Customers
FROM Customers c LEFT JOIN Orders o
ON o.customerId = c.id 
WHERE o.id IS NULL