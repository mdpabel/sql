USE sql_hr;

-- @BLOCK

-- SELECT c.customer_id, o.order_id, c.first_name
-- FROM customers c
-- LEFT JOIN orders o
--     ON c.customer_id = o.customer_id
--     ORDER BY c.customer_id

-- SELECT p.product_id, p.name, oi.quantity
-- FROM order_items oi
-- RIGHT JOIN products p 
-- ON p.product_id = oi.product_id

-- SELECT c.customer_id, first_name, order_id, s.name AS shipper
-- FROM customers c 
-- LEFT JOIN orders o
--     ON o.customer_id = c.customer_id
-- LEFT JOIN shippers s
--     ON s.shipper_id = o.shipper_id
-- ORDER BY c.customer_id

-- Outer Join Between Multiple Tables

-- SELECT order_date, order_id, first_name, sh.name AS shipper, os.name as status
-- FROM customers c
-- JOIN orders o
--     ON o.customer_id = c.customer_id
-- LEFT JOIN shippers sh
--     ON sh.shipper_id = o.shipper_id
-- LEFT JOIN order_statuses os
--     ON o.status = os.order_status_id
-- ORDER BY sh.name

-- Self Outer Joins

SELECT e.first_name AS employee, m.first_name AS manager
FROM employees e
LEFT JOIN employees m
    ON e.reports_to = m.employee_id 