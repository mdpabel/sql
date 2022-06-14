-- USE sql_store;

-- --@BLOCK

-- SELECT * 
-- FROM products
-- WHERE product_id NOT IN (
--     SELECT DISTINCT product_id
--     FROM order_items
-- )

USE sql_invoicing;

--@BLOCK
SELECT * 
FROM clients 
WHERE client_id NOT IN (
    SELECT DISTINCT client_id 
    FROM invoices
)
