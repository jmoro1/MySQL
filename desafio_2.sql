/*------------------------------------------------------------------------------------------------------------------*/

-- PARA IMPORTAR ARCHIVOS HAY QUE DAR CLICK DERECHO EN TABLES-> TABLE DATA IMPORT WIZARD 
-- ELEGIR EL ARCHIVO CSV Y DAR SIGUIENTE HASTA TERMINAR

/*---------------------------------INTEGRADOR CLASE 2---------------------------------*/
/*
2. Llevar a cabo los siguientes cambios en la
tabla CLIENTES_NEPTUNO importada ante-
riormente. Respetar las consignas detalladas
a continuación y utilizar el comando ALTER
TABLE:
a. Campo IDCliente: debe ser de tipo
VARCHAR, debe admitir hasta 5 caracteres como máximo y debe ser el campo
PRIMARY KEY de la tabla.
b. Campo NombreCompania: debe ser de
tipo VARCHAR, debe admitir hasta 100
caracteres como máximo y no puede
quedar vacío.
c. Campo Pais: debe ser de tipo VARCHAR,
debe admitir hasta 15 caracteres como
máximo y no puede quedar vacío.*/

ALTER TABLE clientes_neptuno
MODIFY IDCliente varchar(5) PRIMARY KEY,
MODIFY NombreCompania varchar(100) NOT NULL,
MODIFY Pais varchar(15) NOT NULL;


/*
3. Cambiar el nombre de la tabla CLIENTES por
CONTACTOS.*/
RENAME TABLE clientes TO contactos;


/*4. Importar el archivo CSV con el nombre
CLIENTES a la base de datos
LABORATORIO. Y tener en cuenta las
siguientes indicaciones:
a. Este archivo lo encontrarás disponible en el
área de descargas del presente módulo.
b. No cambiar el nombre de la tabla.
c. Mantener los tipos de datos asignados al
momento de la importación.*/

/*
5. Llevar a cabo los siguientes cambios en la
tabla CLIENTES importada anteriormente.
Respetar las consignas detalladas a conti-
nuación y utiliza el comando ALTER TABLE:
a. Campo Cod_Cliente: debe ser de tipo
VARCHAR, debe admitir hasta 7 carac-
teres como máximo y debe ser el campo
PRIMARY KEY de la tabla.
b. Campo Empresa: debe ser de tipo
VARCHAR, debe admitir hasta 100
caracteres como máximo y no puede
quedar vacío.
c. Campo Ciudad: debe ser de tipo
VARCHAR, debe admitir hasta 25 caracte-
res como máximo y no puede quedar vacío.
d. Campo Telefono: debe ser de tipo INT y no
debe admitir valores numéricos negativos.
e. Campo Responsable: debe ser de tipo
VARCHAR y debe admitir como máximo
hasta 30 caracteres.*/

ALTER TABLE contactos
MODIFY COD_CLIENTE VARCHAR(7) PRIMARY KEY,
MODIFY EMPRESA VARCHAR(100) NOT NULL,
MODIFY CIUDAD VARCHAR(25) NOT NULL,
MODIFY TELEFONO int UNSIGNED,
MODIFY RESPONSABLE VARCHAR(30);



/*
6. Importar el archivo CSV con el nombre
PEDIDOS a la base de datos LABORATORIO.
Y tener en cuenta las siguientes indicaciones:
a. Este archivo lo encontrarás disponible en el
área de descargas del presente módulo.
b. No cambiar el nombre de la tabla.
c. Mantener los tipos de datos asignados al
momento de la importación.*/

-- HECHO

/*
7. Llevar a cabo los siguientes cambios en la
tabla PEDIDOS importada anteriormente.
Respetar las consignas detalladas a conti-
nuación y utilizar el comando ALTER TABLE:
a. Campo Numero_Pedido: debe ser de tipo
INT, sólo debe aceptar valores numéricos
enteros y debe ser el campo PRIMARY KEY
de la tabla.
b. Campo Codigo_Cliente: debe ser de tipo
VARCHAR, debe admitir hasta 7 caracte-
res como máximo y no puede quedar vacío.
c. Campo Fecha_Pedido: debe ser de tipo
DATE y su carga es obligatoria.
Introducción a Bases de Datos y SQL
d. Campo Forma_Pago: sólo debe admitir la
carga de los valores APLAZADO,
CONTADO o TARJETA.
e. Campo Enviado: sólo debe admitir la carga
de los valores SI o NO.
*/

