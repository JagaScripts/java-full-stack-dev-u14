# java-full-stack-dev-u14
UD14 - DDL

Ejercicio 8 piezas_y_proveedores


![image](https://github.com/JagaScripts/java-full-stack-dev-u14/blob/master/ejercicio_ocho/piezas_y_proveedores.jpg)

``` sql
DROP DATABASE IF EXISTS piezas_y_proveedores;
CREATE DATABASE IF NOT EXISTS piezas_y_proveedores;
USE piezas_y_proveedores;

DROP TABLE IF EXISTS piezas;
CREATE TABLE piezas (
codigo INT,
nombre NVARCHAR(100) NOT NULL,
PRIMARY KEY (codigo)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS proveedores;
CREATE TABLE proveedores (
id CHAR(4),
nombre NVARCHAR(100) NOT NULL,
PRIMARY KEY (id)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS suministra;
CREATE TABLE suministra (
codigo_pieza INT,
id_proveedor CHAR(4),
precio INT DEFAULT NULL,
PRIMARY KEY (codigo_pieza, id_proveedor),
FOREIGN KEY (codigo_pieza) REFERENCES piezas (codigo)
ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (id_proveedor) REFERENCES proveedores (id)
ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB;

```

![image](https://github.com/JagaScripts/java-full-stack-dev-u14/blob/master/ejercicio_ocho/piezas_y_proveedores.png)
