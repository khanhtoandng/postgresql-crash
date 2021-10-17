
-- Create table
CREATE TABLE cities(
name VARCHAR(50),
country VARCHAR(50),
population INTEGER,
area INTEGER
);

-- Drop table
DROP TABLE cities;

-- Rename table
ALTER TABLE vendors RENAME TO suppliers;

-- Add column
ALTER TABLE customers 
ADD COLUMN phone VARCHAR;

-- Drop column
ALTER TABLE books 
DROP COLUMN description;

-- Change Column Type
ALTER TABLE assets 
ALTER COLUMN name TYPE VARCHAR;

-- Rename Column
ALTER TABLE customers 
RENAME COLUMN email TO contact_email;


