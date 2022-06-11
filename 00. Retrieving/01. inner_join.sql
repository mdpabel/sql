USE sql_store; 

-- @BLOCK
-- Inner Joins 

-- SELECT order_id, first_name, last_name, c.customer_id 
--     FROM orders o JOIN customers c
--     ON o.customer_id = c.customer_id

-- SELECT order_id, oi.product_id, name, quantity, oi.unit_price 
--     FROM order_items oi JOIN products p
--     ON oi.product_id = p.product_id

-- Joining across database 

-- SELECT order_id, oi.product_id, name, quantity, oi.unit_price FROM order_items oi
--     JOIN sql_inventory.products p
--     ON oi.product_id = p.product_id

-- USE sql_hr;
-- 

-- self joining

-- SELECT e.employee_id, e.first_name AS employee, m.first_name AS Manager 
--     FROM employees e
--     JOIN employees m 
--     ON e.reports_to = m.employee_id

-- SELECT o.order_id, o.order_date, c.first_name, c.last_name, os.name AS status
--     from orders o
--     JOIN customers c 
--     ON o.customer_id = c.customer_id
--     JOIN order_statuses os
--     ON os.order_status_id = o.status




-- USE sql_invoicing
-- -- @BLOCK

-- SELECT p.date, p.invoice_id, p.amount, c.name, pm.name AS 'payement method'
-- FROM payments p
-- JOIN clients c
--     ON p.client_id = c.client_id
-- JOIN payment_methods pm
--     ON pm.payment_method_id = p.payment_method


-- Compound Join Conditions

-- SELECT * FROM order_items oi
-- JOIN order_item_notes oin
--     ON oi.order_id = oin.order_id
--     AND oi.product_id = oin.product_id

-- Implicit Join Syntax

-- SELECT * FROM order_items oi , order_item_notes oin
-- WHERE oi.order_id = oin.order_id AND oi.product_id = oin.product_id
