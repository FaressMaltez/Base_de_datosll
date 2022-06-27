use master
go
drop database BancoAL
go
create database BancoAL
go
use BancoAL

Create table Clientes(
ClienteID int identity(1,1) primary key,
NombreCliente nvarchar(20),
ApellCliente nvarchar(20),
Dirección nvarchar (50),
Pais nvarchar (20),
Ciudad nvarchar(20),
TelCasa int,
TelCel int,
FechaNacimiento date,
TipoIdentificacion nvarchar(25),
Nacionalidad nvarchar(20),
NoIdentificacion nvarchar(25),
LugarTrabajo nvarchar(50),
MontoSalario money
);

insert into Clientes values('Juan','Lopez','Pali 3c al oeste','Nicaragua','Masaya',25224554,85546332,'1988-03-28','Cedula','Nicaraguense',
							'401-280388-0004K','Supermercado La Colonia',8500);
insert into Clientes values('Rosa','García','Rotonda Centroamerica 1c al este, 1/2c al sur','Nicaragua','Managua',25224552,84862552,'1985-05-31','Cedula','Nicaraguense',
							'001-310585-0003U','Banco Lafise',9000);
insert into Clientes values('Graciela','Chamorro','Iglesi Xalteva 2c al sur, 1/2c al oeste','Nicaragua','Granada',22536331,88562331,'1986-08-31','Cedula','Nicaraguense',
							'201-310886-0003M','Enacal',8600);
insert into Clientes values('Francisco','Gonzales','Iglesia San Jerónimo 1c al oeste','Nicaragua','Masaya',22536456,88447889,'1984-12-07','Cedula','Nicaraguense',
							'401-071284-0008L','Farmacia Estrella Roja',7500);
insert into Clientes values('Freddy','Ortíz','UPOLI 1/2c al sur','Nicaragua','Managua',25221252,84862489,'1983-04-14','Cedula','Nicaraguense',
							'001-140483-0003P','CaldPrint',6000);
insert into Clientes values('Pedro','Orozco','Pali 2c al norte','Nicaragua','Rivas',25542112,83588665,'1990-09-20','Cedula','Nicaraguense',
							'561-200990-0005G','Payless',7500);
insert into Clientes values('Karla','Medrano','Clinica Vida 2c al sur','Nicaragua','Rivas',25531225,82588998,'1995-06-22','Cedula','Nicaraguense',
							'561-220695-0004O','Sandra Boutique',5500);
insert into Clientes values('Jorge','Moreno','Paque Central 3c al sur','Nicaragua','Carazo',22536331,88562331,'1997-02-27','Cedula','Nicaraguense',
							'043-270297-0001M','Calzado Abdala',7000);
insert into Clientes values('Axel','Guido','De las Gavetas 75 vrs al norte','Nicaragua','León',22536331,88562331,'1997-05-25','Cedula','Nicaraguense',
							'281-250597-1009V','Clinica Vida',10000);
insert into Clientes values('Marlon','Martinez','Funeraria El Descanso 3c al este','Nicaragua','Carazo',22534581,88547781,'1983-01-26','Cedula','Nicaraguense',
							'043-230183-0007C','Farmacia Somarriba',6500);
insert into Clientes values('Reian','Herrera','Farmacia Praga 1c al sur','Nicaragua','Managua',25245847,854451232,'1981-04-14','Cedula','Nicaraguense',
							'001-140481-0003P','Restaurante de Colores',6000);
insert into Clientes values('Carlos','Montenegro','Cruz Roja 75vrs al sur','Nicaragua','Masaya',25231524,81452512,'1994-05-12','Cedula','Nicaraguense',
							'401-120594-0001X','Hotel Masaya',9000);
insert into Clientes values('Carmen','Carrión','Hotel Luna 1c al norte','Nicaragua','Rivas',24521236,86521441,'1985-11-24','Cedula','Nicaraguense',
							'561-241185-0005P','Enacal',7000);
insert into Clientes values('Sebastian','Pérez','Puente el Edén 2c al norte','Nicaragua','Managua',25245889,81478525,'1985-04-25','Cedula','Nicaraguense',
							'001-250485-0004A','Salon de Belleza Karen',6500);
