-- USE sql_store;

-- --@BLOCK
-- SELECT * 
-- FROM products
-- WHERE unit_price > (
--     SELECT unit_price
--     FROM products 
--     WHERE product_id = 3
-- )

USE sql_hr;

--@BLOCK

SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary) 
    FROM employees
)