-- Se realizan operaciones matemáticas
SELECT 5 * 2;
-- Realizar consulta a la tabla products
SELECT `name`, `description`,`price` FROM `products`;
-- Ver todos los campos de la tabla products
SELECT * FROM products;
-- Ver el campo name, description y renombrarlo
SELECT `name` AS "Nombre producto",
	`description` AS "Description del articulo"
    FROM products;
-- Seleccionar solo los datos que no son repetidos
SELECT DISTINCT category_id FROM products ;

SELECT * FROM orders_has_products;
-- Listado de productos que se han vendido
SELECT DISTINCT product_id FROM orders_has_products;

SELECT COUNT(DISTINCT product_id) AS "N. items vendidos"
 FROM orders_has_products;

SELECT * FROM customers;
-- obtener el numero de nombres no repetidos
SELECT COUNT(DISTINCT firstname) FROM customers;

-- Limitar el   número de elemetos consultados
SELECT * FROM customers LIMIT 5;

-- Filtrar (WHERE) solo las personas con el nombre "Alejandro"
SELECT * FROM customers WHERE firstname = "Alejandro";
-- Número de personas que se llaman Alejandro
SELECT COUNT(firstname) AS "N. de Alejandro"
	FROM customers
	WHERE firstname="Alejandro";
-- Filtrar las personas con nombre "Alejandra" o "Alejandro"
SELECT * FROM customers 
	WHERE firstname = "Alejandro" 
	OR firstname = "Alejandra";
SELECT * FROM customers
	WHERE firstname LIKE "Alejandr_"; -- un guión bajo = 1 carácter
									  -- un % = múltiples carácteres
SELECT * FROM customers 
	WHERE firstname IN ("Alejandro", "Alejandra");

-- Contar el número de personas que tengan el correo @gmail.com
SELECT COUNT(email) AS "N. de correos @gmail.com"
	FROM customers
	WHERE email LIKE "%@gmail.com";

-- Operadores lógicos: AND(&&), OR(||), NOT(!=)
SELECT * FROM customers
	WHERE firstname = "Alejandro" || firstname = "Alejandra";
-- Listar los nombres que NO sean "Alejandro";
SELECT * FROM customers WHERE firstname != "Alejandro";
SELECT * FROM customers WHERE NOT firstname = "Alejandro";
-- Listar los nombres != Alejandro y Alejandra
SELECT * FROM customers WHERE NOT firstname LIKE "Alejandr_";
SELECT email FROM customers WHERE email LIKE "%@gamil.com";
-- Modificar el nombre Alejandro por Alex en donde el email != @gmail.com
UPDATE customers SET firstname = "Alejandro" 
	WHERE (firstname = "Alex" AND NOT email LIKE "%@gmail.com");
UPDATE customers
	SET email = REPLACE(email, "@gamil.com", "@gmail.com")
    WHERE email LIKE "%@gamil.com";
SELECT * FROM customers;



