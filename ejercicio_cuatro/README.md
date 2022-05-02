# java-full-stack-dev-u14
UD14 - DDL

Ejercicio 4 Empleados


![image](https://github.com/JagaScripts/java-full-stack-dev-u14/blob/master/ejercicio_cuatro/empleados.jpg)

``` sql
DROP DATABASE IF EXISTS empleados;
CREATE DATABASE IF NOT EXISTS empleados;
USE empleados;


DROP TABLE IF EXISTS departamentos;
CREATE TABLE IF NOT EXISTS departamentos (
codigo INT,
nombre NVARCHAR (100) NOT NULL,
presupuesto INT NOT NULL,
PRIMARY KEY (codigo)
)ENGINE=InnoDB;


DROP TABLE IF EXISTS empleados;
CREATE TABLE IF NOT EXISTS empleados (
DNI NVARCHAR(8),
nombre NVARCHAR (100) NOT NULL,
apellidos NVARCHAR (255) NOT NULL,
departamento INT NOT NULL,
PRIMARY KEY (DNI),
FOREIGN KEY (departamento) REFERENCES departamentos (codigo)
ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB;
```

![image](https://github.com/JagaScripts/java-full-stack-dev-u14/blob/master/ejercicio_cuatro/empleados.png)
