DROP DATABASE IF EXISTS peliculas_y_salas;
CREATE DATABASE IF NOT EXISTS peliculas_y_salas;
USE peliculas_y_salas;

DROP TABLE IF EXISTS peliculas;
CREATE TABLE peliculas (
codigo INT,
nombre NVARCHAR(100) NOT NULL,
calificacionedad INT DEFAULT NULL,
PRIMARY KEY (codigo)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS salas;
CREATE TABLE salas (
codigo INT,
nombre NVARCHAR(100) NOT NULL,
pelicula INT DEFAULT NULL,
PRIMARY KEY (codigo),
FOREIGN KEY (pelicula) REFERENCES peliculas (codigo)
ON DELETE SET NULL ON UPDATE CASCADE
)ENGINE=InnoDB;