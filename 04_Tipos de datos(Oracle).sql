/*
Primer problema:

Un videoclub que alquila películas en video almacena la información de sus películas en una tabla llamada "peliculas"; para cada
película necesita los siguientes datos:

-nombre, cadena de caracteres de 20 de longitud,
-actor, cadena de caracteres de 20 de longitud,
-duración, valor numérico entero que no supera los 3 dígitos.
-cantidad de copias: valor entero de un sólo dígito (no tienen más de 9 copias de cada película).

1- Elimine la tabla "peliculas" si ya existe.

2- Cree la tabla eligiendo el tipo de dato adecuado para cada campo.
Note que los campos "duracion" y "cantidad", que almacenarán valores sin decimales,
fueron definidos de maneras diferentes, 
en el primero especificamos el valor 0 como cantidad de decimales, 
en el segundo no especificamos cantidad de decimales, es decir,
por defecto, asume el valor 0.

3- Vea la estructura de la tabla.

4- Ingrese los siguientes registros:
peliculas (nombre, actor, duracion, cantidad)
('Mision imposible','Tom Cruise',128,3);
peliculas (nombre, actor, duracion, cantidad)
('Mision imposible 2','Tom Cruise',130,2);
 peliculas (nombre, actor, duracion, cantidad)
('Mujer bonita','Julia Roberts',118,3);
peliculas (nombre, actor, duracion, cantidad)
 ('Elsa y Fred','China Zorrilla',110,2);
 
5- Muestre todos los registros (4 registros)

6- Intente ingresar una película con valor de cantidad fuera del rango permitido:
insert into peliculas (nombre, actor, duracion, cantidad)
values ('Mujer bonita','Richard Gere',1200,10);
Mensaje de error.

7- Ingrese un valor con decimales en un nuevo registro, en el campo "duracion":
insert into peliculas (nombre, actor, duracion, cantidad)
values ('Mujer bonita','Richard Gere',120.20,4);

8- Muestre todos los registros para ver cómo se almacenó el último registro ingresado.

9- Intente ingresar un nombre de película que supere los 20 caracteres.


*/


DROP TABLE PELICULAS;

CREATE TABLE PELICULAS(
NOMBRE VARCHAR2(20),
ACTOR VARCHAR2(20),
DURACION NUMBER(3,0),
CANTIDAD NUMBER(1)
);

DESCRIBE PELICULAS;

INSERT INTO PELICULAS (nombre, actor, duracion, cantidad) VALUES ('Mision imposible','Tom Cruise',128,3); -- FORMA CLASICA
INSERT INTO PELICULAS VALUES ('Mision imposible 2','Tom Cruise',130,2);
INSERT INTO PELICULAS VALUES ('Mujer bonita','Julia Roberts',118,3);
INSERT INTO PELICULAS VALUES ('Elsa y Fred','China Zorrilla',110,2);

SELECT * FROM PELICULAS;

INSERT INTO PELICULAS VALUES ('Elsa y Fred','China Zorrilla',1331,2); -- ERROR value larger than specified precision allowed for this column

INSERT INTO PELICULAS VALUES  ('Informe Pelicano','Julia Roberts',118,32); --ERROR value larger than specified precision allowed for this column
 

-- *************************************************************************************** --

/*
Una empresa almacena los datos de sus empleados en una tabla "empleados" que guarda los siguientes datos:
nombre,documento, sexo, domicilio, sueldobasico.

1- Elimine la tabla si existe.

2- Cree la tabla eligiendo el tipo de dato adecuado para cada campo:

nombre 20
documento 8
sexo 1
domicilio 30
sueldo basico SEIS DIGITOS  CON 2 DECIMALES

3- Verifique que la tabla existe consultando 

4- Vea la estructura de la tabla 

5- Ingrese algunos registros:
empleados (nombre, documento, sexo, domicilio, sueldobasico)
('Juan Perez','22333444','m','Sarmiento 123',500);
empleados (nombre, documento, sexo, domicilio, sueldobasico)
('Ana Acosta','24555666','f','Colon 134',650);
empleados (nombre, documento, sexo, domicilio, sueldobasico)
('Bartolome Barrios','27888999','m','Urquiza 479',800);

6- Seleccione todos los registros 

7- Intente ingresar un registro con el valor "masculino" en el campo "sexo"
Un mensaje indica que el campo está definido para almacenar 1 solo caracter como máximo y está intentando ingresar 9
caracteres.

8- Intente ingresar un valor fuera de rango, en un nuevo registro, para el campo "sueldobasico"
Mensaje de error.

9- Elimine la tabla

*/

DROP TABLE  EMPLEADOS;

CREATE TABLE EMPLEADOS(
NOMBRE VARCHAR2(30),
DOCUMENTO VARCHAR2(9),
SEXO VARCHAR2(1),
DOMICILIO VARCHAR2(30),
SUELDOBASICO NUMBER(6,2)
);

create table empleados(
nombre varchar2(20),
documento varchar2(8),
sexo varchar2(1),
domicilio varchar2(30),
sueldobasico number(6,2)
);

SELECT * FROM ALL_TABLES;

DESCRIBE EMPLEADOS;


INSERT INTO EMPLEADOS (nombre, documento, sexo, domicilio, sueldobasico) VALUES ('Juan Perez','12345678','m','Sarmiento 123',500);
INSERT INTO EMPLEADOS VALUES  ('Ana Acosta','24555666','f','Colon 134',650);
INSERT INTO EMPLEADOS VALUES ('Bartolome Barrios','27888999','m','Urquiza 479',8000.00);

INSERT INTO  EMPLEADOS VALUES ('Bartolome Barrios','27888999','masculino','Urquiza 479',800); -- ERROR value too large for column "SYSTEM"."EMPLEADOS"."SEXO" (actual: 9, maximum: 1)
INSERT INTO EMPLEADOS VALUES ('Bartolome Barrios','27888999','m','Urquiza 479',80000.00) -- ERROR value larger than specified precision allowed for this column

SELECT * FROM EMPLEADOS;

DROP TABLE EMPLEADOS;








