Manipulación de Strings en SQL 🔤
Este repositorio contiene una colección de consultas SQL que demuestran el uso de diferentes funciones de manipulación de cadenas de texto. Las consultas están diseñadas para trabajar con una base de datos de clientes y mostrar diversas operaciones con strings.
📚 Funciones Principales
Funciones de Longitud y Extracción

LENGTH(): Calcula la longitud de una cadena de texto
LEFT(): Extrae caracteres desde el inicio de una cadena
RIGHT(): Extrae caracteres desde el final de una cadena

Funciones de Transformación

LOWER(): Convierte texto a minúsculas
UPPER(): Convierte texto a mayúsculas
INITCAP(): Convierte la primera letra de cada palabra a mayúscula

Funciones de Concatenación

CONCAT(): Combina dos o más cadenas de texto

🎯 Ejemplos de Uso
1. Análisis de Longitud
sqlCopySELECT last_name, LENGTH(last_name) as apellido_length 
FROM customer;
Esta consulta muestra la longitud de cada apellido en la base de datos.
2. Transformación de Texto
sqlCopySELECT email, LOWER(email) as email_lower
FROM customer
WHERE LENGTH(email) < 30;
Transforma emails a minúsculas y filtra aquellos con menos de 30 caracteres.
3. Formateo de Nombres
sqlCopySELECT CONCAT(LEFT(first_name, 1), '. ', INITCAP(last_name)) as formato_nombre
FROM customer;
Crea un formato personalizado: inicial del nombre seguida de punto y apellido.
🚀 Características Principales

Manipulación Básica

Conversión entre mayúsculas y minúsculas
Extracción de substrings
Cálculo de longitudes


Formateo Avanzado

Combinación de múltiples funciones
Creación de formatos personalizados
Manipulación de casos específicos


Filtrado y Condiciones

Uso de WHERE con funciones de string
Combinación de resultados
Formateo condicional



💡 Mejores Prácticas

Usar las funciones de string apropiadas para cada caso
Considerar la eficiencia al combinar múltiples funciones
Mantener la consistencia en el formato de los datos
Documentar las transformaciones realizadas
Considerar el manejo de casos nulos

🛠️ Requisitos

Sistema de gestión de base de datos SQL
Tabla 'customer' con las columnas:

first_name (nombre)
last_name (apellido)
email



📝 Notas Adicionales

Las consultas están optimizadas para claridad y legibilidad
Se incluyen ejemplos para casos de uso comunes
El código está comentado para mejor comprensión
Se siguen las mejores prácticas de SQL
