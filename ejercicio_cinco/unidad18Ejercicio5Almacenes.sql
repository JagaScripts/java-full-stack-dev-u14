DROP DATABASE IF EXISTS almacenes;
CREATE DATABASE IF NOT EXISTS almacenes;
USE almacenes;


DROP TABLE IF EXISTS almacenes;
CREATE TABLE IF NOT EXISTS almacenes (
codigo INT,
lugar NVARCHAR(255) NOT NULL,
capacidad INT NOT NULL,
PRIMARY KEY (codigo)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS cajas;
CREATE TABLE IF NOT EXISTS cajas (
num_referencia NVARCHAR(5),
contenido NVARCHAR(255) NOT NULL,
valor INT NOT NULL,
almacen INT NOT NULL,
PRIMARY KEY (num_referencia),
FOREIGN KEY (almacen) REFERENCES almacenes (codigo)
ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;
