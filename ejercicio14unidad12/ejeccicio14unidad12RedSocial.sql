create database redSocial;
use redSocial;

DROP TABLE IF EXISTS Usuarios;
create table Usuarios(
ID INT AUTO_INCREMENT PRIMARY KEY,
IDUsuario INT,
Contraseña varchar(255),
Nombre varchar(255),
Apellidos varchar(255),
telefono varchar(255),
foto blob(65535)
);

DROP TABLE IF EXISTS Celebridad;
 create table Celebridad(idCelebridad int auto_increment PRIMARY KEY,
 verificado boolean,
 idUsuarios int,
 Key(idUsuarios),
 FOREIGN KEY(idUsuarios)references Usuarios (id) 
on delete cascade on update cascade);

DROP TABLE IF EXISTS Comun;
 create table Comun(idComun int PRIMARY KEY,
 direccion varchar(255),
 email varchar(9),
 idUsuarios int,
 Key(idUsuarios),
 FOREIGN KEY(idUsuarios)references Usuarios (id) 
on delete cascade on update cascade);

DROP TABLE IF EXISTS Comentarios;
create table Comentarios(
ID int auto_increment primary key,
texto varchar(255) null,
imagen BLOB(65535),
idUsuario int,
Key(idUsuario),
FOREIGN KEY(idUsuario) REFERENCES Usuarios(id)
ON DELETE RESTRICT ON UPDATE CASCADE
);

DROP TABLE IF EXISTS Grupos;
create table Grupos(
id int PRIMARY KEY,
listaContactos int,
nombre varchar(255),
idContacto int,
Key(idContacto),
FOREIGN KEY(idContacto) REFERENCES Usuarios(id)
ON DELETE RESTRICT ON UPDATE CASCADE
);

DROP TABLE IF EXISTS EsContacto;
create table EsContacto(
id int auto_increment primary key,
idUsuario int,
bloqueado boolean,
key(idUsuario),
FOREIGN KEY(idUsuario) references Usuarios(id)
ON DELETE RESTRICT ON UPDATE CASCADE
);

create table Tienen(
id int auto_increment primary key,
idUsuario int,
idGrupos int,
FOREIGN KEY(idUsuario) references Usuarios(id)
ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY(idGrupos) references Grupos(id)
ON DELETE RESTRICT ON UPDATE CASCADE
);