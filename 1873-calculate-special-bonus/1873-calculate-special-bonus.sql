# Write your MySQL query statement below
SELECT employee_id, 
   CASE WHEN employee_id%2 <>0 and name not like 'M%' then salary 
   else 0
   end 
   as bonus
FROM employees
ORDER BY employee_id;