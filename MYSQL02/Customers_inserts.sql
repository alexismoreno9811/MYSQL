
USE ch26_ecommerce;

INSERT INTO customers(customer_id, firstname, lastname, address, email)
	VALUES (1, "Sergio", "Torres", "Av. siempre viva","sergio@gmail.com");

-- Insertando un registro con un ID 100    
INSERT INTO customers(firstname, lastname, address, email)
	VALUES ("Alexis", "MT", "Av. Benito Juárez","alexis@gmail.com");
    
-- Insertando un registro usando autoincrement, no agregar el customer_id
INSERT INTO customers(firstname, lastname, address, email)
	VALUES ("Berenice", "Gudiño", "Calle Las Palmas n.45","berenice@gmail.com");
    
INSERT INTO customers(firstname, lastname, address, email)
	VALUES ("Abraham", "Castillo", "Calle Hidalgo n.89","abraham@gmail.com");
    
INSERT INTO customers(firstname, lastname, address, email)
	VALUES ("Nicolas", "Walser", "4 Privet Drive","nicolas@gmail.com");
    
-- Reiniciamos el contador de Auto increment
ALTER TABLE customers AUTO_INCREMENT = 1;

INSERT INTO customers(firstname, lastname, address, email)
	VALUES ("Jessica", "Sánchez", "Av. Las Águilas","jessica@gmail.com");