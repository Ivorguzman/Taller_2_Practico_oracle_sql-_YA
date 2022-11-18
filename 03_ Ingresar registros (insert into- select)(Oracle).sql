/*

rabaje con la tabla "agenda" que almacena información de sus amigos.
1 - Elimine la tabla agenda

2- Cree una tabla llamada "agenda". Debe tener los siguientes campos: 
apellido (cadena de 30), nombre (cadena de 20), domicilio (cadena de 30) y telefono (cadena de 11)

3- Visualice  TODAS las tablas existentes para verificar la creación de "agenda" 

4- Visualice la estructura de la tabla "agenda" (describe)

5- Ingrese los siguientes registros:

(apellido, nombre, domicilio, telefono)
('Moreno','Alberto','Colon 123','4234567');
('Torres','Juan','Avellaneda 135','4458787');

6- Seleccione todos los registros de la tabla.

7- Elimine la tabla "agenda"

8- Intente eliminar la tabla nuevamente (aparece un mensaje de error)

*/

 DROP TABLE AGENDA;
 
CREATE TABLE AGENDA(
ALELLIDO VARCHAR2(30),
NOMBRE VARCHAR2(20),
DOMICILIO VARCHAR2(30),
TELEFONO VARCHAR2(11)
);

DESC AGENDA;

SELECT * FROM ALL_TABLES;


INSERT INTO AGENDA VALUES ('Moreno','Alberto','Colon 123','4234567');
INSERT INTO AGENDA VALUES ('Torres','Juan','Avellaneda 135','4458787');

SELECT * FROM AGENDA;

DROP TABLE AGENDA;

