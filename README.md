# El-zapato-roto

Diseña una Base de datos que permita solucionar el siguiente problema:

Necesitamos registrar la facturación de los productos de la zapatería "El zapato roto". Necesitamos poder registrar productos, clientes, facturas e inventario.

Los productos tendrán como mínimo: Nombre, presentación, valor.
Los clientes tendrán como mínimo: Identificación, nombre, país.
El inventario tendrá como mínimo: producto, tipo de movimiento (entrada o salida), fecha, cantidad.
La facturación debe tener como mínimo: la información del cliente, los productos comprados, impuestos, descuentos, valor a pagar.
Esta base de datos debe estar en **3ra forma normal**.
Pobla la base de datos con suficiente información para realizar algunas consultas y crea las siguientes:

* Consulta la facturación de un cliente en específico.
* Consulta la facturación de un producto en específico.
* Consulta la facturación de un rango de fechas.
* De la facturación, consulta los clientes únicos (es decir, se requiere el listado de los clientes que han comprado por lo menos una vez, pero en el listado no se deben repetir los clientes)
* Cubo de información (opcional): Si tienes experiencia en cubos de información, diseña un cubo con la base de datos anterior donde se tenga toda la información de facturación.
* El entregable es un repositorio con:

* El SQL resultado de la creación de la base de datos en 3ra forma normal.
* El SQL del poblado de las tablas con información.
* El SQL de las consultas solicitadas.
* (opcionalmente) el sql que crea y pobla el cubo de información.
