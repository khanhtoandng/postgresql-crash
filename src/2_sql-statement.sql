-- filter: where
SELECT name, area 
FROM cities
WHERE population > 4000

-- WHERE: Operator 
-- BETWEEN
SELECT name, area as destiny 
FROM cities
WHERE population BETWEEN 4000 AND 120000

-- IN
SELECT name, area as destiny 
FROM cities
WHERE country IN ('Vietnam', 'Japan')

-- Update data
UPDATE cities 
SET population = 12345667
WHERE name = 'Danang'

-- Delete data
DELETE FROM cities
WHERE name = 'HCM'