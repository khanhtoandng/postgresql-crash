-- UNION

(
    SELECT * 
    FROM products
    ORDER BY price DESC
    LIMIT 4
)
UNION
(
    SELECT * 
    FROM products
    ORDER BY price/weight DESC
    LIMIT 4
)

-- EX18
select manufacturer
from phones
where price < 170
Union 
select manufacturer
from phones
group by manufacturer
having count(*) > 2