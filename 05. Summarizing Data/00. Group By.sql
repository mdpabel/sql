USE sql_invoicing;

--@BLOCK
-- SELECT name AS client, SUM(invoice_total) AS total_sales
-- FROM invoices i
-- JOIN clients c
--     USING (client_id)
-- GROUP BY client_id

-- SELECT city, state, SUM(invoice_total) AS total_sales
-- FROM invoices
-- JOIN clients
--     USING(client_id)
-- GROUP BY city, state

SELECT date, name AS payment_method, SUM(amount)
FROM payments p
JOIN payment_methods pm
    ON p.payment_method = pm.payment_method_id
GROUP BY date, name
ORDER BY date