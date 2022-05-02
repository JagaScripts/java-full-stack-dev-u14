DROP DATABASE IF EXISTS academia_de_idiomas;
CREATE DATABASE IF NOT EXISTS academia_de_idiomas;
USE academia_de_idiomas;

DROP TABLE IF EXISTS profesores;
CREATE TABLE profesores (
DNI NVARCHAR(8),
nombre NVARCHAR(100) UNIQUE,
apellido1 NVARCHAR(100),
apellido2 NVARCHAR(100),
direccion NVARCHAR (100),
titulo NVARCHAR (100),
gana MEDIUMINT UNSIGNED NOT NULL,
PRIMARY KEY (DNI)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS cursos;
CREATE TABLE cursos (
codigo_curso INT UNSIGNED,
nombre_curso CHAR(4) UNIQUE,
fecha_inicio DATE ,
fecha_fin DATE,
numero_horas SMALLINT UNSIGNED NOT NULL,
maximo_alumnos SMALLINT UNSIGNED,
DNI_profesor NVARCHAR(8) NOT NULL,
PRIMARY KEY (codigo_curso),
FOREIGN KEY (DNI_profesor) REFERENCES profesores (DNI)
ON DELETE RESTRICT ON UPDATE CASCADE,
CONSTRAINT CHK_Orden_Cronologico CHECK (TIMESTAMPDIFF(MONTH, fecha_inicio, fecha_fin) > 0)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS alumnos;
CREATE TABLE alumnos (
DNI NVARCHAR(8),
nombre NVARCHAR(100),
apellido1 NVARCHAR(100),
apellido2 NVARCHAR(100),
direccion VARCHAR (100),
sexo ENUM('H', 'M') NOT NULL,
curso INT UNSIGNED NOT NULL,
fecha_de_nacimiento DATE,
PRIMARY KEY (DNI, curso),
FOREIGN KEY (curso) REFERENCES cursos (codigo_curso)
ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB;