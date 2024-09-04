### Base de Datos "CocinaEvaluacion"

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

### Estructura de la Base de Datos
La base de datos cocinaevaluacion contiene las siguientes tablas:

##cliente: Contiene información sobre los clientes, como el NIF, nombre, dirección y teléfono.
cocinas: Incluye detalles sobre los modelos de cocinas, como ID, nombre, precio, descuento y fecha límite de descuento.
## compras: Registra las compras de cocinas realizadas por los clientes, incluyendo ID, cantidad, fecha y observaciones.
## auditoria_correcciones: Registra las auditorías y correcciones automáticas de las compras.
instalacion: Detalla las instalaciones de cocinas, incluyendo ID, fecha, estado, dirección y horario.
instaladores: Contiene la información de los instaladores, como ID, NIF, nombre, apellido, teléfono y dirección.
