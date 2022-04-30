DROP DATABASE IF EXISTS grandes_almacenes;
CREATE DATABASE IF NOT EXISTS grandes_almacenes;
USE grandes_almacenes;

DROP TABLE IF EXISTS productos;
CREATE TABLE productos (
codigo INT,
nombre NVARCHAR(100) NOT NULL,
precio INT NOT NULL,
PRIMARY KEY (codigo)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS cajeros;
CREATE TABLE cajeros (
codigo INT,
nombre_completo NVARCHAR(255) NOT NULL,
PRIMARY KEY (codigo)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS maquinas_registradoras;
CREATE TABLE maquinas_registradoras (
codigo INT,
piso INT NOT NULL,
PRIMARY KEY (codigo)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS venta;
CREATE TABLE venta (
cajero INT,
maquina INT,
producto INT,
PRIMARY KEY (cajero , maquina, producto),
FOREIGN KEY (cajero) REFERENCES cajeros (codigo)
ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (maquina) REFERENCES maquinas_registradoras (codigo)
ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (producto) REFERENCES productos (codigo)
ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB;
