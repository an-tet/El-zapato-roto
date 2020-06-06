--1. Consulta la facturación de un cliente en específico.

SELECT         dbo.FACTURACION_PRODUCTO.NUMERO_FACTURACION,dbo.FACTURACION_PRODUCTO.ID_PRODUCTO, dbo.FACTURACION_PRODUCTO.IMPUESTO, dbo.FACTURACION_PRODUCTO.DESCUENTO
FROM            dbo.FACTURACION INNER JOIN
                         dbo.FACTURACION_PRODUCTO ON dbo.FACTURACION.NUMERO_FACTURACION = dbo.FACTURACION_PRODUCTO.NUMERO_FACTURACION
WHERE        (dbo.FACTURACION.IDENTIFICACION_CLIENTE = 1234988322)

--2. Consulta la facturación de un producto en específico.

SELECT        NUMERO_FACTURACION, ID_PRODUCTO, IMPUESTO, DESCUENTO
FROM            dbo.FACTURACION_PRODUCTO
WHERE        (ID_PRODUCTO = 1)

--3. Consulta la facturación de un rango de fechas.
SELECT        dbo.FACTURACION_PRODUCTO.NUMERO_FACTURACION, dbo.FACTURACION_PRODUCTO.ID_PRODUCTO, dbo.FACTURACION_PRODUCTO.IMPUESTO, dbo.FACTURACION_PRODUCTO.DESCUENTO
FROM            dbo.INVENTARIO_PRODUCTO INNER JOIN
                         dbo.INVENTARIO ON dbo.INVENTARIO_PRODUCTO.ID_INVENTARIO = dbo.INVENTARIO.ID_INVENTARIO INNER JOIN
                         dbo.PRODUCTO ON dbo.INVENTARIO_PRODUCTO.ID_PRODUCTO = dbo.PRODUCTO.ID_PRODUCTO INNER JOIN
                         dbo.FACTURACION_PRODUCTO ON dbo.PRODUCTO.ID_PRODUCTO = dbo.FACTURACION_PRODUCTO.ID_PRODUCTO
WHERE        (dbo.INVENTARIO.FECHA  BETWEEN '2020/01/1' AND  '2020/01/08') AND (dbo.INVENTARIO.ID_MOVIMIENTO = 2)


/*4. De la facturación, consulta los clientes únicos (es decir, se requiere el listado
	de los clientes que han comprado por lo menos una vez, pero en el listado no se deben repetir los clientes)
*/
SELECT        dbo.CLIENTE.IDENTIFICACION_CLIENTE, dbo.CLIENTE.NOMBRE_CLIENTE, dbo.PAIS.NOMBRE
FROM            dbo.CLIENTE RIGHT OUTER JOIN
                         dbo.FACTURACION ON dbo.CLIENTE.IDENTIFICACION_CLIENTE = dbo.FACTURACION.IDENTIFICACION_CLIENTE INNER JOIN
                         dbo.PAIS ON dbo.CLIENTE.ID_PAIS = dbo.PAIS.ID_PAIS

/*5. Cubo de información (opcional): Si tienes experiencia en cubos de información, diseña un cubo con la base de 
	datos anterior donde se tenga toda la información de facturación
	
	Respuesta: la verdad no tengo idea de cómo hacer cubos con SQL pero he modelado ETL, DW y Cubos por medio de VS en mis clases de
	inteligencia de negocios, solo ejercicios prácticos.
	*/