insert into Clientes values('Rafael','Salinas','Bar Neysi 3c al norte','Nicaragua','León',22558941,86698101,'1996-03-07','Cedula','Nicaraguense',
							'281-070397-1005A','Universidad ULSA',12000);
insert into Clientes values('Roger','Rizo','Estación de Policia 1/2c al este','Nicaragua','León',22452522,87412585,'1997-08-28','Cedula','Nicaraguense',
							'281-280897-1008A','Clinica Vida',9000);
							insert into Clientes values('Roberto','Arias','Farmacia Santa Gema 2c al este','Nicaragua','Chinandega',21524565,88845932,'1992-07-24','Cedula','Nicaraguense',
							'081-240492-0004Q','Gasolinera UNO',8500);
insert into Clientes values('Roberto','Arias','Mercado Municipal 1c al oeste','Nicaragua','Boaco',22143696,87451425,'1993-10-15','Cedula','Nicaraguense',
							'035-240492-0004Q','Comedor Las Flores',8500);
insert into Clientes values('Sofia','Blanco','Pali 2c al sur','Nicaragua','Chinandega',22147421,89633645,'1993-07-01','Cedula','Nicaraguense',
							'081-010793-0002E','Gallo más gallo',8500);
insert into Clientes values('Esteban','Cruz','Colegio Saleciano 3c al oeste','Nicaragua','Masaya',24521258,55894512,'1995-04-18','Cedula','Nicaraguense',
							'401-180495-0003F','Almacenes Curacaco',9000);
select * from Clientes

Create table Referencia(
ReferenciaID int identity(1,1) primary key,
NombreRef nvarchar(20),
ApellRef nvarchar(20),
Dirección nvarchar (50),
Pais nvarchar (20),
Ciudad nvarchar(20),
TelCasa int,
TelCel int,
FechaNacimiento date,
TipoIdentificacion nvarchar(20),
Nacionalidad nvarchar(20),
NoIdentificacion nvarchar(20)
);

insert into Referencia values('Carmen','Mendoza','Colegio Don Bosco 1c al norte','Nicaragua','Masaya',24532512,58411445,'1986-04-17','Cedula','Nicaraguense',
							'401-170486-0004F');
insert into Referencia values('Manuela','Ortíz','Loma de Sandino 1c al sur','Nicaragua','Masaya',25147884,87053610,'1983-07-18','Cedula','Nicaraguense',
							'401-180483-0008S');
insert into Referencia values('Andrea','Hernández','Curacaco 2c al sur','Nicaragua','Chinandega',221025631,58401222,'1985-12-14','Cedula','Nicaraguense',
							'081-141285-0009G');
insert into Referencia values('Roger','Madrigal','Pali 1/2c al este','Nicaragua','León',22140021,85142002,'1984-06-20','Cedula','Nicaraguense',
							'281-200684-0003A');
insert into Referencia values('Jorge','Cáceres','Parque Central 2c y media al sur','Nicaragua','Carazo',22412050,85506310,'1987-06-11','Cedula','Nicaraguense',
							'043-110687-0007N');
insert into Referencia values('Rosa','García','Rotonda Centroamerica 1c al este','Nicaragua','Managua',25454502,87462502,'1985-01-15','Cedula','Nicaraguense',
							'001-150185-0002U');
insert into Referencia values('Martín','Flores','Comedor El Huipil 2c al sur','Nicaragua','Carazo',22412050,85506310,'1982-05-10','Cedula','Nicaraguense',
							'043-100582-0001P');
insert into Referencia values('Gabriel','Rosales','Gasolinera Puma 1c al norte','Nicaragua','Managua',25458710,88123025,'1984-03-16','Cedula','Nicaraguense',
							'001-160384-0007Q');
insert into Referencia values('Julio','Vanegas','Funeraria El Consuelo 3c al norte','Nicaragua','Carazo',22457896,84120560,'1981-01-11','Cedula','Nicaraguense',
							'043-110181-0003R');
insert into Referencia values('Ester','Rosales','McDonalds 2c al sur','Nicaragua','León',22563201,84451021,'1987-08-21','Cedula','Nicaraguense',
							'281-210887-0007Z');
