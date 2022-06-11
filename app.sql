-- USE sql_store;

-- --@BLOCK
-- UPDATE orders
-- SET shipper_id = 3
-- WHERE order_id = 3

USE sql_invoicing;

--@BLOCK
-- UPDATE invoices
-- SET payment_total = 200, payment_date = '2022-01-01'
-- WHERE invoice_id = 1

UPDATE invoices
SET payment_total = invoice_total * 0.5, payment_date = invoice_date
WHERE invoice_id IN (3,4)