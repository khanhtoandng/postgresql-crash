
-- Create table
CREATE TABLE cities(
name VARCHAR(50),
country VARCHAR(50),
population INTEGER,
area INTEGER
);


-- Insert data

INSERT INTO cities(name, country, population, area)
VALUES
('Danang', 'Vietnam', 1300000, 1285),
('HCM', 'Vietnam', 1300000, 12385)


-- Select all
SELECT * FROM cities

-- Select specific column
SELECT name, population FROM cities

-- Select: Caculated column
SELECT name, population*area as destiny FROM cities

-- Select: string operator & function
SELECT CONCAT(UPPER(name), ', ', LOWER(country)) as union FROM cities