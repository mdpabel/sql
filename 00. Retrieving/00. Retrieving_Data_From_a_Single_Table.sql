USE sql_store;
-- @BLOCK


-- SELECT * FROM customers
-- SELECT first_name, last_name, points, (points + 10) * 5 AS 'discount factor' FROM customers 
-- SELECT DISTINCT state FROM customers
-- WHERE customer_id = 1
-- ORDER BY first_name

-- SELECT name, unit_price , unit_price * 1.1 AS 'new price' FROM products

-- SELECT * FROM products WHERE unit_price > 3

-- SELECT * FROM customers WHERE birth_date > '1990-01-01'

-- SELECT * FROM orders WHERE order_date >= '2017-01-01' AND order_date <= '2017-12-30'

-- SELECT * FROM order_items WHERE order_id = 6 AND quantity * unit_price > 30

-- SELECT * FROM customers WHERE state IN ('VA', 'FL', 'GA')
-- SELECT * FROM customers WHERE state NOT IN ('VA', 'FL', 'GA')

-- SELECT * FROM products WHERE quantity_in_stock IN (49, 38, 72)

-- SELECT points from customers WHERE points >= 1000 AND points <= 3000

-- SELECT points FROM customers WHERE points BETWEEN 1000 AND 3000 ORDER BY points; 

-- SELECT * FROM customers WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01'

-- % represent any number of characters 
-- _ single char 

-- SELECT first_name FROM customers WHERE first_name LIKE 'b%'
-- SELECT first_name FROM customers WHERE first_name LIKE 'b____a'

-- SELECT * FROM customers WHERE address LIKE '%trail%' OR address Like "%avenue";

/**
^ beginnig of string 
$ end of string 
| logical or  
[gim]e -> ge or me or ie any single char inside the brac  
**/

-- SELECT * FROM customers WHERE first_name REGEXP 'ELKA|AMBUR'
-- SELECT * FROM customers WHERE last_name REGEXP 'EY$|ON$'
-- SELECT * FROM customers WHERE last_name REGEXP '^my|se'
-- SELECT * FROM customers WHERE last_name REGEXP 'b[ru]'

-- SELECT * FROM customers WHERE phone IS NULL
-- SELECT * FROM customers WHERE phone IS NOT NULL
-- SELECT * FROM orders WHERE shipper_id IS NULL

-- SELECT *, quantity * unit_price AS total_price FROM order_items WHERE order_id = 2 ORDER BY total_price DESC  

-- SELECT * FROM products LIMIT 6, 3 
SELECT * FROM customers ORDER BY points DESC LIMIT 3