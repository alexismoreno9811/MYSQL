SELECT * FROM customers;

SELECT customer_id AS id,
	CONCAT(firstname, ' ', lastname) AS 'fullname',
    email
	FROM customers;

SELECT customer_id AS id,
	REPLACE(firstname,'Alejandro' ,'Alex') AS 'firstname',
    email
	FROM customers
    WHERE firstname = 'Alejandro';
    
SELECT firstname, REPLACE(address,'Av.' ,'Avenida') AS 'addres',
    email
	FROM customers;

-- Invertir una palabra
SELECT firstname, REVERSE(firstname) AS 'Reverse_name'
	FROM customers ORDER BY reverse_name DESC;

-- Convertir a mayúsculas y minúsculas
SELECT LOWER(firstname) AS 'firstname',
	UPPER(firstname) AS 'firstnameMayus'
    FROM customers;

-- Mostrar el nombre completo en mayusculas
SELECT 
	UPPER(CONCAT(firstname, ' ', lastname)) AS 'fullname'
	FROM customers;
