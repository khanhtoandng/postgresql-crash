-- CREATE TABLE users (
-- 	id SERIAL PRIMARY KEY,
-- 	email VARCHAR(40) NOT NULL UNIQUE,
-- 	password VARCHAR(40) NOT NULL
-- );

-- CREATE TABLE company (
-- 	id SERIAL PRIMARY KEY,
-- 	name VARCHAR(40),
-- 	user_id INTEGER REFERENCES users(id)
-- );

-- CREATE TABLE roles (
-- 	id SERIAL PRIMARY KEY,
-- 	name VARCHAR(40) UNIQUE NOT NULL
-- );

-- CREATE TABLE user_role (
-- 	user_id INTEGER REFERENCES users(id),
-- 	role_id INTEGER REFERENCES roles(id)
-- );

-- CREATE TABLE permissions (
-- 	id SERIAL PRIMARY KEY,
-- 	name VARCHAR(40)
-- );

-- CREATE TABLE role_permission (
-- 	role_id INTEGER REFERENCES roles(id),
-- 	permission_id INTEGER REFERENCES permissions(id)
-- );

-- INSERT INTO users(email, password)
-- VALUES 
-- 	('khanhtoan.dng@gmail.com', 'toan123'),
-- 	('admin@gmail.com', 'admin123')

-- INSERT INTO company(name,user_id)
-- VALUES 
-- 	('abc', 1), 
-- 	('def',1)

-- INSERT INTO roles(name)
-- VALUES ('manager'), ('staff'), ('guess');

-- INSERT INTO permissions(name)
-- VALUES
-- 	('manage product'),
-- 	('view product'),
-- 	('manage order'),
-- 	('view order')

-- INSERT INTO role_permission(role_id, permission_id)
-- VALUES
-- 	(1,1), (1,2), (1,3), (1,4),
-- 	(2,3), (2,4),
-- 	(3,4)


INSERT INTO user_role 
VALUES 
	(1,1), (1,2),
	(2,3)
