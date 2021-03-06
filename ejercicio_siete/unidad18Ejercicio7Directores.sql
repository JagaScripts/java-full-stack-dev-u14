DROP DATABASE IF EXISTS directores;
CREATE DATABASE IF NOT EXISTS directores;
USE directores;

DROP TABLE IF EXISTS despachos;
CREATE TABLE despachos (
numero INT,
capacidad INT NOT NULL,
PRIMARY KEY (numero)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS directores;
CREATE TABLE directores (
DNI VARCHAR(8),
nombre_completo NVARCHAR(255) NOT NULL,
DNI_jefe VARCHAR(8) DEFAULT NULL,
despacho INT DEFAULT NULL,
PRIMARY KEY (DNI),
FOREIGN KEY (despacho) REFERENCES despachos (numero)
ON DELETE SET NULL ON UPDATE CASCADE,
FOREIGN KEY (DNI_jefe) REFERENCES directores (DNI)
ON DELETE SET NULL ON UPDATE CASCADE
)ENGINE=InnoDB;
