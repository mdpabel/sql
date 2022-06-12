USE sql_invoicing;

--@BLOCK

-- SELECT 
-- COUNT(invoice_total) AS len, 
-- AVG(invoice_total) AS average, 
-- SUM(invoice_total) as total, 
-- MAX(invoice_total) AS max, 
-- MAX(invoice_total * 1.1) AS extended_max, 
-- MIN(invoice_total) AS min,
-- COUNT(payment_date) AS num_of_date,
-- COUNT(DISTINCT client_id) AS total_num_of_client
-- FROM invoices

SELECT 
'First half of 2019' AS date_range,
SUM(invoice_total) AS total_sales, 
SUM(payment_total) AS total_payment,
SUM(payment_total - invoice_total) AS what_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-01-01' AND '2019-06-30'

UNION

SELECT 
'second half of 2019' AS date_range,
SUM(invoice_total) AS total_sales, 
SUM(payment_total) AS total_payment,
SUM(payment_total - invoice_total) AS what_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-07-01' AND '2019-12-30'

UNION

SELECT 
'total' AS date_range,
SUM(invoice_total) AS total_sales, 
SUM(payment_total) AS total_payment,
SUM(payment_total - invoice_total) AS what_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-01-01' AND '2019-12-30'