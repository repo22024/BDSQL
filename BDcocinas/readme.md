### Base de Datos "Cocinas"

Este repositorio contiene la estructura y datos de la base de datos **"cocinaevaluacion"** desarrollada en MySQL. Esta base de datos está diseñada para gestionar la información relacionada con clientes, compras de cocinas, instalación de cocinas y auditorías de correcciones en un entorno de venta de cocinas. El desarrollo y pruebas se realizaron en **Windows 10**.

### Tabla de Contenidos

- [Requisitos](#requisitos)
- [Instalación](#instalación)
- [Estructura de la Base de Datos](#estructura-de-la-base-de-datos)
- [Consultas SQL](#consultas-sql)
- [Triggers y Funciones](#triggers-y-funciones)
- [Uso](#uso)
- [Contribución](#contribución)
- [Licencia](#licencia)

#### Requisitos

- MySQL Server 8.0 o superior
- MySQL Workbench o cualquier cliente compatible con MySQL
- Sistema operativo Windows 10 (desarrollado y probado en este entorno)

## Instalación

1. **Clonar el Repositorio:**
   
   Clona este repositorio en tu máquina local:
   ```sh
   git clone https://github.com/tu_usuario/cocinaevaluacion.git
2. Crear la Base de Datos
Utiliza el script cocinaevaluacion.sql proporcionado en el repositorio para crear la base de datos. Abre MySQL Workbench o cualquier cliente de MySQL, ejecuta el siguiente comando para crear la base de datos y cargar los datos:

## Estructura de la Base de Datos
La base de datos cocinaevaluacion contiene las siguientes tablas:
cliente: Contiene información sobre los clientes, como el NIF, nombre, dirección y teléfono.
cocinas: Incluye detalles sobre los modelos de cocinas, como ID, nombre, precio, descuento y fecha límite de descuento.
compras: Registra las compras de cocinas realizadas por los clientes, incluyendo ID, cantidad, fecha y observaciones.
auditoria_correcciones: Registra las auditorías y correcciones automáticas de las compras.
instalacion: Detalla las instalaciones de cocinas, incluyendo ID, fecha, estado, dirección y horario.
instaladores: Contiene la información de los instaladores, como ID, NIF, nombre, apellido, teléfono y dirección.

## Consultas SQL
Obtener todos los clientes
SELECT * FROM cliente;
Obtener todas las cocinas disponibles con su precio y descuento
SELECT NOMBRECOCINA, PRECIOCOCINA, DESCUENTO FROM cocinas;
Mostrar las compras realizadas por un cliente específico
SELECT * FROM compras WHERE CLIENTE_idCLIENTE = 1;
Obtener el total de compras realizadas en un rango de fechas
SELECT COUNT(*) AS TotalCompras FROM compras WHERE FECHACOMPRA BETWEEN '2024-07-01' AND '2024-07-31';
Listar los instaladores y las instalaciones asignadas
SELECT i.NOMBREINSTALADOR, inl.ESTADO, inl.DIRECCION 
FROM instaladores i 
JOIN instalacion inl ON i.idINSTALADOR = inl.INSTALADORES_idINSTALADOR;

## Triggers y Funciones
Triggers en la Base de Datos
tr_before_insert_observa: Asigna automáticamente el valor "Sin observaciones" al campo OBSERVACIONES en la tabla compras si está vacío al insertar.
trg_before_insert_compras_cantidad: Verifica que la cantidad de compras no sea menor o igual a cero. Si lo es, registra la corrección en la tabla auditoria_correcciones y establece la cantidad en 1.
## Uso
Esta base de datos es útil para:
Administrar la información de clientes y sus compras de cocinas.
Realizar auditorías y corregir errores automáticamente.
Gestionar instalaciones de cocinas por parte de diferentes instaladores.
## Ejemplo de Uso
Listar todos los clientes registrados en el sistema:
SELECT * FROM cliente;
Verificar las compras realizadas en un mes específico:
SELECT * FROM compras WHERE FECHACOMPRA BETWEEN '2024-07-01' AND '2024-07-31';
Consultar las cocinas disponibles y sus precios con descuentos:
SELECT NOMBRECOCINA, PRECIOCOCINA, DESCUENTO FROM cocinas;
Asignar automáticamente una observación al crear una compra sin especificarla:
El trigger tr_before_insert_observa se ejecutará automáticamente al insertar una nueva compra, asignando "Sin observaciones" si no se proporciona un valor.
Corregir automáticamente la cantidad de compras erróneas:
Si se inserta una compra con una cantidad menor o igual a cero, el trigger trg_before_insert_compras_cantidad corregirá la cantidad a 1 y registrará la corrección en auditoria_correcciones.

## Contribución
Si deseas contribuir a este proyecto:
Haz un fork del repositorio.
Crea una rama 
Realiza tus cambios y haz commit (git commit -am 'Añadir nueva funcionalidad').
Haz push a la rama (git push origin feature/nueva-funcionalidad).
Abre un Pull Request.
## Licencia
Este proyecto se encuentra bajo la Licencia MIT. Para más detalles, consulta el archivo LICENSE.