ALTER TABLE pedidos
MODIFY NUMERO_PEDIDO int PRIMARY KEY,
MODIFY CODIGO_CLIENTE VARCHAR(7) NOT NULL,
MODIFY FECHA_PEDIDO DATE NOT NULL,
MODIFY FORMA_PAGO ENUM('APLAZADO','CONTADO','TARJETA'),
MODIFY ENVIADO ENUM('SI','NO');


/*
8. Importar el archivo CSV: PRODUCTOS a la
base de datos LABORATORIO. Y tener en
cuenta las siguientes indicaciones:
a. Este archivo lo encontrarás disponible en
el área de descargas del presente módulo.
b. No cambiar el nombre de la tabla.
c. Mantener los tipos de datos asignados al
momento de la importación.*/


/*
9. Llevar a cabo los siguientes cambios en la
tabla PRODUCTOS importada en el paso
anterior. Respetar las consignas detalladas a
continuación, utilizando el comando ALTER
TABLE:
a. Campo Cod_Producto: debe ser de tipo
INT, sólo debe aceptar valores numéricos
enteros y debe ser el campo PRIMARY KEY
de la tabla.
b. Campo Seccion: debe ser de tipo
VARCHAR, debe admitir hasta 20
caracteres como máximo y no puede
quedar vacío.
c. Campo Nombre: debe ser de tipo VARCHAR, debe
admitir hasta 40 caracteres como máximo y no
puede quedar vacío.
d. Campo Importado: sólo debe admitir la carga de los
valores VERDADERO o FALSO.
e. Campo Origen: debe ser de tipo VARCHAR, admitir
hasta 25 caracteres y ser de carga obligatoria.
f. Campos Dia, Mes y Ano: deben ser de tipo INT,
positivos y de carga obligatoria.*/


ALTER TABLE productos
MODIFY COD_PRODUCTO INT UNSIGNED PRIMARY KEY,
MODIFY SECCION VARCHAR(20) NOT NULL,
MODIFY NOMBRE VARCHAR(40) NOT NULL,
MODIFY IMPORTADO ENUM('VERDADERO','FALSO'),
MODIFY ORIGEN VARCHAR(25) NOT NULL,
MODIFY DIA INT UNSIGNED NOT NULL,
MODIFY MES INT UNSIGNED NOT NULL,
CHANGE ANO ANIO INT UNSIGNED NOT NULL;


/*--------------------------------------ETAPA 2.2----------------------------------------*/
/*
1. Abrir el archivo con formato SQL con el nombre
NACIMIENTOS* desde MySQL Workbench.
(Este archivo lo encontrarás disponible en el área
de Descargas del presente módulo).
2. Ejecutar el código.*/

-- OK
/*
3. Actualizar los esquemas para corroborar la
generación de la tabla NACIMIENTOS dentro
de la base de datos LABORATORIO.
(*) Esta tabla contiene todos los nacimientos ocurridos
durante el año 2017 en Chile (información verídica,
obtenida desde la página del Ministerio de Salud de Chile).
Nota: si no recuerdas los pasos para
llevar a cabo la importación de tablas
desde orígenes externos, puedes leer
el contenido de este módulo.*/


-- OK

/*
4. Abrir el archivo con formato SQL con el
nombre PEDIDOS_NEPTUNO desde MySQL
Workbench.*/

-- OK

/*
5. Ejecutar el código.
6. Abrir el archivo con formato SQL con el
nombre TABLAS_EXTRAS desde MySQL
Workbench.
7. Ejecutar el código.
*/
-- OK
/*
8. Actualizar los esquemas para corroborar la
generación de la tabla PEDIDOS_NEPTUNO
dentro de la base de datos LABORATORIO.
*/
-- OK

/*
9. Cerrar los scripts con los nombres
NACIMIENTOS, PEDIDOS NEPTUNO y
TABLAS EXTRAS.*/
-- OK


/*-------------------------------------ETAPA 2.3----------------*/

/*
Etapa 2.3: Consultar tablas
1. Mostrar todo el contenido de la tabla
CLIENTES_NEPTUNO importada en el
laboratorio anterior.
*/

SELECT * FROM clientes_neptuno;


/*2. Mostrar todos los registros de la tabla
CLIENTES_NEPTUNO. En el resultado de la
consulta sólo se deben observar las columnas
NOMBRECOMPANIA, CIUDAD y PAIS.*/

SELECT NOMBRECOMPANIA, CIUDAD,PAIS FROM clientes_neptuno;

