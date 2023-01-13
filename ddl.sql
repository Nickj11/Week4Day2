-- CREAT CUSTOMER TABLE
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    age  INTEGER,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(200)
);

-- CREATE TICKETS TABLE
CREATE TABLE tickets (
   tickets_id SERIAL PRIMARY KEY,
   tickets_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
   customer_id INTEGER NOT NULL,
   movie_name VARCHAR(100),
   tickets_price NUMERIC(10,2),
   FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
);

--  CREATE MOVIES TABLE
CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(100),
    movie_rating VARCHAR(100),
    customer_id INTEGER NOT NULL,
    tickets_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
    FOREIGN KEY (tickets_id) REFERENCES tickets (tickets_id)
);
-- CREATE CONSESSION TABLE
CREATE TABLE consession(
    food_id SERIAL PRIMARY KEY,
    food_name VARCHAR(100),
    food_description VARCHAR(200),
    food_price NUMERIC(10,2),
    movie_id INTEGER,
    FOREIGN KEY (movie_id) REFERENCES movies (movie_id)
);

--  MOVIE_NAME UNIQUE, FOOD_NAME UNIQUE,
ALTER TABLE movies
ADD UNIQUE(movie_name);
ALTER TABLE consession
ADD UNIQUE (food_name);

--  CORRECT FOREIGN KEYS
ALTER TABLE tickets

ADD FOREIGN KEY (movie_name) REFERENCES movies (movie_name);




