CREATE TABLE person(
  id SERIAL PRIMARY KEY,
  name VARCHAR(20),
  age INTEGER,
  height INTEGER,
  CITY VARCHAR(40),
  favorite_color VARCHAR(20)
  )

  INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Alex', 20, 60, 'Salt Lake City', 'Blue'),
('Jason', 30, 60, 'Lehi', 'Purple'),
('Jacob', 26, 60, 'Layton', 'Orange'),
('Mike', 16, 60, 'Daybreak', 'Yellow'),
('Jordan', 19, 60, 'Draper', 'Green'),
('Jon', 33, 66, 'DC', 'Red')

SELECT *
FROM person
ORDER BY height DESC

SELECT *
FROM person
ORDER BY height 

SELECT *
FROM person
ORDER BY age DESC

SELECT *
FROM person
WHERE age > 20

SELECT *
FROM person
WHERE age = 18

SELECT *
FROM person
WHERE age > 20 AND age < 30

SELECT *
FROM person
WHERE age != 27

SELECT *
FROM person
WHERE favorite_color != 'Red'

SELECT *
FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue'

SELECT *
FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green'

SELECT *
FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue')

SELECT *
FROM person
WHERE favorite_color IN ('Yellow', 'Purple')

CREATE TABLE orders(
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR,
  product_price DECIMAL,
  quantity INTEGER
  )

  INSERT INTO orders
(order_id, person_id, product_name, product_price, quantity)
VALUES
(1, 1, 'Ninja Blender', 79.99, 1),
(2, 2, 'HDMI Dongle', 49.99, 1),
(3, 1, 'Nissan Leaf', 39000, 4),
(4, 2, 'Marker', 1.99, 10),
(5, 1, 'Shark Vacuum', 399.99, 2)

SELECT * 
FROM orders

SELECT sum(quantity)
FROM orders

SELECT sum(product_price)
FROM orders

SELECT sum(product_price)
FROM orders
WHERE person_id = 1

INSERT INTO artist
(name, artist_id)
VALUES
('Paramore', 5000),
('Yellow Claw', 6000),
('One Direction', 7000)

SELECT * 
FROM artist
ORDER BY name DESC
LIMIT 10

SELECT * 
FROM artist
ORDER BY name
LIMIT 5

SELECT * 
FROM artist
WHERE name 
LIKE 'Black%'

SELECT * 
FROM artist
WHERE name 
LIKE '%Black%'

SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary'

SELECT max(birth_date)
FROM employee

SELECT min(birth_date)
FROM employee

SELECT *
FROM employee
WHERE reports_to =2

SELECT count(city)
FROM employee
WHERE city = 'Lethbridge'

SELECT count(billing_country)
FROM invoice
WHERE billing_country = 'USA'

SELECT max(total)
FROM invoice

SELECT min(total)
FROM invoice

SELECT *
FROM invoice
WHERE total > 5

SELECT count(total)
FROM invoice
WHERE total < 5

SELECT count(billing_state)
FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ')

SELECT avg(total)
FROM invoice

SELECT sum(total)
FROM invoice
