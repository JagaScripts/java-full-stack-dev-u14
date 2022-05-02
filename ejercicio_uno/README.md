# java-full-stack-dev-u14
UD14 - DDL

Ejercicio 1 METEO

![image](https://github.com/JagaScripts/java-full-stack-dev-u14/blob/master/ejercicio_uno/meteo.jpg)

``` sql
CREATE DATABASE IF NOT EXISTS meteo;
USE meteo;

CREATE TABLE IF NOT EXISTS estacion (
identificador MEDIUMINT UNSIGNED NOT NULL,
latitud VARCHAR (14) NOT NULL,
longitud VARCHAR (15) NoT NULL,
altitud MEDIUMINT NOT NULL,
PRIMARY KEY (identificador)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS muestra (
identificadorestacion MEDIUMINT UNSIGNED NOT NULL,
fecha DATE NOT NULL,
temperaturaminima TINYINT,
temperaturamaxima TINYINT,
precipitaciones SMALLINT UNSIGNED,
humedadminima TINYINT UNSIGNED,
humedadmaxima TINYINT UNSIGNED,
velocidadminima SMALLINT UNSIGNED,
velocidadmaxima SMALLINT UNSIGNED,
KEY (identificadorestacion),
FOREIGN KEY (identificadorestacion)
REFERENCES estacion (identificador)
ON DELETE NO ACTION
ON UPDATE CASCADE
)ENGINE=InnoDB;
```
![image](https://github.com/JagaScripts/java-full-stack-dev-u14/blob/master/ejercicio_uno/meteo.png)
