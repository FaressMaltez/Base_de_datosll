--Procedimiento para un agregar cliente
CREATE OR ALTER PROCEDURE AgregarCliente
@NombreCliente nvarchar(20),
@ApellCliente nvarchar(20),
@Dirección nvarchar (50),
@Pais nvarchar (20),
@Ciudad nvarchar(20),
@TelCasa int,
@TelCel int,
@FechaNacimiento date,
@TipoIdentificacion nvarchar(25),
@Nacionalidad nvarchar(20),
@NoIdentificacion nvarchar(25),
@LugarTrabajo nvarchar(50),
@MontoSalario money
AS
BEGIN
	INSERT INTO Clientes Values(@NombreCliente,@ApellCliente,@Dirección,@Pais,@Ciudad,@TelCasa,@TelCel,@FechaNacimiento,@TipoIdentificacion,@Nacionalidad,@NoIdentificacion,@LugarTrabajo,@MontoSalario)
END
GO

EXEC AgregarCliente 'Douglas','Lopez','Pali 3c al oeste','Nicaragua','Masaya',25224554,85546332,'1988-03-28','Cedula','Nicaraguense','401-280388-0004K','Supermercado La Colonia',8500
GO

--Procedimiento para cambiar el estado de cuenta de un cliente
CREATE OR ALTER PROCEDURE CambioEstado 
@CID INT
AS
BEGIN
	DECLARE @Estado INT
	SET @Estado  = (SELECT [dbo].[EstadoCuenta] (@CID))
	IF(@Estado = 1)
		UPDATE Cuenta_Cliente SET Estado = 'DESACTIVO' WHERE ClienteID = @CID
	ELSE
		UPDATE Cuenta_Cliente SET Estado = 'ACTIVO' WHERE ClienteID = @CID
END
GO

EXEC CambioEstado 2
GO

--Procedimiento para calcular cuantas referencias tiene un cliente
CREATE OR ALTER PROCEDURE TotalReferencia
@CID INT
AS
BEGIN
	SELECT CONCAT(C.NombreCliente, C.ApellCliente) AS [Nombre Completo], COUNT(CR.ReferenciaID) AS [Total de Referencia]
	FROM Clientes C INNER JOIN Cliente_Referencia CR ON CR.ClienteID = C.ClienteID WHERE C.ClienteID = @CID
	GROUP BY C.NombreCliente, C.ApellCliente
END
GO

EXEC TotalReferencia 1
GO

--Procedimiento para el mostrar las tarjetas que expiran en un año determinado
CREATE PROCEDURE TarjetasExpiradas
@año INT
AS
BEGIN
SELECT * FROM Tarjeta_Cliente WHERE YEAR(FechaEmision) = @año
END
GO

EXEC TarjetasExpiradas 2016
GO

--Procedimiento para mostrar a los clientes que tienen cuentas de ahorro o corriente
CREATE PROCEDURE ClientesCuenta 
@TipoCuenta NVARCHAR(20)
AS
BEGIN
SELECT CL.NombreCliente, CL.ApellCliente, CL.MontoSalario, C.TipoCuenta FROM Cuentas C INNER JOIN Cuenta_Cliente CC ON CC.CuentaID = C.CuentaID 
INNER JOIN Clientes CL ON CL.ClienteID = CC.ClienteID WHERE C.TipoCuenta = @TipoCuenta
END
GO

EXEC ClientesCuenta 'Corriente'
GO

--Procedimiento para mostrar el cliente y su gasto promedio
CREATE OR ALTER PROCEDURE GastoCliente 
@TarjetaID INT
AS
BEGIN
	SELECT CONCAT(C.NombreCliente, C.ApellCliente) AS [Nombre Completo], TC.Numero, [dbo].[MontoPromedio] (@TarjetaID) AS [Promedio Gasto]
	FROM Clientes C INNER JOIN Tarjeta_Cliente TC ON C.ClienteID = TC.ClienteID INNER JOIN Mov_Tarjeta MT ON TC.TClienteID = MT.TClienteID
	WHERE MT.TClienteID = @TarjetaID
	GROUP BY C.NombreCliente, C.ApellCliente, TC.Numero
END
GO

EXEC GastoCliente 3
GO

--Funcion para calcular el promedio de monto que gasta un cliente
CREATE OR ALTER FUNCTION MontoPromedio (@TCI INT) RETURNS INT
AS
BEGIN
	DECLARE @MontoPromedio FLOAT
	SET @MontoPromedio = (SELECT SUM(MT.Monto)/COUNT(MT.Monto) FROM Mov_Tarjeta MT WHERE TClienteID = @TCI)
	RETURN @MontoPromedio
END
GO

SELECT [dbo].[MontoPromedio] (1)
GO

--Funcion que regresa el estado de la cuenta de un cliente
CREATE OR ALTER FUNCTION EstadoCuenta(@CID INT) RETURNS INT
AS
BEGIN
	DECLARE @Estado NVARCHAR(20)
	SET @Estado = (SELECT C.Estado FROM Cuenta_Cliente C WHERE C.ClienteID = @CID)
	IF(@ESTADO = 'Activo')
	RETURN 1 
RETURN 0
END
GO

SELECT [dbo].[EstadoCuenta] (1)
GO

select * from Cuenta_Cliente