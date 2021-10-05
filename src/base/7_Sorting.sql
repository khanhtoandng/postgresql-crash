-- Two variants on sorting
SELECT *
FROM products
ORDER BY price, weght DESC;

-- OFFSET
SELECT *
FROM users
OFFSET 40;

-- LIMIT
SELECT *
FROM users
LIMIT 2;

-- Ex17
select name 
from phones
order by price desc
limit 2
offset 1