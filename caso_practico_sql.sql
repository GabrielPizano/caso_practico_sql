--LENGTH: Calcula la longitud (número de caracteres) de una cadena. 
SELECT * FROM customer;

--¿Cuántos carácteres tienen los apellidos (columna:last_name) de los clientes de la tabla:customer?
SELECT last_name, LENGTH(last_name) as apellido_length 
FROM customer;

--LOWER: Convierte todos los caracteres de una cadena a minúsculas. 
--Convierte a minusculas los apellidos de los clientes:
SELECT last_name, LOWER(last_name) as apellido_lower
FROM customer;

--INITCAP: Convierte el primer caracter de una cadena a mayúscula. 
--Convierte solo la primera letra del apellido de los clientes a mayúscula. 
SELECT last_name, INITCAP(last_name) as apellido_initcap
FROM customer;

--UPPER: Convierte todos los caracteres de una cadena a mayúsculas.
--Convierte todos los carácteres del email a mayúsculas (columa: email).
SELECT email, UPPER(email) as email_upper
FROM customer;

--LEFT: Extrae un número específico de caracteres desde el principio de una cadena.
--extrae solo la primera letra del nombre de los clientes (columna: first_name)
SELECT first_name, LEFT(first_name, 1) as primera_letra
FROM customer;

--extrae la segunda letra del nombre de los clientes (columna: first_name)
SELECT first_name, LEFT(RIGHT(first_name, LENGTH(first_name)-1), 1) as segunda_letra
FROM customer;

--RIGHT: Extrae un número específico de caracteres desde el final de una cadena.
--extrae los 18 ultumos valores de la columna:email. 
SELECT email, RIGHT(email, 18) as ultimos_18
FROM customer;

--CONCAT: Combina dos o más cadenas de texto en una sola. 
--Combina las columnas de nombre y apellido en una sola, añade un espacio entre ambos valores. (columnas: first_name, last_name)
SELECT CONCAT(first_name, ' ', last_name) as nombre_completo
FROM customer;

/*Combina las columnas de nombre y apellido en una sola, añade un espacio entre ambos valores. 
(columnas: first_name, last_name)*. Convierte la primera letra del nombre y apellido a mayúscula.*/
SELECT CONCAT(INITCAP(first_name), ' ', INITCAP(last_name)) as nombre_completo
FROM customer;

--A RESOLVER. 
/*1)Selecciona la primera letra de la columna: first_name 
y todos los carácteres del apellido (columna:last_name) convirtiendo este para que solo lleve la primera letra en mayúscula,
y combinalos en una misma columna, separalos por un punto y un espacio. Ej de valor resultante: P. Guinnes*/
SELECT CONCAT(LEFT(first_name, 1), '. ', INITCAP(last_name)) as formato_nombre
FROM customer;

/*2) Selecciona el email(columna:email) de los clientes convirtiendo todos sus carácteres a minúsculas asi como la longitud de los mismos,
filtra la consulta para que solo te devuelva los emails que tienen una longitud menor a 30*/
SELECT LOWER(email) as email_lower, LENGTH(email) as email_length
FROM customer
WHERE LENGTH(email) < 30;

/*Selecciona las 3 primera letras de la columna: last_name y seguido de ellas, añade '***', 
Ej. de valor resultante: JON****/
SELECT CONCAT(LEFT(last_name, 3), '***') as apellido_formato
FROM customer;