insert into Referencia values('Iveth','Mena','Enacal 1c al norte','Nicaragua','Rivas',22112085,84130220,'1983-10-21','Cedula','Nicaraguense',
							'561-211083-0009C');
insert into Referencia values('Irma','Morales','Boutique Cristal 1c al norte','Nicaragua','Rivas',22521045,84554012,'1988-09-26','Cedula','Nicaraguense',
							'561-260988-0004J');
insert into Referencia values('Gabriela','Márquez','Plaza Vistana 1c al oeste','Nicaragua','Managua',25221014,87485210,'1985-02-21','Cedula','Nicaraguense',
							'001-210285-0004K');
insert into Referencia values('José','Lezama','Cementerio Periférico 1/2c al sur','Nicaragua','Managua',25154780,85896302,'1997-08-14','Cedula','Nicaraguense',
							'001-140897-0006D');
insert into Referencia values('Joseling','Tapia','Puente el Edén 2c al oeste','Nicaragua','Managua',25147805,81024514,'1983-04-11','Cedula','Nicaraguense',
							'001-110483-0002P');
insert into Referencia values('Luisa','Miranda','Estación de Bomberos 3c al oeste','Nicaragua','Managua',22581020,84782579,'1985-05-25','Cedula','Nicaraguense',
							'001-250585-0008R');
insert into Referencia values('Maritza','Ramirez','Centro de Salud 25vrs al norte','Nicaragua','Carazo',21470302,55961060,'1983-04-29','Cedula','Nicaraguense',
							'043-290483-0006X');
insert into Referencia values('Brenda','Sánchez','Maxi Pali 1c al oeste','Nicaragua','Masaya',22861450,58961320,'1983-06-12','Cedula','Nicaraguense',
							'401-120683-0007D');
insert into Referencia values('Andres','Pérez','Hotel La Hacienda 3c al este','Nicaragua','Chinandega',25223110,55784110,'1984-10-03','Cedula','Nicaraguense',
							'081-031084-0004S');
insert into Referencia values('Marcos','Dávila','Bar El Pochote 1c al norte y 1/2c al sur','Nicaragua','León',22251484,55693920,'1982-05-05','Cedula','Nicaraguense',
							'281-050582-0006J');
select * from Referencia

Create table Cliente_Referencia(
ClienteID int foreign key references Clientes(ClienteID),
ReferenciaID int foreign key references Referencia(ReferenciaID)
);

insert into Cliente_Referencia values (1,4);
insert into Cliente_Referencia values (4,2);
insert into Cliente_Referencia values (2,3);
insert into Cliente_Referencia values (3,5);
insert into Cliente_Referencia values (6,1);
insert into Cliente_Referencia values (5,7);
insert into Cliente_Referencia values (8,6);
insert into Cliente_Referencia values (7,9);
insert into Cliente_Referencia values (9,8);
insert into Cliente_Referencia values (10,11);
insert into Cliente_Referencia values (12,10);
insert into Cliente_Referencia values (11,14);
insert into Cliente_Referencia values (14,12);
insert into Cliente_Referencia values (13,17);
insert into Cliente_Referencia values (16,15);
insert into Cliente_Referencia values (15,16);
insert into Cliente_Referencia values (17,18);
insert into Cliente_Referencia values (20,20);
insert into Cliente_Referencia values (19,13);
insert into Cliente_Referencia values (18,19)
--<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
insert into Cliente_Referencia values (1,1);
insert into Cliente_Referencia values (1,5);
insert into Cliente_Referencia values (1,9);
insert into Cliente_Referencia values (4,7);
insert into Cliente_Referencia values (4,11);
insert into Cliente_Referencia values (6,18);
insert into Cliente_Referencia values (6,21);
insert into Cliente_Referencia values (6,22);
insert into Cliente_Referencia values (10,23);
insert into Cliente_Referencia values (10,4);
insert into Cliente_Referencia values (13,1);
insert into Cliente_Referencia values (13,2);
insert into Cliente_Referencia values (16,8);
insert into Cliente_Referencia values (17,9);

select * from Cliente_Referencia

Create table Cuentas(
CuentaID int identity(1,1) primary key,
TipoCuenta nvarchar(20),
Descripcion nvarchar(50),
MontoMin money,
TipoMoneda nvarchar(20)
);

