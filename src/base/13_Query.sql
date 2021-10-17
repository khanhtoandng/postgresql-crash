-- Select all
SELECT * FROM cities

-- Select specific column
SELECT name, population FROM cities

-- Select: Caculated column
SELECT name, population*area as destiny FROM cities

-- Select: string operator & function
SELECT CONCAT(UPPER(name), ', ', LOWER(country)) as union FROM cities