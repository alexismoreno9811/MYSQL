SELECT * FROM products;
SELECT * FROM categories;
-- uso de inner join
SELECT * 
	FROM products
	INNER JOIN categories
    ON products.category_id = categories.category_id;

-- Mostrar todos los productos con sus categorias
SELECT products.name AS 'product_name',
	products.description, price,
    categories.name AS 'category', categories.description AS 'category_description'
	FROM products
	INNER JOIN categories
    ON products.category_id = categories.category_id;

-- Mostrar todos los productos con sus categorias
-- Solo los que tienen precio mayor a 100
-- Ordena por precio descendente
SELECT products.name AS 'product_name',
	products.description, price,
    categories.name AS 'category', categories.description AS 'category_description'
	FROM products
	INNER JOIN categories
    ON products.category_id = categories.category_id
    WHERE price > 90
    ORDER BY price DESC;
-- Inner joins anidados
SELECT *
	FROM customers
    INNER JOIN orders
    ON customers.customer_id = orders.customer_id
    INNER JOIN orders_has_products
    ON orders.order_id = orders_has_products.order_id
    INNER JOIN products
    ON orders_has_products.product_id = products.product_id;
    
SELECT firstname, lastname,
	purchase_date, delivery_date, 
    amount, products.name AS 'product_name',
    price
	FROM customers
    INNER JOIN orders
    ON customers.customer_id = orders.customer_id
    INNER JOIN orders_has_products
    ON orders.order_id = orders_has_products.order_id
    INNER JOIN products
    ON orders_has_products.product_id = products.product_id;