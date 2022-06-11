USE sql_invoicing;

--@BLOCK

-- CREATE TABLE order_archived AS
-- SELECT * FROM orders

-- INSERT INTO order_archived
-- SELECT * FROM orders
-- WHERE order_date < '2019-01-01'

CREATE TABLE invoice_archieved AS
SELECT i.invoice_id, c.name AS client
FROM invoices i 
JOIN clients c
    USING (client_id)
WHERE i.payment_date IS NOT