Create table Clientes (
	ClienteID INT IDENTITY PRIMARY KEY CLUSTERED,
	Nombre NVARCHAR (100),
	Apellido NVARCHAR (100),
	Email NVARCHAR (150),
	FechaRegistro Date
)

Create table empleados (
 EmpleadoID INT IDENTITY PRIMARY KEY CLUSTERED,
 nombre NVARCHAR (100),
 Apellido NVARCHAR (100),
 Email NVARCHAR (150),
 FechaRegistro Date
)

Create table Marcas (
	MarcaID INT IDENTITY PRIMARY KEY CLUSTERED,
	MARCA NVARCHAR(100)
)


CREATE TABLE Productos (
	ProductoID INT IDENTITY PRIMARY KEY CLUSTERED,
	Producto NVARCHAR (150),
	MarcaID INT,
	FOREIGN KEY (MarcaID) REFERENCES Marcas (MarcaID)
)

create table DimFecha(
Fecha DATE PRIMARY KEY CLUSTERED,
Año INT,
Mes INT,
Dia INT,
NombreMes Varchar(20),
AñoMes CHAR(7)
)

Create table Ventas (
VentasID INT IDENTITY PRIMARY KEY CLUSTERED,
Fecha DATE,
EmpleadoID INT,
ClienteID INT,
ProductoID INT,
Cantidad INT,
PrecioTotal DECIMAL(18,2),
FOREIGN KEY(ClienteID) REFERENCES Clientes(ClienteID),
FOREIGN KEY (EmpleadoID) REFERENCES Empleados(EmpleadoID),
FOREIGN KEY (FECHA) REFERENCES DimFecha(Fecha),
FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)

)