CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date TIMESTAMP

);
CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(50),
    runtime VARCHAR(50),
    ticket_price VARCHAR(10)

);

CREATE TABLE concessions(
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(20),
    product_type VARCHAR(10),
    price VARCHAR(10)
);

CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    movie_id INTEGER,
    product_id INTEGER,
    ticket_date TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
    FOREIGN KEY (product_id) REFERENCES concessions(product_id)
);