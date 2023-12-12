create database base_inicial; -- crear DB

use base_inicial; -- seleccionar la DB a usar

create table Alumnos( -- crear tabla en la DB
codigo int primary key auto_increment,
nombre varchar(25) not null,
apellido varchar(25) not null);

-- insertar datos (filas-> registros)

insert into Alumnos(nombre, apellido) values( 'Jesus','Acevedo'); 
insert into Alumnos(nombre, apellido) values( 'Degano','Eduardo');
insert into Alumnos(nombre, apellido) values( 'Jesus','Acevedo'), -- insertar datos en la tabla Alumnos
( 'Javier','Moro'),( 'Mar','Bus'),( 'sandra','Mar');

describe Alumnos; -- veo la descripcion de la tabla

select * from base_inicial.Alumnos; -- traer contenidos de la tabla

DROP database base_inicial; -- Eliminar base de datos


-- ******************************************************************
/* 1. Crear una base de datos con el nombre
LABORATORIO. En el caso de que la base de
datos exista previamente, eliminarla antes de
iniciar el laboratorio.*/

create database LABORATORIO;

/*
2. Poner en uso la base de datos generada en el
paso anterior.*/

use LABORATORIO;


/*
3. Crear una tabla con el nombre FACTURAS
dentro de la base de datos con la estructura
que se muestra en la diapositiva 5 y tener en
cuenta las siguientes consideraciones:
a. PK significa PRIMARY KEY.
b. Observar que se declara una clave
primaria compuesta por los campos Letra
y Número; cada campo por sí solo no es
clave, ni tampoco identifica al registro, pero
la combinación de ambos forman la clave.*/

create table FACTURAS(
Letra char(1),
Numero int,
ClienteID integer,
ArticuloID integer,
Fecha date,
Monto double,
primary key (letra,numero));
	


/*4. Crear una tabla con el nombre ARTÍCULOS
dentro de la base de datos y tomar en
consideración la estructura definida en la
diapositiva 5.*/

create table ARTICULOS(
	ArticuloID int primary key,
    Nombre varchar(50),
    Precio double,
    Stock integer);



/*
5. Crear una tabla con el nombre CLIENTES
dentro de la base de datos y tomar en
consideración la estructura definida en la
diapositiva siguiente.*/

create table CLIENTES(
	ClienteID integer primary key,
    Nombre varchar(25),
    Apellido varchar(25),
    CUIT char(16),
    Dirección varchar(50),
    Comentarios varchar(50));
	


/*
6. Mostrar un listado de todas las bases de
datos alojadas en el servidor.*/

SHOW DATABASES;



/*7. Mostrar un listado de todas las tablas
generadas anteriormente dentro de la base
de datos con el nombre LABORATORIO.*/

SHOW TABLES;

/*8. Comentar la instrucción que lista las tablas
contenidas dentro de la base de datos
LABORATORIO.*/

-- SHOW TABLES;
# SHOW TABLES;
/* SHOW TABLES;*/

/*
9. Describir la estructura de la tabla CLIENTES.*/

DESCRIBE laboratorio.clientes;
-- DESCRIBE clientes; misma sintaxis
-- DESC clientes; misma sintaxis

/*########################################################################################*/
/*
1. Modificar la tabla FACTURAS tomando en
cuenta las siguientes consideraciones:
a. Cambiar el nombre del campo ClienteID
por IDCliente, manteniendo su tipo de dato
y restricciones ya definidas.
b. Cambiar el nombre del campo ArticuloID
por IDArticulo, manteniendo su tipo de
dato y restricciones ya definidas.
c. Asignar la restricción UNSIGNED al campo
Monto, manteniendo el tipo de dato ya
definido para el campo.*/

alter table facturas
change clienteid IDCliente int,
change articuloid IDArticulo int,
modify monto double unsigned;


