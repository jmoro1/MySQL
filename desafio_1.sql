-- EJERCICIO DESAFIO CLASE 1

/*1. Crear una base de datos con el nombre
BONUS_TRACK.*/
create database BONUS_TRACK;
/*
2. Poner en uso la base de datos generada en el
paso anterior.*/

use BONUS_TRACK;

/*3. Crear una tabla con el nombre “AGENDA”
dentro de la base de datos, con la estructura
que se muestra en la siguiente diapositiva.*/

create table Agenda(
	IDContacto int primary key,
    Nombre varchar(20) not null,
    Apellido varchar(15) not null,
    Domicilio varchar(50),
    Teléfono int not null);
    

/*4. Comentar el código SQL generado para la
creación de la tabla “AGENDA”.*/ 
/*create table Agenda(
	IDContacto int primary key,
    Nombre varchar(20) not null,
    Apellido varchar(15) not null,
    Domicilio varchar(50),
    Teléfono int not null);*/

/*5. Visualizar las tablas existentes en la base de
datos para verificar la creación de la tabla
“AGENDA”.*/

SHOW TABLES;

/*6. Visualizar la estructura de la tabla
“AGENDA”.*/

DESCRIBE BONUS_TRACK.AGENDA;

/*7. Agregar el campo MAIL a la tabla. Este
campo deberá contener como máximo 50
caracteres y su carga es obligatoria.*/

ALTER TABLE AGENDA
ADD MAIL varchar(50) not null;

/*8. Insertar 4 registros en la tabla “AGENDA”.*/

INSERT INTO AGENDA
VALUES(1,'Enrico','Fermi','Calle Falsa 123',44412536,'das@dasd.com'),
(2,'Werner','Heisenberg','Calle Falsa 456',44682536,'dasas@dasd.com'),
(4,'Niels','Bohr','Calle 234 1143',49852369,'hola@dasd.com'),
(5,'Richard','Feynman','Calle Falsa 123',44412536,'das@dasd.com');

SELECT * FROM AGENDA;

