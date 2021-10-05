-- Validation: 
-- NOT NULL
-- DEFAULT
-- UNIQUE: one column or multi-column
-- CHECK()
CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL ,
	department VARCHAR(40) NOT NULL,
	price INTEGER DEFAULT 999,
	weight INTEGER
    UNIQUE(name, department)
);

