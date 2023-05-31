
SELECT * FROM products;

-- Listar productos que estan en el rango de >= 100 y <= 500 en el precio
SELECT * FROM products 
	WHERE price >= 100 AND price <= 500;
-- Between
SELECT * FROM products
	WHERE price BETWEEN 100 AND 500;
-- Cuantos items estan en ese rango
SELECT COUNT(price) AS "Elementos con precios mayor que 100 y menor que 500" FROM products 
	WHERE price >= 100 AND price <= 500;
SELECT COUNT(price) AS "Elementos con precios mayor que 100 y menor que 500" FROM products 
	WHERE price BETWEEN 100 AND 500;
-- Listar productos que no estan en el rango de >= 100 y <= 500 en el precio
SELECT * FROM products
	WHERE price NOT BETWEEN 100 AND 500;
-- Listar los articulos que no cuesten 99.99
SELECT * FROM products
	-- WHERE NOT price = 99.99;
    WHERE price <> 99.99;
-- IN, indicar valores que esten dentro de una lista.
SELECT * FROM products
	WHERE price IN(49.99, 99.99, 149.99);
-- Indicar los artículos que NO estén dentro de una lista.
SELECT * FROM products
	WHERE NOT price IN(49.99, 99.99, 149.99);
-- Establecer en null en category_id, los artículos entre 100 y 200;
UPDATE products SET category_id = NULL
	WHERE price BETWEEN 100 AND 200;
-- category_id = null, category_id ISNULL;
SELECT * FROM products
	WHERE category_id IS NULL;
SELECT * FROM products
    WHERE ISNULL(category_id);
-- category_id no sea nulo
SELECT * FROM products
	WHERE category_id IS NOT NULL;
-- Operaciones aritméticas
-- aplicar un 10% de descuento a todos los artículos
SELECT name, price, price*0.9 AS "precio HotSale 2023" FROM products;
-- 12 msi, mostrar columna con el pago mensual
SELECT name, price, price/12 AS "precio 12 msi" FROM products;
SELECT name, price
	, TRUNCATE(price*0.90, 2) AS "precio hotSale 2023"
	, TRUNCATE((price*0.90)/12,2) AS "12 Mensualidades HotSale" 
    FROM products;
SELECT round(8.4);




