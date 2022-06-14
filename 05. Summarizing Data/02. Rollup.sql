USE sql_invoicing;

--@BLOCK

-- SELECT city, SUM(invoice_total)
-- FROM invoices
-- JOIN clients
--     USING(client_id)
-- GROUP BY city WITH ROLLUP

SELECT pm.name AS payment_method, SUM(amount) AS total
FROM payments p
JOIN payment_methods pm
    ON p.payment_method = pm.payment_method_id
GROUP BY pm.name WITH ROLLUP