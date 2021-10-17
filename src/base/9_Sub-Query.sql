-- Ex19
select name, price, price/(
    select max(price) from phones
) as price_ratio
from phones

-- Subquery in FROM
select sum(count)/count(user_id)
FROM (select user_id, count(*)
from orders
group BY user_id) as p

-- EX20
select max(avg_price) as max_average_price
from (select manufacturer, avg(price) as avg_price
from phones
group by manufacturer) as p

-- Ex21 
select name, price 
from phones
where price > (select price from phones where name = 'S5620 Monte')

-- ALL
select name
from phones
where price > ALL (select price from phones where manufacturer = 'Samsung')

-- in SELECT
Select (
    Select max(price) from phones
) as max_price,
 (
    Select min(price) from phones
) as min_price,
 (
    Select avg(price) from phones
) as avg_price

