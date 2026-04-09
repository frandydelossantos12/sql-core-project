-- Tabla de auditoria para cambio de ventas

CREATE TABLE AuditoriaVentas(
	AuditoriaID INT IDENTITY PRIMARY KEY,
	VentaID INT,
	Accion NVARCHAR (10),
	FechaAccion DATETIME DEFAULT GETDATE()
);

GO

-- Trigger de auditoria INSERT, UPDATE Y DELETE en Ventas
CREATE TRIGGER trg_AuditoriaVentas
on Ventas
AFTER INSERT, UPDATE, DELETE
AS
BEGIN

	-- INSERT O UPDATE
	IF EXISTS (Select * From inserted)
	BEGIN
		INSERT INTO AuditoriaVentas (VentaID, Accion)
		SELECT VentasID, 'INSERT/UPDATE'
		FROM inserted
	END
END;
GO

