# Write your MySQL query statement below
SELECT users.user_id buyer_id, users.join_date, COUNT(orders.order_date) orders_in_2019 
FROM users
LEFT JOIN orders 
ON users.user_id = orders.buyer_id AND YEAR(orders.order_date) = '2019' 
GROUP BY users.user_id