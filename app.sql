-- FIND THE CUSTOMER WHO HAVED ORDERED LATTUCE
USE sql_store;
--@BLOCK

SELECT *
FROM order_items oi
JOIN products p
    USING(product_id)