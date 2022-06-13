-- USE sql_invoicing;

-- --@BLOCK

-- SELECT client_id, SUM(invoice_total) AS total_sales, COUNT(*) AS num_of_invoices
-- FROM invoices
-- GROUP BY client_id
-- HAVING total_sales > 700 AND num_of_invoices > 5

USE sql_store;

--@BLOCK
-- SELECT state, SUM(quantity * unit_price) AS spent
-- FROM orders
-- JOIN order_items
--     USING(order_id)
-- JOIN customers
--     USING(customer_id)
-- GROUP BY state
-- HAVING state = 'VA' AND spent > 100

