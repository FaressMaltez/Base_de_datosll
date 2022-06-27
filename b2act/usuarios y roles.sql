--propietario de la base de datos
use BancoAL
go
create login Faress with password='owner123'
create user Faress_owner from login Faress
sp_changedbowner Faress_owner

sp_helpdb BancoAL

--usuario con permiso de lectura, escritura
use BancoAL
go
create login Isaac_Robleto with password ='sa12345'
create user Isaac_R from login Isaac_Robleto
grant select , insert, update on database :: BancoAL to IsaacRobleto

--usuario con permiso de hacer consultas en tablas especificas 
use BancoAL
go
create login Mauricio with password ='maly12'
create user Mauricio_Maltez from login Mauricio

grant select on clientes to Mauricio_Maltez with grant option 
grant select on Comercio to Mauricio_Maltez with grant option 
grant select on Tarjeta_Cliente to Mauricio_Maltez with grant option 

--usuario con permiso para crear tablas vistas y procedimientos  


use BancoAL
go
create login Milton with password ='Milton123'
create user Milton_Ibarra from login Milton

grant create table to Milton_Ibarra
grant select on database ::  BancoAL to Milton_Ibarra
grant create view to Milton_Ibarra
grant create procedure to Milton_Ibarra

--agregacion de roles
--este usuario puede crear respaldos, administrar roles y permisos.
create login Josue with password ='123'
create user Josue_securityadmin from login Josue 
sp_addrolemember db_securityadmin, Josue_securityadmin
sp_addrolemember db_backupoperator, Josue_securityadmin

--Rol de escritura y lectura
--Este puede agregar, elimar, cambiar y leer todos los datos de todas tablas de usuario.
create login Rolando with password = '123'
create user Rolando_editor from login Rolando
sp_addrolemember db_datawriter, Rolando_editor
sp_addrolemember db_datareader, Rolando_editor