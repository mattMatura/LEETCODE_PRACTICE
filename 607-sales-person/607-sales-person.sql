# Write your MySQL query statement below
SELECT DISTINCT(s.name)
FROM SalesPerson s 
LEFT JOIN Orders o 
ON s.sales_id = o.sales_id
WHERE s.sales_id NOT IN (
    SELECT o.sales_id
        FROM Orders o 
        JOIN company c 
        ON o.com_id = c.com_id
    WHERE c.name = 'RED'
)