insert into Cuentas values('Ahorro','--',1500,'Córdobas');
insert into Cuentas values('Corriente','--',1000,'Córdobas');
insert into Cuentas values('Ahorro','--',1500,'Córdobas');
insert into Cuentas values('Corriente','--',35,'Dólares');
insert into Cuentas values('Corriente','--',1000,'Córdobas');
insert into Cuentas values('Corriente','--',30,'Dólares');
insert into Cuentas values('Ahorro','--',1500,'Córdobas');
insert into Cuentas values('Coriente','--',1000,'Córdobas');
insert into Cuentas values('Nómina','--',35,'Dólares');
insert into Cuentas values('Ahorro','--',30,'Dólares');
insert into Cuentas values('Nómina','--',1500,'Córdobas');
insert into Cuentas values('Nómina','--',1000,'Córdobas');
insert into Cuentas values('Corriente','--',35,'Dólares');
insert into Cuentas values('Corriente','--',30,'Dólares');
insert into Cuentas values('Ahorro','--',1500,'Córdobas');
insert into Cuentas values('Corriente','--',1000,'Córdobas');
insert into Cuentas values('Nómina','--',1500,'Córdobas');
insert into Cuentas values('Nómina','--',30,'Dólares');
insert into Cuentas values('Corriente','--',1000,'Córdobas');
insert into Cuentas values('Ahorro','--',1500,'Córdobas');

select * from Cuentas

Create table Cuenta_Cliente(
CuentaClienteID int identity(1,1) primary key,
FechaApertura date,
Estado nvarchar(20),
ClienteID int foreign key references Clientes(ClienteID),
CuentaID int foreign key references Cuentas(CuentaID),
);

insert into Cuenta_Cliente values('2003-04-20','Activo',1,1);
insert into Cuenta_Cliente values('2005-10-21','Activo',3,2);
insert into Cuenta_Cliente values('2003-05-17','Activo',2,3);
insert into Cuenta_Cliente values('2006-12-31','Activo',4,4);
insert into Cuenta_Cliente values('2007-08-14','Activo',6,5);
insert into Cuenta_Cliente values('2010-09-25','Activo',8,6);
insert into Cuenta_Cliente values('2011-11-09','Activo',7,7);
insert into Cuenta_Cliente values('2009-07-18','Activo',5,8);
insert into Cuenta_Cliente values('2012-09-19','Activo',9,9);
insert into Cuenta_Cliente values('2007-08-08','Activo',10,10);
insert into Cuenta_Cliente values('2004-12-28','Activo',11,11);
insert into Cuenta_Cliente values('2007-02-11','Activo',13,12);
insert into Cuenta_Cliente values('2006-03-17','Activo',12,13);
insert into Cuenta_Cliente values('2008-04-22','Activo',14,14);
insert into Cuenta_Cliente values('2016-11-10','Activo',17,17);
insert into Cuenta_Cliente values('2010-07-26','Activo',15,15);
insert into Cuenta_Cliente values('2015-10-24','Activo',16,16);
insert into Cuenta_Cliente values('2013-06-09','Activo',18,18);
insert into Cuenta_Cliente values('2012-08-27','Activo',19,19);
insert into Cuenta_Cliente values('2013-07-16','Activo',20,20);

select * from Cuenta_Cliente

--drop table Movimiento_Cuenta
Create table Movimiento_Cuenta(
MovCuentaID int identity(1,1) primary key,
TipoMov nvarchar(50),
TipoGestion nvarchar(30),
Monto money,
Descripcion nvarchar(50),
FechaTransaccion date,
CuentaClienteID int foreign key references Cuenta_Cliente(CuentaClienteID)
);

