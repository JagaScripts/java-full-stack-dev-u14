DROP DATABASE IF EXISTS academia_de_clases;
CREATE DATABASE academia_de_clases;

USE  academia_de_clases;

DROP TABLE IF EXISTS empresa;
CREATE TABLE empresa (
cif CHAR(9),
nombre VARCHAR(20) NOT NULL, 
telefono INT UNSIGNED UNIQUE, 
direccion VARCHAR(60),
PRIMARY KEY (cif)
);  

DROP TABLE IF EXISTS alumno;
CREATE TABLE alumno (
dni CHAR(9),
nombre VARCHAR(20) NOT NULL, 
telefono INT UNSIGNED UNIQUE, 
direccion VARCHAR(60),
edad TINYINT UNSIGNED,
cif CHAR(9),
PRIMARY KEY (dni),
FOREIGN KEY (cif) REFERENCES empresa(cif)
ON DELETE SET NULL ON UPDATE CASCADE
); 

DROP TABLE IF EXISTS profesor;
CREATE TABLE profesor (
dni CHAR(9),
nombre VARCHAR(20) NOT NULL, 
apellidos  VARCHAR(20) NOT NULL,
telefono INT UNSIGNED UNIQUE, 
direccion VARCHAR(60),
PRIMARY KEY (dni)
); 

DROP TABLE IF EXISTS programa;
CREATE TABLE programa (
id_programa INT AUTO_INCREMENT,
codigo VARCHAR(60) NOT NULL, 
titulo VARCHAR(60) NOT NULL,
fecha_inicio DATE,
fecha_fin DATE,
cursos_duracion INT AS (TIMESTAMPDIFF(YEAR, fecha_inicio, fecha_fin)),
PRIMARY KEY (id_programa)
);

DROP TABLE IF EXISTS curso;
CREATE TABLE curso (
id_curso INT AUTO_INCREMENT,
id_programa INT NOT NULL,
dni CHAR(9) NOT NULL,
codigo VARCHAR(60) NOT NULL, 
titulo VARCHAR(60) NOT NULL,
fecha_inicio DATE,
fecha_fin DATE,
meses_duracion INT AS (TIMESTAMPDIFF(MONTH, fecha_inicio, fecha_fin)),
PRIMARY KEY (id_curso),
FOREIGN KEY (id_programa) REFERENCES programa(id_programa)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (dni) REFERENCES profesor(dni)
ON DELETE RESTRICT ON UPDATE CASCADE
);

DROP TABLE IF EXISTS cursar;
CREATE TABLE cursar (
dni CHAR(9),
id_curso INT,
nota TINYINT UNSIGNED NOT NULL,
PRIMARY KEY (id_curso, dni),
FOREIGN KEY (dni) REFERENCES alumno(dni)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
ON DELETE CASCADE ON UPDATE CASCADE
);



