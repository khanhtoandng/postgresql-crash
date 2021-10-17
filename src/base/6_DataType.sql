-- BOOLEAN 
CREATE TABLE stock_availability (
   product_id INT PRIMARY KEY,
   available BOOLEAN NOT NULL
);

-- CHARACTER
CREATE TABLE character_tests (
	id serial PRIMARY KEY,
	x CHAR (1),
	y VARCHAR (10),
	z TEXT
);

-- NUMERIC
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price NUMERIC(5,2)
);

-- INTEGER/SMALLINT/BIGINT
CREATE TABLE cities (
    city_id serial PRIMARY KEY,
    city_name VARCHAR (255) NOT NULL,
    population INT NOT NULL CHECK (population >= 0)
    district SMALLINT NOT NULL CHECK (pages > 0)
);

-- DATE: yyyy-mm-dd
CREATE TABLE documents (
	document_id serial PRIMARY KEY,
	header_text VARCHAR (255) NOT NULL,
	posting_date DATE NOT NULL DEFAULT CURRENT_DATE
);

-- TIMESTAMP
CREATE TABLE comments (
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
)
-- UUID
CREATE TABLE contacts (
    contact_id uuid DEFAULT uuid_generate_v4 (),
    email VARCHAR NOT NULL,
    phone VARCHAR,
    PRIMARY KEY (contact_id)
);

-- JSON
CREATE TABLE orders (
	id serial NOT NULL PRIMARY KEY,
	info json NOT NULL
);