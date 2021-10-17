-- INSERT
INSERT INTO cities(name, country, population, area)
VALUES
('Danang', 'Vietnam', 1300000, 1285),
('HCM', 'Vietnam', 1300000, 12385)

-- UPDATE
UPDATE courses
SET published_date = '2020-07-01'
WHERE course_id = 2
RETURNING *;

-- DELTE
DELETE FROM links
WHERE id IN (6,5)
RETURNING *;

-- UPSERT
INSERT INTO customers (name, email)
VALUES('Microsoft','hotline@microsoft.com') 
ON CONFLICT (name) 
DO 
   UPDATE SET email = EXCLUDED.email || ';' || customers.email;