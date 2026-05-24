# 📝 Informe de Base de Datos — BDventas

## 1. 📋 Descripción general
BDventas es una base de datos diseñada para gestionar 
las ventas y comisiones de una empresa. Permite almacenar 
información sobre clientes, comerciales y llevar un 
seguimiento de los cambios de comisiones mediante auditoría.

## 2. 🗄️ Estructura

### Tablas
| Tabla | Campos | Descripción |
|-------|--------|-------------|
| `clientes` | 8 campos | Datos personales de los clientes |
| `comercial` | 7 campos | Datos de comerciales y comisiones |
| `auditoria` | 6 campos | Registro de cambios de comisiones |

### Relaciones
- `comercial.id_comercial` → `auditoria.id_comercial`
- La tabla `clientes` no tiene relación con ninguna tabla

## 3. ✅ Análisis

### Qué está bien diseñado
- La tabla `auditoria` es útil para rastrear cambios de comisiones
- Los campos tienen tipos de datos adecuados
- La tabla `clientes` tiene información completa del cliente

### Qué no está claro
- No existe relación entre `clientes` y `comercial`
- La clave foránea en `auditoria` no está declarada formalmente
- El campo `importe` en `comercial` no tiene valores

## 4. ⚠️ Problemas detectados
- ❌ Falta la tabla `ventas` que debería conectar 
  `clientes` con `comercial`
- ❌ La tabla `clientes` está totalmente aislada, 
  sin ninguna relación con el resto
- ❌ La clave foránea `auditoria.id_comercial` no está 
  declarada formalmente en el esquema
- ❌ El campo `importe` de `comercial` contiene valores NULL

## 5. 🛠️ Propuestas de mejora

### Nueva tabla `ventas`
```sql
CREATE TABLE ventas (
    id_venta INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    id_comercial INT,
    fecha DATE,
    importe DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_comercial) REFERENCES comercial(id_comercial)
);
```

### Otras mejoras
- Declarar formalmente la FK entre `auditoria` y `comercial`
- Mover el campo `importe` de `comercial` a la tabla `ventas`
- Añadir campo `fecha_alta` en `clientes`

## 6. 💬 Conclusión personal
BDventas es una base de datos sencilla para practicar 
y desarrollar. Trabajar con ella me ha permitido entender 
cómo se estructuran las relaciones entre tablas y la 
importancia de declararlas correctamente. Es un buen 
punto de partida para bases de datos más complejas.

## 👩‍💻 Autora
**Lucia Hdez Pestana**  
