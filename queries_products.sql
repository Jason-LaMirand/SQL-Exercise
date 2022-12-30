-- Comments in SQL Start with dash-dash 
1.
products_db=# INSERT INTO products (name, price, can_be_returned) VALUES ('chair', '44.00', 'false');


LINE 2: select * FROM products;
        ^
products_db=# select * FROM products;
 id | name  | price | can_be_returned
----+-------+-------+-----------------
  1 | chair |    44 | f
(1 row)

2.
products_db=# INSERT INTO products (name, price, can_be_returned) VALUES ('stool', '25.99', 'true');

products_db=# SELECT * FROM products;
 id | name  | price | can_be_returned
----+-------+-------+-----------------
  1 | chair |    44 | f
  2 | stool | 25.99 | t

3. 
 INSERT INTO products (name, price, can_be_returned) VALUES ('table', '124.00', 'false');

 products_db=# SELECT * FROM products;
 id | name  | price | can_be_returned
----+-------+-------+-----------------
  1 | chair |    44 | f
  2 | stool | 25.99 | t
  3 | table |   124 | f

4. 

products_db=# SELECT * FROM products;
 id | name  | price | can_be_returned
----+-------+-------+-----------------
  1 | chair |    44 | f
  2 | stool | 25.99 | t
  3 | table |   124 | f

5. 
products_db=# SELECT name FROM products;
 name
-------
 chair
 stool
 table

 6. 
 products_db=# SELECT name, price FROM products;
 name  | price
-------+-------
 chair |    44
 stool | 25.99
 table |   124

 7. 
  INSERT INTO products (name, price, can_be_returned) VALUES ('couch', '199.00', 'false');

8. 
SELECT name FROM products WHERE can_be_returned = true;

9.
SELECT name FROM products WHERE price < 44.00;

10.
SELECT name FROM products WHERE price BETWEEN 22.50 AND 99.99;

11.
UPDATE products SET price = (price - 20.00);

12.
DELETE FROM products WHERE price < 25.00;

13. 
UPDATE products SET price = (price + 20.00);

14.
UPDATE products SET can_be_returned = true;
--
