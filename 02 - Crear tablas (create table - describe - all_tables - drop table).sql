/*
Segundo problema:
Necesita almacenar información referente a los libros de su biblioteca personal. Los datos que guardará serán: título del libro,
nombre del autor y nombre de la editorial.
1- Elimine la tabla "libros"
Si no existe, un mensaje indica tal situación.
2- Verifique que la tabla "libros" no existe (all_tables)
No aparece en la lista.
3- Cree una tabla llamada "libros". Debe definirse con los siguientes campos: titulo, varchar2(20); autor, varchar2(30) y editorial,
varchar2(15)
4- Intente crearla nuevamente:
Aparece mensaje de error indicando que existe un objeto con el nombre "libros".
5- Visualice las tablas existentes
6- Visualice la estructura de la tabla "libros":
Aparece "libros" en la lista.
7- Elimine la tabla
8- Intente eliminar la tabla
Un mensaje indica que no existe
*/



DROP TABLE LIBROS;
 
 
 
 CREATE TABLE libros(
 titulo VARCHAR2(20),
 autor VARCHAR2(30),
 editorial VARCHAR2(15)
 );
 
 desc libros; 
  
 SELECT * FROM libros;
 

 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 