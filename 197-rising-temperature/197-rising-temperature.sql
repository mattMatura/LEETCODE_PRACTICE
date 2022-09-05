# Write your MySQL query statement below
SELECT w2.id 
from Weather w1, Weather w2
where w2.temperature > w1.temperature AND
	to_days(w2.recordDate) - to_days(w1.recordDate) = 1;