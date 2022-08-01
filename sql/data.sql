-- Active: 1651560371024@@127.0.0.1@3306@dbg1v2
CREATE DATABASE colegio;
use colegio;
CREATE Table alumnos
(
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    apepat VARCHAR(20),
    apemat VARCHAR (20),
    nombre VARCHAR (20),
    edad INTEGER,
    fechnac DATE,
    dni CHAR(8),
    fechcreat TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE View view_listarAlum
AS
SELECT id,CONCAT(nombre,' ',apepat,' ',apemat) as alumno,edad,fechnac,dni,fechcreat as inscrito FROM alumnos;