/*
2. Modificar la tabla ARTICULOS tomando en
cuenta las siguientes consideraciones:
a. Cambiar el nombre del campo ArticuloID
por IDArticulo, manteniendo su tipo de
dato y restricciones ya definidas.
b. Cambiar el tipo de dato del campo Nombre
para que admita hasta 75 caracteres.
c. Asignar las restricciones UNSIGNED y
NOT NULL al campo Precio, manteniendo
el tipo de dato ya definido para el campo.
c. Cambiar el tipo de dato del campo
Apellido para que admita hasta 35
caracteres y asigne la restricción
correspondiente para que su carga
sea obligatoria.
d. Cambiar el nombre del campo
Comentarios por Observaciones y su
tipo de dato para que admita hasta
255 caracteres.
d. Asignar las restricciones UNSIGNED y
NOT NULL al campo Stock, manteniendo
el tipo de dato ya definido para el campo.*/

ALTER TABLE articulos
change articuloID IDArticulo int,
modify Nombre varchar(75),
modify precio double unsigned not null,
modify stock int unsigned not null;




/*
3. Modificar la tabla CLIENTES. Tomar en
cuenta las siguientes consideraciones:
a. Cambiar el nombre del campo ClienteID
por IDCliente, manteniendo su tipo de dato
y restricciones ya definidas.
b. Cambiar el tipo de dato del campo Nombre
para que admita hasta 30 caracteres y
asigne la restricción correspondiente para
que su carga sea obligatoria*/

ALTER TABLE clientes
change clienteID IDCliente int,
modify nombre varchar(30) not null,
modify apellido varchar(35) not null, 
change Comentarios Observaciones varchar(255);

/*###################################################################*/


-- CARGA DE DATOS

INSERT INTO FACTURAS 
VALUES ('A', 28,14,335,'2021-03-18',1589.50),
('A',39,26,157,'20200412',979.75),
('B',8,17,95,'2019/07/25',513.35),
('A',12,5,411,'2019.11.03',2385.70),
('B',19, 50,157,'2021-12-26',979.75);

INSERT INTO ARTICULOS
VALUES(95,'Webcam con Micrófono Plug & Play',513.35,39),
(157,'Apple AirPods Pro',979.75,152),
(335,'Lavasecarropas Automático Samsung',1589.5,12),
(411,'Gloria Trevi / Gloria / CD+DVD',2385.7,2);

INSERT INTO CLIENTES
VALUES(5,'Santiago','González','23-24582359-9','Uriburu 558 - 7ºA','VIP'),
(14,'Gloria','Fernández','23-35965852-5','Constitución 323','GBA'),
(17,'Gonzalo','López','23-33587416-0','Arias 2624','GBA'),
(26,'Carlos','García','23-42321230-9','Pasteur 322 - 2ºC','VIP'),
(50,'Micaela','Altieri','23-22885566-5',' Santamarina 1255','GBA');





SELECT * FROM FACTURAS;
SELECT * FROM ARTICULOS;
SELECT * FROM CLIENTES;



/*************************************************************************************/

-- USO DE ALIAS

SELECT fecha,monto as importe,letra,numero from facturas;
/*sintaxis: monto as ALIAS
tambien se puede hacer con un espacio,ej monto importe es lo mismo que monto as importe
tambien se puede poner una string de alias, ej monto 'Importe a Facturar' ó monto as 'Importe a Facturar' */

SELECT fecha 'Fecha de venta',monto as importe,letra,numero from facturas;


/*OPERACIONES MATEMATICAS*/
SELECT fecha 'Fecha de Venta',monto as importe, monto *1.21 'Monto + IVA', letra tipo, numero from facturas;

-- trunco en 2 decimales usando round, sintaxis: round(expression,decimals) ej round(1+3.14,1) dará 4.1
-- si se quiere un entero sin decimales, no se especifica el comando decimals, ej round(1+3.14) ó round(1+3.14,0) dará 4
SELECT fecha 'Fecha de Venta',monto as importe,round( monto *1.21) 'Monto + IVA', letra tipo, numero from facturas; 

SELECT fecha 'Fecha de Venta',monto as importe,round( monto *1.21) 'Monto + IVA', letra tipo, numero from facturas; 

/*------------------------------------------------------------------------------------------------------------------*/


