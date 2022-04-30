DROP DATABASE IF EXISTS tienda_informatica;
CREATE DATABASE IF NOT EXISTS tienda_informatica;
USE tienda_informatica;

DROP TABLE IF EXISTS fabricantes;
CREATE TABLE IF NOT EXISTS fabricantes (
codigo INT NOT NULL,
nombre NVARCHAR (100) NOT NULL,
PRIMARY KEY (codigo)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS articulos;
CREATE TABLE IF NOT EXISTS articulos (
codigo INT,
nombre NVARCHAR (100) NOT NULL,
precio INT NOT NULL,
fabricante INT NOT NULL,
PRIMARY KEY (codigo),
FOREIGN KEY (fabricante) REFERENCES fabricantes (codigo)
ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=InnoDB;

