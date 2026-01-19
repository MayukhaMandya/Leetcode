# Write your MySQL query statement below

/* Thought Process: 
1. Need to FInd ids where low fat = Y and recyclable = Y
*/
SELECT product_id
FROM Products 
WHERE low_fats = 'Y' AND recyclable = 'Y'