USE sql_invoicing;
--@BLOCK 

-- SELECT  o.order_id, c.first_name, o.order_date, os.name AS status, s.name AS shipper
-- FROM orders o
-- JOIN customers c
--     USING (customer_id) 
-- JOIN order_statuses os
--     ON o.status = os.order_status_id
-- LEFT JOIN shippers s
--     USING (shipper_id)
-- ORDER BY o.order_id


SELECT p.date, c.name, p.amount, pm.name AS payment_method
FROM payments p
JOIN clients c
    USING(client_id)
JOIN payment_methods pm
    ON pm.payment_method_id = p.payment_method