/*3. Mostrar todos los registros de la tabla
CLIENTES_NEPTUNO. En el resultado de la
consulta sólo se deben observar las columnas
NOMBRECOMPANIA, CIUDAD y PAIS.
Luego, ordenar alfabéticamente el resultado
de la consulta por los nombres de los países.*/

SELECT NOMBRECOMPANIA, CIUDAD,PAIS FROM clientes_neptuno ORDER BY PAIS;
-- ORDENA ALFABETICAMENTE, SI QUIERO QUE ORDENE AL REVES
SELECT NOMBRECOMPANIA, CIUDAD,PAIS FROM clientes_neptuno ORDER BY PAIS DESC;

/*
4. Mostrar todos los registros de la tabla
CLIENTES_NEPTUNO. En el resultado de la
consulta sólo se deben observar las columnas
NOMBRECOMPANIA, CIUDAD y PAIS.
Ordenar el resultado de la consulta
alfabéticamente por los nombres de los
países. Para aquellos países que se repiten,
ordenar las ciudades alfabéticamente.
Introducción a bases de datos y SQL*/

SELECT NOMBRECOMPANIA, CIUDAD,PAIS FROM clientes_neptuno ORDER BY PAIS,CIUDAD; -- ORDENA PRIMERO POR PAIS,LUEGO POR CIUDAD

/*
5. Mostrar todos los registros de la tabla
CLIENTES_NEPTUNO. En el resultado de la
consulta sólo se deben observar las columnas
NOMBRECOMPANIA, CIUDAD y PAIS.
Ordenar de manera alfabética el resultado de
la consulta, por los nombres de los países.
Mostrar únicamente los 10 primeros clientes.*/
SELECT NOMBRECOMPANIA, CIUDAD,PAIS FROM clientes_neptuno ORDER BY PAIS LIMIT 10;


/*
6. Mostrar todos los registros de la tabla
CLIENTES_NEPTUNO. En el resultado de la
consulta sólo se deben observar las columnas
NOMBRECOMPANIA, CIUDAD y PAIS.
Ordenar de manera alfabética el resultado de
la consulta, por los nombres de los países.
Mostrar únicamente los clientes ubicados
desde la posición 11 hasta la 15.*/

SELECT NOMBRECOMPANIA, CIUDAD,PAIS FROM clientes_neptuno ORDER BY PAIS LIMIT 15;

SELECT NOMBRECOMPANIA, CIUDAD,PAIS FROM clientes_neptuno ORDER BY PAIS LIMIT 5 OFFSET 10;

/*---------------------------------------------------------------------------------------------------------------------*/


SELECT * FROM CONTACTOS WHERE (RESPONSABLE = 'Santiago' OR RESPONSABLE ='Gonzalo' OR RESPONSABLE  = 'micaela');
SELECT * FROM CONTACTOS WHERE RESPONSABLE NOT IN ('Santiago','Gonzalo','micaela'); -- VEO LOS RESULTADOS QUE NO SEAN ('Santiago','Gonzalo','micaela')

SELECT NOMBRE,PRECIO FROM ARTICULOS WHERE PRECIO = 513.35;
SELECT NOMBRE,PRECIO FROM ARTICULOS WHERE PRECIO > 513.35;
SELECT NOMBRE,PRECIO FROM ARTICULOS WHERE PRECIO < 600 AND STOCK > 40;
SELECT NOMBRE,PRECIO FROM ARTICULOS WHERE PRECIO BETWEEN 513.35 AND 979.75;
SELECT * from nacimientos where nacionalidad <> 'chilena';

/*-----------------------------------------------SECCION 2.4-----------------------------------*/
/*
1. De la tabla NACIMIENTOS, obtener una lista
de todos aquellos bebés nacidos de madres
extranjeras. Mostrar todos los campos de la
tabla en el resultado de la consulta.*/

SELECT * FROM NACIMIENTOS WHERE NACIONALIDAD = 'Extranjera';

/*
2. De la tabla NACIMIENTOS, obtener una lista
de todos aquellos bebés nacidos de madres
menores de edad. Mostrar todos los campos
de la tabla en el resultado de la consulta y
ordenar el resultado de menor a mayor por
la edad de las madres.*/

SELECT * FROM NACIMIENTOS WHERE EDAD_MADRE <18 ORDER BY EDAD_MADRE;


/*3. De la tabla NACIMIENTOS, obtener una lista
de todos aquellos bebés nacidos de madres
que tengan la misma edad que el padre.
Mostrar todos los campos de la tabla en
el resultado de la consulta.*/

