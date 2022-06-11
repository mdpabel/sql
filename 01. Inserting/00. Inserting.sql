USE sql_store;

--@BLOCK

-- Inserting

-- INSERT INTO customers(first_name, last_name, address, city, state)
-- VALUES('MD', 'Pabel', 'Address', 'City', 'CT');

-- INSERT INTO shippers(name)
-- VALUES('Shipper-1'), ('Shipper-2'),('Shipper-3'),('Shipper-4')

-- INSERT INTO products(name, quantity_in_stock, unit_price)
-- VALUES('prod-1', 11, 11), ('prod-2', 11, 11), ('prod-3', 11, 11)

-- Inserting Hierarchical Rows

INSERT INTO orders(customer_id, order_date, status)
VALUES (1, '2019-01-01', 1);

INSERT INTO order_items(order_id, product_id, quantity, unit_price)
VALUES(LAST_INSERT_ID(), 3, 1, 2.9), (LAST_INSERT_ID(), 2, 3, 1.9)