DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS manufacturers;

CREATE TABLE manufacturers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255));

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    manufacturer_id INT REFERENCES manufacturers(id),
    type VARCHAR(255),
    name VARCHAR(255),
    price INT);