insert into Movimiento_Cuenta values('Transferencia Recibida','--',1000,'Comida','2017-05-12',1);
insert into Movimiento_Cuenta values('Transferencia Realizada','-',1500,'Camisas','2018-05-10',2);
insert into Movimiento_Cuenta values('Domiciliación de nómina','--',3000,'Zapatos','2019-07-22',3);
insert into Movimiento_Cuenta values('Domiciliación de nómina','--',2000,'Pantalones','2017-05-12',4);
insert into Movimiento_Cuenta values('Transferencia Recibida','--',1500,'Comida','2019-03-28',5);
insert into Movimiento_Cuenta values('Transferencia Recibida','--',2500,'Zapatos','2018-09-25',6);
insert into Movimiento_Cuenta values('Domiciliación de nómina','--',900,'Pizza','2020-08-12',7);
insert into Movimiento_Cuenta values('Transferencia Recibida','--',1000,'Camisas','2017-07-01',8);
insert into Movimiento_Cuenta values('Transferencia Realizada','--',500,'Sandalias','2019-04-11',9);
insert into Movimiento_Cuenta values('Domiciliación de nómina','--',1000,'Comida','2020-05-09',10);
insert into Movimiento_Cuenta values('Transferencia Recibida','--',300,'Pastillas','2018-02-18',11);
insert into Movimiento_Cuenta values('Transferencia Realizada','--',1000,'Leche','2019-07-17',12);
insert into Movimiento_Cuenta values('Transferencia Recibida','--',1020,'Pantalones','2020-03-14',13);
insert into Movimiento_Cuenta values('Domiciliación de nómina','--',1000,'Pollo','2020-01-07',14);
insert into Movimiento_Cuenta values('Transferencia Realizada','--',1200,'Carne','2019-12-09',15);
insert into Movimiento_Cuenta values('Transferencia Recibida','--',800,'Azúcar','2018-11-22',16);
insert into Movimiento_Cuenta values('Transferencia Recibida','--',500,'Papel Higiénico','2019-08-27',17);
insert into Movimiento_Cuenta values('Domiciliación de nómina','--',1500,'Arroz','2020-02-29',18);
insert into Movimiento_Cuenta values('Transferencia Realizada','--',3000,'Zapatos','2020-04-30',19);
insert into Movimiento_Cuenta values('Transferencia Recibida','--',1000,'Comida','2019-09-30',20);

Create table Comercio(
ComercioID int identity(1,1) primary key,
Nombre nvarchar(30),
Telefono int,
Direccion nvarchar(50)
);

insert into Comercio values ('Farmacia Express', 25224834,'Costado este Parque Central');
insert into Comercio values ('GonPer', 25224789,'Frente colegio Bautista');
insert into Comercio values ('Libreria San Jerónimo', 25224456,'Contiguo Panadareia San José');
insert into Comercio values ('Óptica Munkel', 25224147,'GonPer 1c al sur');
insert into Comercio values ('Elegance Dorita', 25224258,'Iglesia Recolección 2c al norte');
insert into Comercio values ('Farmacia San José', 25224369,'UPOLI 1/2c al sur');
insert into Comercio values ('Supermercado La Colonia', 25224159,'Plaza Vistana');
insert into Comercio values ('Restaurante El Verdi', 25224268,'Bar Neysi 75vrs al norte');
insert into Comercio values ('Super Express', 25224357,'Loma de Sandino 1/2c al norte');
insert into Comercio values ('Super Express', 25224319,'Curacao 3c al sur');
insert into Comercio values ('Supermercado La Colonia', 25224249,'Payless 2c al sur');
insert into Comercio values ('Pali', 25224842,'Estadio Roberto Clemente 3c al este');
insert into Comercio values ('Boutique Denisse', 25224961,'Cementerio San Carlos2c al oeste');
insert into Comercio values ('CalPrint', 25224748,'Farmacia Praga 1c al este');
insert into Comercio values ('Pizzeria George', 25224025,'Cruz Roja 3c al sur');
insert into Comercio values ('Comedor El Buen Gusto', 25224008,'Frente a Estación de Bomberos');
insert into Comercio values ('Farmacia Bautista', 25224780,'Hospital Bautista 25vrs al oeste');
insert into Comercio values ('Hotel Luna', 25224740,'Iglesia Xalteva 3c al sur');
insert into Comercio values ('Farmacia Praga', 25014834,'Estación de Policia 1/2c al este');
insert into Comercio values ('Helados Dos Pinos', 25852834,'Alcaldia 25 vrs al norte')

select * from Comercio

Create table Tarjeta_Credito(
TCreditoID int identity(1,1) primary key,
NombreTarjeta nvarchar(20),
TipoTarjeta nvarchar(20),
MontoBase money,
MontoBaseDolares money,
Descripcion nvarchar(50)
);

