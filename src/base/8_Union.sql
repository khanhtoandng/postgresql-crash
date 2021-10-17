-- UNION
-- combine result sets of multiple queries into a single result set
-- removes all duplicate rows from the combined data set
-- ALL: retain the duplicate rows
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

-- INTERSECT 
-- returns a single result set that has the rows appear in both result sets
SELECT *
FROM most_popular_films 
INTERSECT
SELECT *
FROM top_rated_films;

-- EXCEPT 
-- return the rows in the first query that does not appear in the output of the second query
SELECT * FROM top_rated_films
EXCEPT 
SELECT * FROM most_popular_films;

-- EX18
select manufacturer
from phones
where price < 170
Union 
select manufacturer
from phones
group by manufacturer
having count(*) > 2