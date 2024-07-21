CREATE DATABASE banmodelo;
GO
USE banmodelo;
GO

CREATE TABLE cliente (id INT PRIMARY KEY, nombre VARCHAR(50),
apellidos VARCHAR(50), telefono VARCHAR(10));

CREATE TABLE cuenta (numCuenta VARCHAR(10) PRIMARY KEY, tipo VARCHAR(25), saldo FLOAT,
idCliente INT FOREIGN KEY REFERENCES cliente (id));

CREATE TABLE movimiento (numCuenta VARCHAR (10) NOT NULL,
                         numCuenta2 VARCHAR (10) NOT NULL,
                         importe FLOAT,
                         fecha DATE,
                         PRIMARY KEY (numCuenta, numCuenta2),
                         CONSTRAINT FK_MOV
                         FOREIGN KEY (numCuenta)
                         REFERENCES cuenta (numCuenta),
                         CONSTRAINT FK_MOV2
                         FOREIGN KEY (numCuenta2)
                         REFERENCES cuenta (numCuenta));