-- FILTER: WHERE
SELECT name, area 
FROM cities
WHERE population > 4000

-- BETWEEN
SELECT name, area as destiny 
FROM cities
WHERE population BETWEEN 4000 AND 120000

-- IN
SELECT name, area as destiny 
FROM cities
WHERE country IN ('Vietnam', 'Japan')

-- LIKE
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'Jen%';

-- IS NULL
SELECT * 
FROM contacts
WHERE phone IS NULL;