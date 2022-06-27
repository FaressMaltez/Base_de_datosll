--job de consultas a la tabla clientes
USE [msdb]
GO
DECLARE @jobId BINARY(16)
EXEC  msdb.dbo.sp_add_job @job_name=N'consultas', 
		@enabled=1, 
		@notify_level_eventlog=0, 
		@notify_level_email=2, 
		@notify_level_page=2, 
		@delete_level=0, 
		@category_name=N'[Uncategorized (Local)]', 
		@owner_login_name=N'DESKTOP-8GM1BB7\Isaac Gutierrez', @job_id = @jobId OUTPUT
select @jobId
GO
EXEC msdb.dbo.sp_add_jobserver @job_name=N'consultas', @server_name = N'DESKTOP-8GM1BB7'
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_add_jobstep @job_name=N'consultas', @step_name=N'select', 
		@step_id=1, 
		@cmdexec_success_code=0, 
		@on_success_action=1, 
		@on_fail_action=2, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'select * from Clientes', 
		@database_name=N'BancoAL', 
		@output_file_name=N'C:\jobs\consultacliente1.0', 
		@flags=0
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_update_job @job_name=N'consultas', 
		@enabled=1, 
		@start_step_id=1, 
		@notify_level_eventlog=0, 
		@notify_level_email=2, 
		@notify_level_page=2, 
		@delete_level=0, 
		@description=N'', 
		@category_name=N'[Uncategorized (Local)]', 
		@owner_login_name=N'DESKTOP-8GM1BB7\Isaac Gutierrez', 
		@notify_email_operator_name=N'', 
		@notify_page_operator_name=N''
GO
USE [msdb]
GO
DECLARE @schedule_id int
EXEC msdb.dbo.sp_add_jobschedule @job_name=N'consultas', @name=N'consulta cliente', 
		@enabled=1, 
		@freq_type=4, 
		@freq_interval=1, 
		@freq_subday_type=1, 
		@freq_subday_interval=0, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=1, 
		@active_start_date=20220626, 
		@active_end_date=99991231, 
		@active_start_time=100000, 
		@active_end_time=235959, @schedule_id = @schedule_id OUTPUT
select @schedule_id
GO

-- creacion de backup automaticos 

--backup
BACKUP DATABASE [BancoAL] TO  DISK = N'C:\backup\bd_banco'
WITH NOFORMAT, INIT, 
NAME = N'BancoAL-Full Database Backup'
, SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

--jobs
USE [msdb]
GO
DECLARE @jobId BINARY(16)
EXEC  msdb.dbo.sp_add_job @job_name=N'backupsemanal', 
		@enabled=1, 
		@notify_level_eventlog=0, 
		@notify_level_email=2, 
		@notify_level_page=2, 
		@delete_level=0, 
		@description=N'se hara un backup semanal de la bd BancoAL', 
		@category_name=N'[Uncategorized (Local)]', 
		@owner_login_name=N'DESKTOP-8GM1BB7\Isaac Gutierrez', @job_id = @jobId OUTPUT
select @jobId
GO
EXEC msdb.dbo.sp_add_jobserver @job_name=N'backupsemanal', @server_name = N'DESKTOP-8GM1BB7'
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_add_jobstep @job_name=N'backupsemanal', @step_name=N'bk_bancoAL', 
		@step_id=1, 
		@cmdexec_success_code=0, 
		@on_success_action=1, 
		@on_fail_action=2, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'BACKUP DATABASE [BancoAL] TO  DISK = N''C:\backup\bd_banco''
WITH NOFORMAT, INIT, 
NAME = N''BancoAL-Full Database Backup''
, SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO', 
		@database_name=N'BancoAL', 
		@flags=0
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_update_job @job_name=N'backupsemanal', 
		@enabled=1, 
		@start_step_id=1, 
		@notify_level_eventlog=0, 
		@notify_level_email=2, 
		@notify_level_page=2, 
		@delete_level=0, 
		@description=N'se hara un backup semanal de la bd BancoAL', 
		@category_name=N'[Uncategorized (Local)]', 
		@owner_login_name=N'DESKTOP-8GM1BB7\Isaac Gutierrez', 
		@notify_email_operator_name=N'', 
		@notify_page_operator_name=N''
GO
USE [msdb]
GO
DECLARE @schedule_id int
EXEC msdb.dbo.sp_add_jobschedule @job_name=N'backupsemanal', @name=N'bk_bancoAl', 
		@enabled=1, 
		@freq_type=8, 
		@freq_interval=49, 
		@freq_subday_type=1, 
		@freq_subday_interval=0, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=1, 
		@active_start_date=20220630, 
		@active_end_date=99991231, 
		@active_start_time=200000, 
		@active_end_time=235959, @schedule_id = @schedule_id OUTPUT
select @schedule_id
GO