SELECT * FROM NACIMIENTOS WHERE EDAD_MADRE = EDAD_PADRE;

/*
4. De la tabla NACIMIENTOS, obtener una lista
de todos aquellos bebés nacidos de madres
que, con respecto al padre, tengan 40 años o
menos que el padre.*/
SELECT * FROM NACIMIENTOS WHERE ((EDAD_PADRE - EDAD_MADRE)>40);

/*
5. De la tabla CLIENTES_NEPTUNO, obtener
una lista de todos aquellos clientes que
residen en Argentina. Mostrar todos los
campos de la tabla en el resultado de la
consulta.*/

SELECT * FROM CLIENTES_NEPTUNO WHERE PAIS = 'Argentina';

/*
6. De la tabla CLIENTES_NEPTUNO, obtener
una lista de todos los clientes, con excepción
de los que residen en Argentina. Mostrar
todos los campos de la tabla en el resultado
de la consulta y ordenar alfabéticamente
dicho resultado por los nombres de los países.*/

SELECT * FROM CLIENTES_NEPTUNO WHERE PAIS <> 'Argentina' ORDER BY PAIS;
/*
7. De la tabla NACIMIENTOS, obtener una lista
de todos aquellos bebés que nacieron con
menos de 20 semanas de gestación. Mostrar
todos los campos de la tabla en el resultado
de la consulta y ordenar dicho resultado de
mayor a menor, por los valores de la columna
SEMANAS.*/

SELECT * FROM NACIMIENTOS WHERE SEMANAS < 20 ORDER BY SEMANAS DESC;
/*
8. De la tabla NACIMIENTOS, obtener una lista
de todos los bebés de sexo femenino,
nacidos de madres extranjeras solteras, de
más de 40 años. Mostrar todos los campos
de la tabla en el resultado de la consulta.*/

SELECT * FROM NACIMIENTOS WHERE SEXO = 'Femenino' AND NACIONALIDAD = 'Extranjera' AND ESTADO_CIVIL_MADRE = 'Soltera' AND EDAD_MADRE > 40;

/*
9. De la tabla CLIENTES_NEPTUNO, obtener
una lista de todos aquellos clientes que
residan en países sudamericanos.
Mostrar todos los campos de la tabla en el
resultado de la consulta y ordenar de manera
alfabética los registros, por los nombres de
los países y las ciudades.*/

SELECT * FROM CLIENTES_NEPTUNO WHERE PAIS IN ('Argentina','Brasil','Venezuela') ORDER BY PAIS,CIUDAD;

/*
10. De la tabla NACIMIENTOS, obtener una lista
de todos aquellos bebés que hayan nacido
con una cantidad de semanas de gestación
de entre 20 y 25 semanas, inclusive. Mostrar
todos los campos de la tabla en el resultado
de la consulta y ordenar el resultado según
las semanas de gestación de los recién
nacidos, de menor a mayor.*/

SELECT * FROM NACIMIENTOS WHERE SEMANAS BETWEEN 20 AND 25 ORDER BY SEMANAS;

/*
11. De la tabla NACIMIENTOS, utilizar el opera-
dor IN y obtener una lista de todos los bebés
que nacieron en las comunas 1101, 3201,
5605, 8108, 9204, 13120 y 15202. Mostrar
todos los campos de la tabla en el resultado
de la consulta y ordenar de menor a mayor
los registros, por los números de comuna.*/

SELECT * FROM NACIMIENTOS WHERE COMUNA IN ('1101','3201','5605','8108','9204','13120','15202') ORDER BY COMUNA;  -- VER!!
/*
12. De la tabla CLIENTES_NEPTUNO, obtener una lista de
todos aquellos clientes cuyo ID comience con la letra
C. Mostrar todos los campos de la tabla, en el
resultado de la consulta.*/

SELECT * FROM CLIENTES_NEPTUNO WHERE IDCLIENTE LIKE 'C%';

/*
13. De la tabla CLIENTES_NEPTUNO, obtener una lista de
todos aquellos clientes que residan en una ciudad que
comience con la letra B y en total posea 5 caracteres.
Mostrar todos los campos de la tabla en el resultado
de la consulta.*/

SELECT * FROM CLIENTES_NEPTUNO WHERE CIUDAD LIKE 'B____';
/*
14. De la tabla NACIMIENTOS, obtener una lista de todos
aquellos padres que tengan más de 10 hijos.*/

SELECT * FROM NACIMIENTOS WHERE HIJOS_VIVOS >10;