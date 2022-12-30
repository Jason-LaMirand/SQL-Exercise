1.
14playstore=# SELECT id FROM analytics WHERE id = 1880;
  
2. 
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';

3.
SELECT category, COUNT(*) FROM analytics GROUP BY category;

4.
SELECT reviews FROM analytics ORDER BY reviews DESC LIMIT 5;

5.
SELECT reviews FROM analytics WHERE rating > 4.7 ORDER BY reviews DESC LIMIT 1;

6. 
SELECT category, AVG(rating) FROM analytics GROUP BY category;

7. 
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;

8. 
SELECT app_name, rating FROM analytics WHERE min_installs < 51 AND rating > 0 ORDER BY rating DESC;

9. 
SELECT app_name, rating, reviews FROM analytics WHERE rating < 3 AND reviews > 9999;

10.
SELECT app_name, reviews, price FROM analytics WHERE price BETWEEN .10 AND 1.00 ORDER BY reviews DESC LIMIT 10;

11.
SELECT * FROM analytics WHERE last_updated = (SELECT MIN(last_updated) FROM analytics);

12.
SELECT * FROM analytics WHERE price = (SELECT MAX(price) FROM analytics);

13.
SELECT reviews, COUNT(*) FROM analytics GROUP BY reviews;
SELECT SUM(reviews) FROM analytics;

14.
SELECT category, COUNT(*) FROM analytics GROUP BY category HAVING COUNT(*) > 300;

15. 
SELECT app_name, reviews, min_installs, min_installs / reviews AS proportion FROM analytics WHERE min_installs > 99999 ORDER BY proportion DESC LIMIT 1;


-- Comments in SQL Start with dash-dash --
