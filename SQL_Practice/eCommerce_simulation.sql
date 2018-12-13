-- CREATING TABLES

CREATE TABLE users (
  id INTEGER primary key autoincrement,
  name VARCHAR(50) NOT NULL, 
  email TEXT NOT NULL
);

CREATE TABLE products (
  id INTEGER primary key autoincrement,
  name TEXT NOT NULL, 
  price NUMERIC(10,2)
);

CREATE TABLE orders (
  id INTEGER primary key autoincrement,
  product_id integer references products(id),
  user_id integer references users(id)
);

-- ADDING DATA 

INSERT INTO users(name, email) VALUES ("Bill", "bill@bill.com");
INSERT INTO users(name, email) VALUES ("Sally", "sally@sally.com");
INSERT INTO users(name, email) VALUES ("Frank", "frank@frank.com");

INSERT INTO products(name, price) VALUES ("Hot dog", 12.50);
INSERT INTO products(name, price) VALUES ("Rubber duck", 4.99);
INSERT INTO products(name, price) VALUES ("Sling shot", 35);

INSERT INTO orders(product_id) VALUES (1);
INSERT INTO orders(product_id) VALUES (2);
INSERT INTO orders(product_id) VALUES (3);

-- QUERIES

-- #1
SELECT *
FROM products p
JOIN orders o ON p.id = o.product_id
WHERE o.id = 1;

-- #2
SELECT *
FROM ORDERS;

-- #3
SELECT SUM(p.price)
FROM products p
JOIN orders o ON p.id = o.product_id
WHERE o.id = 1;

-- ALTER TABLE
ALTER TABLE orders 
ADD user_id integer references users(id);

-- MORE QUERIES

-- #4 
SELECT * 
FROM orders o 
JOIN users u ON u.id = o.user_id
WHERE u.id = 2;