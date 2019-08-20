DROP DATABASE AppTio;

CREATE DATABASE AppTio;

USE AppTio;

CREATE TABLE Libros ( 
idlibros INT PRIMARY KEY,
Titulo VARCHAR(20) NOT NULL,
Autor VARCHAR(20) NOT NULL,
Descripcion VARCHAR (20) NOT NULL,
TotalPag INT NOT NULL,
Precio MONEY NOT NULL,
);

CREATE TABLE Usuario (
IdUsuario INT PRIMARY KEY,
Nombre VARCHAR(20) NOT NULL,
Apellidos VARCHAR(20) NOT NULL,
Correo VARCHAR(20) NOT NULL,
Username VARCHAR(20) NOT NULL,
Password VARCHAR(20) NOT NULL,
Rol VARCHAR(20) NOT NULL,
);
