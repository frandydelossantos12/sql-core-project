-- Index para optimizar queries por fecha
Create nonclustered index IX_Ventas_fecha
on ventas(Fecha);

-- Index para optimizar queries por clientes
Create nonclustered index IX_ventas_Cliente
on clientes(clienteID)

-- Index para optimizar queries por productos
Create nonclustered index IX_venta_producto
on productos(productoID)
