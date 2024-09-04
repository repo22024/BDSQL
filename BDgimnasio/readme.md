# Base de Datos "GimnasioPL"

Este repositorio contiene el script de creación de la base de datos **"GimnasioPL"** desarrollada en MySQL, destinada a gestionar la información de un gimnasio, incluyendo clases, entrenadores, entrenamientos, socios, pagos, y tipos de membresía.

## Tabla de Contenidos

- [Introducción](#introducción)
- [Requisitos](#requisitos)
- [Instalación](#instalación)
- [Estructura de la Base de Datos](#estructura-de-la-base-de-datos)
- [Consultas de Ejemplo](#consultas-de-ejemplo)
- [Datos de Prueba](#datos-de-prueba)
- [Contribución](#contribución)
- [Licencia](#licencia)

## Introducción

La base de datos **"GimnasioPL"** es una solución integral para gestionar todos los aspectos operativos de un gimnasio. El sistema almacena y gestiona información sobre clases, entrenadores, socios, pagos, tipos de membresía, y entrenamientos, proporcionando una forma estructurada y eficiente de manejar estos datos. Esta base de datos puede ser utilizada como base para el desarrollo de aplicaciones de gestión de gimnasios.

## Requisitos

- **MySQL Server** 8.0 o superior.
- **MySQL Workbench** o cualquier cliente de MySQL compatible.
- Sistema operativo **Windows 10** (desarrollado y probado en este entorno).

## Instalación

### 1. Clonar el Repositorio
Clona este repositorio en tu máquina local usando el siguiente comando:
git clone https://github.com/tu_usuario/gimnasiopl.git
2. Crear la Base de Datos
Para crear la base de datos, abre MySQL Workbench o cualquier cliente de MySQL y ejecuta el script gimnasiopl.sql proporcionado en el repositorio. Puedes usar el siguiente comando para cargar el script:
3. Verificar la Instalación
Ejecuta la siguiente consulta para asegurarte de que todas las tablas se han creado correctamente:
SHOW TABLES IN gimnasiopl;

## Estructura de la Base de Datos
La base de datos "GimnasioPL" contiene las siguientes tablas:
clases: Información de las clases disponibles (nombre, días, horarios, capacidad máxima).
entrenador: Detalles de los entrenadores (nombre, apellido, teléfono, especialidad).
entrenamientos: Registros de entrenamientos realizados (fecha, tipo, duración, calorías quemadas).
pagos: Información de los pagos realizados por los socios (fecha, estado).
socios: Datos personales de los socios del gimnasio (nombre, apellidos, dirección, teléfono, fecha de nacimiento).
socios_has_clases: Relación entre socios y clases en las que están inscritos.
socios_has_entrenamientos: Relación entre socios y entrenamientos en los que han participado.
tipomenbresia: Información sobre los diferentes tipos de membresías ofrecidas por el gimnasio (tipo, beneficios, importe).

## Relaciones Entre Tablas
La base de datos implementa varias relaciones entre tablas usando claves foráneas para asegurar la integridad referencial, como se muestra a continuación:
entrenador se relaciona con entrenamientos.
socios se relaciona con pagos, socios_has_clases, y socios_has_entrenamientos.
clases se relaciona con socios_has_clases.
tipomenbresia se relaciona con socios.

## Consultas de Ejemplo
Aquí tienes algunas consultas útiles que puedes realizar en la base de datos:
1. Listar todos los socios
SELECT * FROM socios;
2. Obtener todas las clases disponibles y su capacidad
SELECT nombreclase, capacidadmaxima FROM clases;
3. Consultar los entrenamientos realizados por un entrenador específico
SELECT * FROM entrenamientos WHERE entrenador_identrenador = 1;
4. Mostrar los pagos realizados por los socios en un mes determinado
SELECT * FROM pagos WHERE fechapago BETWEEN '2024-06-01' AND '2024-06-30';
5. Listar todos los tipos de membresías disponibles y sus beneficios
SELECT * FROM tipomenbresia;

## Datos de Prueba
El script de la base de datos incluye datos de prueba para cada tabla, que se utilizan para verificar su funcionamiento y realizar pruebas de consultas. A continuación, se presentan algunos ejemplos de los datos de prueba proporcionados:
Clases: Zumba, Pilates.
Entrenadores: Carlos López (Entrenamiento Funcional), Ana Rodríguez (Yoga).
Socios: Juan Pérez, María Gómez.
Pagos: Pago Pagado y Pendiente por diferentes socios.
Estos datos de prueba te permitirán experimentar con la base de datos y comprobar su funcionalidad.

## Contribución
Si deseas contribuir a este proyecto:
Haz un fork del repositorio.
Crea una rama (git checkout -b feature/nueva-funcionalidad).
Realiza tus cambios y haz commit (git commit -am 'Añadir nueva funcionalidad').
Haz push a la rama (git push origin feature/nueva-funcionalidad).
Abre un Pull Request.

## Licencia
Este proyecto se encuentra bajo la Licencia MIT. Para más detalles, consulta el archivo LICENSE.
Este `README.md` proporciona una descripción completa y detallada de la base de datos, cubriendo desde la instalación hasta su estructura y ejemplos de uso, con un formato profesional adecuado para un repositorio en GitHub.
