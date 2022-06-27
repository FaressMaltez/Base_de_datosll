--Vistas

create view cliente as
select cr.ClienteID, c.NombreCliente, c.ApellCliente, cr.ReferenciaID , r.NombreRef, r.ApellRef
from Cliente_Referencia cr inner join Referencia r on  cr.ReferenciaID = r.ReferenciaID
inner join Clientes c on cr.ClienteID=c.clienteID

create view cliente1 as
select cc.ClienteID, c.NombreCliente, c.ApellCliente, cc.FechaApertura, cc.Estado, cu.TipoCuenta, c.MontoSalario
from Cuenta_Cliente cc inner join Clientes c on cc.ClienteID = c.ClienteID
inner join Cuentas cu on cc.CuentaID = cu.CuentaID

create view movimientos_cuenta as
select c.ClienteID,c.NombreCliente,c.ApellCliente,cc.CuentaClienteID,mc.TipoMov, mc.Monto, mc.FechaTransaccion, mc.Descripcion
from Movimiento_Cuenta mc inner join Cuenta_Cliente cc on mc.CuentaClienteID = cc.CuentaClienteID  
inner join cliente c on cc.ClienteID = c.ClienteID 

select * from cliente
select * from cliente1
select * from movimientos_cuenta

