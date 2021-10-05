-- Greatest: 
SELECT name, weight, max(30,2 * weight)
from products

-- LEAST:  
SELECT name, weight, max(30,2 * weight)
from products

-- Case
SELECT name, price, CASE
        WHEn price > 600 THEN 'high'
        WHEN proce > 300 THEN 'medium'
        ELSE 'cheap'
    END
FROM products