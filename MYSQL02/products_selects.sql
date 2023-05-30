SELECT * FROM categories;

INSERT INTO categories(name, description) VALUES ("videojuegos", "Videojuegos para Xbox");

-- Eliminar el registro con id 1, tecnologia
DELETE FROM categories WHERE category_id = 1;

-- Eliminar el registro con id 11
DELETE FROM categories WHERE category_id = 11;

-- Modificar el registro con id = 1, hacerlo id = 12;
UPDATE categories SET category_id = 12 WHERE category_id = 1;

-- Modificar el registro Deportes, de id 2 se pasa a id 14
UPDATE categories SET category_id = 14 WHERE category_id = 2;

-- Eliminar el registro Viajes, id 3
DELETE FROM categories where category_id = 3;

-- Productos de las categoría moda.
SELECT * FROM categories;

-- Productos que su category_id es null
SELECT * FROM products WHERE category_id is null;

-- Productos que su nombre tiene moda
SELECT * FROM products WHERE `name` LIKE "%moda%";