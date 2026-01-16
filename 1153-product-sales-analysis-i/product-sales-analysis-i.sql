# Write your MySQL query statement below
/*Thought Process:
1. Need to display product name, year , price for every saled id 

*/

SELECT p.product_name, s.year, s.price
FROM Sales s LEFT JOIN Product p
ON s.product_id = p.product_id
