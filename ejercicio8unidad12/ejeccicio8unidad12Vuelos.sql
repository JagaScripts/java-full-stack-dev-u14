create database EJ8;

CREATE TABLE `EJ8`.`AVIO` (
    `Codigoavion` CHAR(255) NOT NULL PRIMARY KEY,
    `NumPlazas` CHAR(255) NOT NULL
    
);

CREATE TABLE `EJ8`.`CLIENTES` (
    `DNI` CHAR(255) NOT NULL PRIMARY KEY,
    `NombreCliente` CHAR(255) NOT NULL,
    `DireccionClientes` CHAR(255) NOT NULL,
    `TelefonoClientes` CHAR(255) NOT NULL,
    `TarjetaClientes` CHAR(255) NOT NULL
);

CREATE TABLE `EJ8`.`VOLS` (
    `CodigoVuelo` CHAR(255) NOT NULL PRIMARY KEY,
    `FechaSalida` CHAR(255) NOT NULL,
    `FechaLlegada` CHAR(255) NOT NULL,
    `AeropuertoOrigen` CHAR(255) NOT NULL,
    `AeropuertoDestino` CHAR(255) NOT NULL,
    `CodigoAvio` CHAR(255) NOT NULL,
	key(CodigoAvio), FOREIGN KEY(CodigoAvio) REFERENCES AVIO(Codigoavion)
    ON delete restrict ON update cascade
);

CREATE TABLE `EJ8`.`Reserva` (
    `DNI` CHAR(255) NOT NULL,
    `CodigoVuelo` CHAR(255) NOT NULL,
    PRIMARY KEY (DNI,CodigoVuelo)
);

CREATE TABLE `EJ8`.`EMBARQUE` (
    `NumeroReserva` CHAR(255) NOT NULL PRIMARY KEY,
    `FechaEmbarque` CHAR(255) NOT NULL,
	`CodigoCliente` CHAR(255) NOT NULL,
    key(CodigoCliente), FOREIGN KEY(CodigoCliente) REFERENCES CLIENTES(DNI)
    ON delete cascade ON update cascade
);

CREATE TABLE `EJ8`.`LLOC` (
    `NumeroAsiento` CHAR(255) NOT NULL PRIMARY KEY,
    `FilaAvion` CHAR(255) NOT NULL,
	`ColumnaAvion` CHAR(255) NOT NULL,
	`PlantaAvion` CHAR(255) NOT NULL,
	`CodigoAvion` CHAR(255) NOT NULL,
	key(CodigoAvion), FOREIGN KEY(CodigoAvion) REFERENCES AVIO(Codigoavion)
    ON delete cascade ON update cascade,
    `NumeroReserva` CHAR(255) NOT NULL ,
	key(NumeroReserva), FOREIGN KEY(NumeroReserva)REFERENCES EMBARQUE(NumeroReserva)
    ON delete cascade ON update cascade
);

CREATE TABLE `EJ8`.`AEROPUERTO` (
    `CodigoAeropuerto` CHAR(255) NOT NULL PRIMARY KEY,
    `NombreAeropuerto` CHAR(255) NOT NULL,
	`Pais` CHAR(255) NOT NULL,
	`Localidad` CHAR(255) NOT NULL
);

CREATE TABLE `EJ8`.`Fer` (
    `CodigoVuelo` CHAR(255) NOT NULL,
    `CodigoAeropuerto` CHAR(255) NOT NULL,
    PRIMARY KEY (CodigoVuelo , CodigoAeropuerto)
);