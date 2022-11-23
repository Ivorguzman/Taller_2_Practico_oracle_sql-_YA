-- Primer problema:
DROP TABLE PELICULAS;

CREATE TABLE PELICULAS(
TITULO VARCHAR2(20),
ACTOR VARCHAR2(20),
DURACION NUMBER(3),
CANTIDAD NUMBER(3)
);
 DESC PELICULAS;
 
INSERT  INTO PELICULAS (TITULO,ACTOR,DURACION,CANTIDAD) VALUES('Mision imposible','Tom Cruise',180,3);
INSERT INTO PELICULAS VALUES ('Mision imposible 2','Tom Cruise',190,2);
INSERT INTO PELICULAS VALUES ('Mujer bonita','Julia Roberts',118,3);
INSERT INTO  PELICULAS VALUES ('Elsa y Fred','China Zorrilla',110,2);

SELECT * FROM PELICULAS;

SELECT TITULO, ACTOR FROM PELICULAS;
SELECT TITULO, DURACION FROM PELICULAS;
SELECT TITULO, CANTIDAD FROM PELICULAS;


--Segundo problema:

DROP TABLE EMPLEADOS;

CREATE TABLE EMPLEADOS(
NOMBRE VARCHAR2(20),
DOCUMENTO VARCHAR(8),
SEXO VARCHAR(1),
DOMICILIO VARCHAR2(30),
SUELDO_BASICO NUMBER(6,2)
);

DESCRIBE EMPLEADOS;


INSERT INTO EMPLEADOS (NOMBRE,DOCUMENTO,SEXO,DOMICILIO,SUELDO_BASICO) VALUES('Juan Juarez','22333444','m','Sarmiento 123',500);
INSERT INTO EMPLEADOS VALUES ('Ana Acosta','27888999','f','Colon 134',700);
INSERT INTO EMPLEADOS VALUES  ('Carlos Caseres','31222333','m','Urquiza 479',850);

SELECT * FROM EMPLEADOS;

SELECT NOMBRE, DOCUMENTO, DOMICILIO FROM EMPLEADOS;

SELECT DOCUMENTO, SEXO, SUELDO_BASICO FROM EMPLEADOS;






              