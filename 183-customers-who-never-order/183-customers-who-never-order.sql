# Write your MySQL query statement below
SELECT name customers
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customerId
WHERE customerId IS NULL