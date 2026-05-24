USE ventas;
/*-------------Consultas con BASICAS-----*/
SELECT * FROM clientes;
SELECT * FROM comercial;
SELECT * FROM auditoria;
SELECT  nombre_c, apellido1, apellido2  FROM clientes;
SELECT  nombre_co, apellido1, apellido2  FROM comercial;

/*-------------Consultas con WHERE----------*/

SELECT 	* FROM 	comercial
WHERE comision > 0.30;
SELECT * FROM clientes
WHERE ciudad = 'Tenerife';
SELECT * FROM auditoria
WHERE id_comercial = 1;
SELECT * FROM auditoria
WHERE comisionActual >0.30;
SELECT * FROM clientes
WHERE nombre_c LIKE 'A%';
/*-----Consultas con JOIN -------*/
SELECT comercial.nombre_co, auditoria.comisionAnterior, auditoria.comisionActual
FROM comercial
JOIN auditoria ON comercial.id_comercial = auditoria.id_comercial;

SELECT comercial.nombre_co, auditoria.fecha_modificacion, 
       auditoria.comisionAnterior, auditoria.comisionActual
FROM comercial
JOIN auditoria ON comercial.id_comercial = auditoria.id_comercial;

SELECT comercial.nombre_co, comercial.apellido1, comercial.apellido2, auditoria.usuario, auditoria.comisionActual
FROM comercial
JOIN auditoria ON comercial.id_comercial = auditoria.id_comercial;

/* ------Consultas libre elección -------*/

SELECT nombre_co, apellido1, comision 
FROM comercial 
ORDER BY comision DESC;

SELECT ciudad, COUNT(*) AS total_clientes 
FROM clientes 
GROUP BY ciudad;



