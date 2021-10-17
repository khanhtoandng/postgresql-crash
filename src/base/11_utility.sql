-- Greatest: 
SELECT name, weight, max(30,2 * weight)
from products

-- LEAST:  
SELECT name, weight, max(30,2 * weight)
from products

-- CASE
SELECT name, price, CASE
        WHEn price > 600 THEN 'high'
        WHEN proce > 300 THEN 'medium'
        ELSE 'cheap'
    END
FROM products

-- COALESCE
SELECT
	product,
	(price - COALESCE(discount,0)) AS net_price
FROM
	items;