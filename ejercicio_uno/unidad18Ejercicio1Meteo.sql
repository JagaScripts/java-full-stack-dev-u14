DROP DATABASE IF EXISTS meteo;
CREATE DATABASE IF NOT EXISTS meteo;
USE meteo;

DROP TABLE IF EXISTS estacion;
CREATE TABLE IF NOT EXISTS estacion (
identificador MEDIUMINT UNSIGNED,
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
FOREIGN KEY (identificadorestacion) REFERENCES estacion (identificador)
ON DELETE NO ACTION ON UPDATE CASCADE
)ENGINE=InnoDB;

