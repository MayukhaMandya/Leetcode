# Write your MySQL query statement below
/* Thought Process:
1. Names of all sales persons , no orders related to RED company

*/

SELECT name
FROM SalesPerson 
WHERE sales_id NOT IN (
    SELECT sales_id 
    FROM Orders o 
    JOIN Company c 
    ON o.com_id=c.com_id 
    AND c.name = "RED"
);