# java-full-stack-dev-u14
UD14 - DDL

Ejercicio 6 peliculas_y_salas


![image](https://github.com/JagaScripts/java-full-stack-dev-u14/blob/master/ejercicio_nueve/cienteificos.jpg)

``` sql
DROP DATABASE IF EXISTS cientificos;
CREATE DATABASE IF NOT EXISTS cientificos;
USE cientificos;

DROP TABLE IF EXISTS cientificos;
CREATE TABLE cientificos (
DNI VARCHAR(8),
nombre_completo NVARCHAR(255) NOT NULL,
PRIMARY KEY (DNI)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS proyectos;
CREATE TABLE proyectos (
id CHAR(4),
nombre NVARCHAR(255) NOT NULL,
horas INT NOT NULL,
PRIMARY KEY (id)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS asignado_a;
CREATE TABLE asignado_a (
cientifico VARCHAR(8),
proyecto CHAR(4),
precio INT DEFAULT NULL,
PRIMARY KEY (cientifico , proyecto),
FOREIGN KEY (cientifico) REFERENCES cientificos (DNI)
ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (proyecto) REFERENCES proyectos (id)
ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB;
```

![image](https://github.com/JagaScripts/java-full-stack-dev-u14/blob/master/ejercicio_nueve/cienteificos.png)