insert into Tarjeta_Credito values ('AA','Clásica',1000,29,'--');
insert into Tarjeta_Credito values ('AB','Dorada',3500,43,'--');
insert into Tarjeta_Credito values ('AC','Clásica',1500,43,'--');
insert into Tarjeta_Credito values ('AD','Platinum',2000,29,'--');
insert into Tarjeta_Credito values ('AE','Clásica',1000,29,'--');
insert into Tarjeta_Credito values ('AF','Clásica',1500,43,'--');
insert into Tarjeta_Credito values ('AG','Platinum',2000,43,'--');
insert into Tarjeta_Credito values ('AH','Platinum',1000,29,'--');
insert into Tarjeta_Credito values ('AI','Clásica',1000,29,'--');
insert into Tarjeta_Credito values ('AJ','Platinum',2000,43,'--');
insert into Tarjeta_Credito values ('AK','Clásica',1000,29,'--');
insert into Tarjeta_Credito values ('AL','Dorada',3500,43,'--');
insert into Tarjeta_Credito values ('AM','Clásica',1000,29,'--');
insert into Tarjeta_Credito values ('AN','Clásica',1500,43,'--');
insert into Tarjeta_Credito values ('AO','Platinum',2000,29,'--');
insert into Tarjeta_Credito values ('AP','Platinum',2000,29,'--');
insert into Tarjeta_Credito values ('AQ','Clásica',1500,43,'--');
insert into Tarjeta_Credito values ('AR','Platinum',2000,29,'--');
insert into Tarjeta_Credito values ('AS','Clásica',1500,43,'--');
insert into Tarjeta_Credito values ('AT','Clásica',1000,29,'--');


Create table Tarjeta_Cliente(
TClienteID int identity(1,1) primary key,
Numero int,
FechaEmision date,
FechaExpiracion date,
MaxTransaccion money,
TCreditoID int foreign key references Tarjeta_Credito(TCreditoID),
ClienteID int foreign key references Clientes(ClienteID)
);

insert into Tarjeta_Cliente values (1006984531,'2016-04-15','2030-03-20',10000,1,1);
insert into Tarjeta_Cliente values (1006893142,'2015-03-25','2030-04-22',15000,2,2);
insert into Tarjeta_Cliente values (1007896221,'2014-08-22','2028-08-18',10000,3,3);
insert into Tarjeta_Cliente values (1007842300,'2013-05-28','2027-11-19',17000,4,5);
insert into Tarjeta_Cliente values (1008212344,'2017-02-14','2030-02-15',20000,5,4);
insert into Tarjeta_Cliente values (1002258963,'2018-07-17','2035-01-08',15000,6,7);
insert into Tarjeta_Cliente values (1004511338,'2019-09-05','2036-11-09',18000,7,8);
insert into Tarjeta_Cliente values (1005631244,'2017-05-03','2031-12-01',13000,8,6);
insert into Tarjeta_Cliente values (1006978131,'2016-11-12','2030-08-08',15000,9,9);
insert into Tarjeta_Cliente values (1005214963,'2015-12-10','2028-12-04',17000,10,10);
insert into Tarjeta_Cliente values (1006654563,'2014-10-09','2029-10-14',16000,11,11);
insert into Tarjeta_Cliente values (1001234489,'2013-09-11','2030-09-18',20000,12,12);
insert into Tarjeta_Cliente values (1002598498,'2012-08-16','2031-03-27',19000,13,13);
insert into Tarjeta_Cliente values (1006972030,'2017-06-19','2035-02-28',11500,14,14);
insert into Tarjeta_Cliente values (1007845161,'2015-04-30','2025-06-27',12000,15,15);
insert into Tarjeta_Cliente values (1009220051,'2019-01-30','2038-05-24',13500,16,16);
insert into Tarjeta_Cliente values (1007846332,'2017-02-12','2035-04-25',10500,17,17);
insert into Tarjeta_Cliente values (1005894513,'2015-03-12','2035-07-30',10800,18,18);
insert into Tarjeta_Cliente values (1003254513,'2018-07-10','2037-06-29',17400,19,19);
insert into Tarjeta_Cliente values (1001566513,'2016-06-30','2036-03-22',16900,20,20);

