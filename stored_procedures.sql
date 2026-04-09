--Procedure para insertar a nueva ventas

CREATE PROCEDURE SP_insertVentas
	@fecha date,
	@ClienteID INT,
	@ProductoID INT,
	@Empleado INT,
	@Cantidad INT,
	@Preciototal decimal (18,2)
as
Begin
	INSERT INTO ventas (Fecha, ClienteID,ProductoID, EmpleadoID, Cantidad, PrecioTotal)
	values(@Fecha, @ClienteID, @Empleado, @ProductoID, @Cantidad, @PrecioTotal);

	end
-- para obtener ventas por fecha ejecutada

CREATE PROCEDURE sp_GetVentasPorPeriodo
    @FechaInicio DATE,
    @FechaFin DATE
AS
BEGIN
    SELECT *
    FROM Ventas
    WHERE Fecha BETWEEN @FechaInicio AND @FechaFin;
END;
GO

