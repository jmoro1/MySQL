use laboratorio;

/*-------------------------------------FUNCIONES-----------------------------*/

SELECT curdate(),current_time(); -- current date, current time
SELECT upper('celeste andrea candia'), lower('CELESTE ANDREA CANDIA'); -- CAMBIAR TEXTO DE MINUSCULA A MAYUSCULA, DE MAYUSCULA A MINUSCULA
SELECT concat('Eduardo','Degano'); -- CONCAT
SELECT concat_ws('-','Degano'); -- VER ACA BIEN LA SINTAXIS

-- PARA EXTRAER TEXTO SE USA left PARA EXTRAER N CANTIDAD DE CARACTERES EMPEZANDO POR LA IZQ

select left('Eduardo',2); -- OUTPUT ES Ed
select right('Eduardo',2); -- OUTPUT ES do

-- FUNCIONES DE FECHA
-- Daypart DEVUELVE SIEMPRE VALORES ENTEROS 

select * from pedidos where month(fecha_pedido) in (1,2,3);
select * from pedidos where month(fecha_pedido) <=6;
select * from pedidos where day(fecha_pedido) >15; -- SEGUNDA QUINCENA
select * from pedidos where month(fecha_pedido) between 8 and 22; -- ENTRE LA SEMANA 2 Y 3
-- COMO DESCOMPONER LAS HORAS

select *, hour(fecha_pedido),minute(fecha_pedido),second(fecha_pedido) hora from pedidos;


-- MATH

select nombre,precio * 1.27, round(precio * 1.27,2) 'Precio IVA' from articulos;
 -- mod(10,2) -- FUNCION mod() DEVUELVE EL RESTO DE LA DIVISION
-- pow(2,8) HACE LA POTENCIA 8VA DE 2, OUTPUT SERIA 256 = 2^8