select * from Tarjeta_Cliente

Create table Mov_Tarjeta(
MovTarjetaID int identity(1,1) primary key,
TipoMov nvarchar(20),
Monto money,
Descripcion nvarchar(50),
FechaTransaccion date,
TClienteID int foreign key references Tarjeta_Cliente(TClienteID),
ComercioID int foreign key references Comercio(ComercioID)
);

select * from Mov_Tarjeta
Delete from Mov_Tarjeta
 DBCC CHECKIDENT (Mov_Tarjeta, RESEED,0)

insert into Mov_Tarjeta values ('Compra',2000,'--','2020-09-08',1,1);
insert into Mov_Tarjeta values ('Pago',3000,'--','2019-08-12',2,2);
insert into Mov_Tarjeta values ('Compra',1500,'--','2020-10-15',3,3);
insert into Mov_Tarjeta values ('Compra',600,'--','2020-04-14',4,4);
insert into Mov_Tarjeta values ('Compra',500,'--','2019-12-03',5,5);
insert into Mov_Tarjeta values ('Pago',1500,'--','2019-05-17',7,6);
insert into Mov_Tarjeta values ('Pago',2300,'--','2019-01-22',8,9);
insert into Mov_Tarjeta values ('Pago',1200,'--','2019-07-16',9,8);
insert into Mov_Tarjeta values ('Pago',650,'--','2020-06-18',10,11);
insert into Mov_Tarjeta values ('Compra',800,'--','2019-12-25',11,15);
insert into Mov_Tarjeta values ('Compra',2100,'--','2019-12-31',12,19);
insert into Mov_Tarjeta values ('Compra',1500,'--','2020-04-25',13,18);
insert into Mov_Tarjeta values ('Pago',2500,'--','2020-03-24',16,10);
insert into Mov_Tarjeta values ('Pago',1800,'--','2019-09-28',19,12);
insert into Mov_Tarjeta values ('Pago',1300,'--','2019-07-31',21,13);
insert into Mov_Tarjeta values ('Compra',1500,'--','2019-05-27',22,14);
insert into Mov_Tarjeta values ('Compra',1800,'--','2018-12-30',23,16);
insert into Mov_Tarjeta values ('Compra',1000,'--','2020-11-08',24,20);
--<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
insert into Mov_Tarjeta values ('Compra',2000,'--','2020-09-08',2,1);
insert into Mov_Tarjeta values ('Pago',3000,'--','2019-08-12',3,2);
insert into Mov_Tarjeta values ('Compra',1500,'--','2020-10-15',1,3);
insert into Mov_Tarjeta values ('Compra',600,'--','2020-04-14',1,4);
insert into Mov_Tarjeta values ('Compra',500,'--','2019-12-03',3,5);
insert into Mov_Tarjeta values ('Pago',1500,'--','2019-05-17',7,6);
insert into Mov_Tarjeta values ('Pago',2300,'--','2019-01-22',8,9);
insert into Mov_Tarjeta values ('Pago',1200,'--','2019-07-16',5,8);
insert into Mov_Tarjeta values ('Pago',650,'--','2020-06-18',10,11);
insert into Mov_Tarjeta values ('Compra',800,'--','2019-12-25',10,15);
insert into Mov_Tarjeta values ('Compra',2100,'--','2019-12-31',13,19);
insert into Mov_Tarjeta values ('Compra',1500,'--','2020-04-25',13,18);
insert into Mov_Tarjeta values ('Pago',2500,'--','2020-03-24',1,10);
insert into Mov_Tarjeta values ('Pago',1800,'--','2019-09-28',12,12);
insert into Mov_Tarjeta values ('Pago',1300,'--','2019-07-31',2,13);
insert into Mov_Tarjeta values ('Compra',1500,'--','2019-05-27',2,14);
insert into Mov_Tarjeta values ('Compra',1800,'--','2018-12-30',3,16);
insert into Mov_Tarjeta values ('Compra',1000,'--','2020-11-08',4,20);
insert into Mov_Tarjeta values ('Compra 2',3000,'--','2020-11-08',24,20);
insert into Mov_Tarjeta values ('Pago',1450,'--','2020-09-30',25,17);
