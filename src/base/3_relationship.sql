-- Generate ID
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255)
)

-- Foreign key

CREATE TABLE photo (
    id SERIAL PRIMARY KEY,
    url VARCHAR(255),
    user_id INTEGER REFERENCES users(id)
)

-- ON DELETE CASCADE
-- Delete the photo too
CREATE TABLE photo (
    id SERIAL PRIMARY KEY,
    url VARCHAR(255),
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
)

-- ON DELETE SET NULL
CREATE TABLE photo (
    id SERIAL PRIMARY KEY,
    url VARCHAR(255),
    user_id INTEGER REFERENCES users(id) ON DELETE SET NULL
)
