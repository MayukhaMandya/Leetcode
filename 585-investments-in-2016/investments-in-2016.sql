# Write your MySQL query statement below
/*Thoguht Process: 
1. Group by tiv_2015

*/

SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM(
    SELECT tiv_2016,
    COUNT(*) OVER(PARTITION BY tiv_2015) AS count_of_2015s,
    COUNT(*) OVER(PARTITION BY lat, lon) AS count_of_same_cities
    FROM Insurance
) AS subquery
WHERE count_of_2015s > 1 AND count_of_same_cities = 1