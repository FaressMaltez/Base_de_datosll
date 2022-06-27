--auditoria de servidor 
USE [master]

GO

CREATE SERVER AUDIT [auditoria de servidor]
TO FILE 
(	FILEPATH = N'C:\auditoria'
	,MAXSIZE = 0 MB
	,MAX_ROLLOVER_FILES = 2147483647
	,RESERVE_DISK_SPACE = OFF
) WITH (QUEUE_DELAY = 1000, ON_FAILURE = CONTINUE)

GO

--auditoria de cambio de contraseña
USE [master]

GO

CREATE SERVER AUDIT SPECIFICATION [auditoria de cambio de contaseña e inicio de sesion]
FOR SERVER AUDIT [auditoria de servidor]
ADD (LOGIN_CHANGE_PASSWORD_GROUP)

GO

--audotria de bases de datos 
USE [master]

GO

CREATE SERVER AUDIT [auditoria de base de datos ]
TO FILE 
(	FILEPATH = N'C:\auditoria'
	,MAXSIZE = 0 MB
	,MAX_ROLLOVER_FILES = 2147483647
	,RESERVE_DISK_SPACE = OFF
) WITH (QUEUE_DELAY = 1000, ON_FAILURE = CONTINUE)

GO
-- auditoria de selccion 

USE [BancoAL]

GO

CREATE DATABASE AUDIT SPECIFICATION [eveno de seleccion ]
FOR SERVER AUDIT [auditoria de base de datos ]
ADD (SELECT ON OBJECT::[dbo].[cliente] BY [Faress_owner])

GO

use BancoAL
go
select * from cliente

