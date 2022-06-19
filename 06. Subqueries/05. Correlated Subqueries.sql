-- USE sql_hr;

-- --@BLOCK

-- SELECT * 
-- FROM employees e
-- WHERE salary >= (
--     SELECT AVG(salary)
--     FROM employees
--     WHERE office_id = e.office_id
-- )

USE sql_invoicing;

--@BLOCK

SELECT *
FROM invoices oi
WHERE invoice_total >( 
    SELECT AVG(invoice_total)
    FROM invoices
    WHERE client_id = oi.client_id
 )

/*


A correlated SQL subquery is just a subquery that is executed many times—once for each record (row) returned by the outer (main) query. In other words, the outer query returns a table with multiple rows; the inner query then runs once for each of those rows.
*/