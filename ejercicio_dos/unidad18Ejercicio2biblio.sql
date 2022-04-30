DROP DATABASE IF EXISTS biblio;
CREATE DATABASE IF NOT EXISTS biblio;
USE biblio;

DROP TABLE IF EXISTS editorial;
CREATE TABLE IF NOT EXISTS editorial (
claveeditorial SMALLINT,
nombre VARCHAR (60),
direccion VARCHAR (60),
telefono VARCHAR (15),
PRIMARY KEY (claveeditorial)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS libro;
CREATE TABLE IF NOT EXISTS libro (
clavelibro INT,
titulo VARCHAR (60),
idioma VARCHAR (15),
formato VARCHAR (15),
claveeditorial SMALLINT,
PRIMARY KEY (clavelibro),
KEY (claveeditorial),
FOREIGN KEY (claveeditorial) REFERENCES editorial (claveeditorial)
ON DELETE SET NULL ON UPDATE CASCADE
)ENGINE=InnoDB;


DROP TABLE IF EXISTS tema;
CREATE TABLE IF NOT EXISTS tema (
clavetema SMALLINT,
nombre VARCHAR (40),
PRIMARY KEY (clavetema)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS autor;
CREATE TABLE IF NOT EXISTS autor (
claveautor INT,
nombre VARCHAR (60),
PRIMARY KEY (claveautor)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS ejemplar;
CREATE TABLE IF NOT EXISTS ejemplar (
claveejemplar INT,
clavelibro INT NOT NULL,
numeroorden SMALLINT NOT NULL,
edicion SMALLINT,
ubicacion VARCHAR (15),
categoria CHAR,
PRIMARY KEY (claveejemplar),
FOREIGN KEY (clavelibro) REFERENCES libro (clavelibro)
ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=InnoDB;

DROP TABLE IF EXISTS socio;
CREATE TABLE IF NOT EXISTS socio (
clavesocio INT,
nombre VARCHAR (60),
direccion VARCHAR (60),
telefono VARCHAR (15),
categoria CHAR,
PRIMARY KEY (clavesocio)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS prestamo;
CREATE TABLE IF NOT EXISTS prestamo (
clavesocio INT,
claveejemplar INT,
numeroorden SMALLINT,
fecha_prestamo DATE NOT NULL,
fecha_devolucion DATE DEFAULT NULL,
notas BLOB,
FOREIGN KEY (clavesocio) REFERENCES socio (clavesocio)
ON DELETE SET NULL ON UPDATE CASCADE,
FOREIGN KEY (claveejemplar) REFERENCES ejemplar (claveejemplar)
ON DELETE SET NULL ON UPDATE CASCADE
)ENGINE=InnoDB;

DROP TABLE IF EXISTS trata_sobre;
CREATE TABLE IF NOT EXISTS trata_sobre (
clavelibro INT NOT NULL,
clavetema SMALLINT,
FOREIGN KEY (clavelibro) REFERENCES libro (clavelibro)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (clavetema) REFERENCES tema (clavetema)
ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=InnoDB;

DROP TABLE IF EXISTS escrito_por;
CREATE TABLE IF NOT EXISTS escrito_por (
clavelibro INT NOT NULL,
claveautor INT NOT NULL,
FOREIGN KEY (clavelibro) REFERENCES libro (clavelibro)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (claveautor) REFERENCES autor (claveautor)
ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=InnoDB;
