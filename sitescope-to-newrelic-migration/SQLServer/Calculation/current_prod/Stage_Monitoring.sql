USE [master]
GO
/****** Object:  Database [Stage_Monitoring]    Script Date: 10/18/2016 1:40:51 PM ******/
CREATE DATABASE [Stage_Monitoring]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Stage_Monitoring_data01', FILENAME = N'E:\Data\Stage_Monitoring.mdf' , SIZE = 107198464KB , MAXSIZE = 107198464KB , FILEGROWTH = 1048576KB ), 
( NAME = N'Stage_Monitoring_data02', FILENAME = N'M:\Data\Stage_Monitoring_1.ndf' , SIZE = 122041344KB , MAXSIZE = 122041344KB , FILEGROWTH = 1048576KB ), 
( NAME = N'Stage_Monitoring_data03', FILENAME = N'O:\Data\Stage_Monitoring_data03.ndf ' , SIZE = 17825792KB , MAXSIZE = 104857600KB , FILEGROWTH = 1048576KB ), 
( NAME = N'Stage_Monitoring_data04', FILENAME = N'N:\Data\Stage_Monitoring_data04.ndf ' , SIZE = 6291456KB , MAXSIZE = 104857600KB , FILEGROWTH = 1048576KB ), 
( NAME = N'Stage_Monitoring_log02', FILENAME = N'P:\Data\Stage_Monitoring_log02.ldf' , SIZE = 41943040KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB )
 LOG ON 
( NAME = N'Stage_Monitoring_log01', FILENAME = N'E:\LOGS\Stage_Monitoring_2.ldf' , SIZE = 1024KB , MAXSIZE = 524582912KB , FILEGROWTH = 1048576KB ), 
( NAME = N'Stage_Monitoring_log03', FILENAME = N'E:\LOGS\Stage_Monitoring_log03.ldf' , SIZE = 524582912KB , MAXSIZE = 2048GB , FILEGROWTH = 1048576KB )
GO
ALTER DATABASE [Stage_Monitoring] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Stage_Monitoring].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [Stage_Monitoring] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Stage_Monitoring] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Stage_Monitoring] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Stage_Monitoring] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Stage_Monitoring] SET ARITHABORT OFF 
GO
ALTER DATABASE [Stage_Monitoring] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Stage_Monitoring] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Stage_Monitoring] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Stage_Monitoring] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Stage_Monitoring] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Stage_Monitoring] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Stage_Monitoring] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Stage_Monitoring] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Stage_Monitoring] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Stage_Monitoring] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Stage_Monitoring] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Stage_Monitoring] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Stage_Monitoring] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Stage_Monitoring] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Stage_Monitoring] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Stage_Monitoring] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Stage_Monitoring] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Stage_Monitoring] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Stage_Monitoring] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Stage_Monitoring] SET  MULTI_USER 
GO
ALTER DATABASE [Stage_Monitoring] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Stage_Monitoring] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Stage_Monitoring] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Stage_Monitoring] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Stage_Monitoring', N'ON'
GO
USE [Stage_Monitoring]
GO
/****** Object:  User [truncate_proxy]    Script Date: 10/18/2016 1:40:53 PM ******/
CREATE USER [truncate_proxy] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RACKSPACE\Global Data Team Developers]    Script Date: 10/18/2016 1:40:53 PM ******/
CREATE USER [RACKSPACE\Global Data Team Developers] FOR LOGIN [RACKSPACE\Global Data Team Developers]
GO
/****** Object:  User [RACKSPACE\getom_sqlrunas]    Script Date: 10/18/2016 1:40:53 PM ******/
CREATE USER [RACKSPACE\getom_sqlrunas] FOR LOGIN [RACKSPACE\getom_sqlrunas] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RACKSPACE\GET_SQLDBA_Offshore]    Script Date: 10/18/2016 1:40:53 PM ******/
CREATE USER [RACKSPACE\GET_SQLDBA_Offshore] FOR LOGIN [RACKSPACE\GET_SQLDBA_Offshore]
GO
/****** Object:  User [RACKSPACE\EBI_Support]    Script Date: 10/18/2016 1:40:53 PM ******/
CREATE USER [RACKSPACE\EBI_Support] FOR LOGIN [RACKSPACE\EBI_Support]
GO
/****** Object:  User [RACKSPACE\EBI_QA]    Script Date: 10/18/2016 1:40:53 PM ******/
CREATE USER [RACKSPACE\EBI_QA] FOR LOGIN [RACKSPACE\EBI_QA]
GO
/****** Object:  User [RACKSPACE\EBI_ETL_QA_svc]    Script Date: 10/18/2016 1:40:53 PM ******/
CREATE USER [RACKSPACE\EBI_ETL_QA_svc] FOR LOGIN [RACKSPACE\EBI_ETL_QA_svc] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RACKSPACE\EBI_ETL_PROD_svc]    Script Date: 10/18/2016 1:40:54 PM ******/
CREATE USER [RACKSPACE\EBI_ETL_PROD_svc] FOR LOGIN [RACKSPACE\EBI_ETL_PROD_svc] WITH DEFAULT_SCHEMA=[RACKSPACE\EBI_ETL_PROD_svc]
GO
/****** Object:  User [RACKSPACE\ebi_developers]    Script Date: 10/18/2016 1:40:54 PM ******/
CREATE USER [RACKSPACE\ebi_developers] FOR LOGIN [RACKSPACE\EBI_Developers]
GO
/****** Object:  User [RACKSPACE\EBI_ARCH]    Script Date: 10/18/2016 1:40:54 PM ******/
CREATE USER [RACKSPACE\EBI_ARCH] FOR LOGIN [RACKSPACE\EBI_ARCH]
GO
/****** Object:  User [RACKSPACE\EBI_Admin_DB]    Script Date: 10/18/2016 1:40:54 PM ******/
CREATE USER [RACKSPACE\EBI_Admin_DB] FOR LOGIN [RACKSPACE\EBI_Admin_DB]
GO
/****** Object:  User [RACKSPACE\DataTeam_Members]    Script Date: 10/18/2016 1:40:54 PM ******/
CREATE USER [RACKSPACE\DataTeam_Members] FOR LOGIN [RACKSPACE\DataTeam_Members]
GO
/****** Object:  User [racketl]    Script Date: 10/18/2016 1:40:54 PM ******/
CREATE USER [racketl] FOR LOGIN [racketl] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [LS_EBI_ETL_QA]    Script Date: 10/18/2016 1:40:55 PM ******/
CREATE USER [LS_EBI_ETL_QA] FOR LOGIN [LS_EBI_ETL_QA] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [LS_EBI_ETL_DEV]    Script Date: 10/18/2016 1:40:55 PM ******/
CREATE USER [LS_EBI_ETL_DEV] FOR LOGIN [LS_EBI_ETL_DEV] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [LS__EBI_ODS_CORE]    Script Date: 10/18/2016 1:40:55 PM ******/
CREATE USER [LS__EBI_ODS_CORE] FOR LOGIN [LS__EBI_ODS_CORE] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [LS__EBI_DATAMART]    Script Date: 10/18/2016 1:40:55 PM ******/
CREATE USER [LS__EBI_DATAMART] FOR LOGIN [LS__EBI_DATAMART] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Infa_Load]    Script Date: 10/18/2016 1:40:56 PM ******/
CREATE USER [Infa_Load] FOR LOGIN [Infa_Load] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [EBI_Support]    Script Date: 10/18/2016 1:40:56 PM ******/
CREATE USER [EBI_Support] FOR LOGIN [EBI_Support] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [EBI_RF_Support]    Script Date: 10/18/2016 1:40:56 PM ******/
CREATE USER [EBI_RF_Support] FOR LOGIN [EBI_RF_Support] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [EBI_QA_Support]    Script Date: 10/18/2016 1:40:56 PM ******/
CREATE USER [EBI_QA_Support] FOR LOGIN [EBI_QA_Support] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BUILTIN\Administrators]    Script Date: 10/18/2016 1:40:56 PM ******/
CREATE USER [BUILTIN\Administrators] FOR LOGIN [BUILTIN\Administrators] WITH DEFAULT_SCHEMA=[BUILTIN\Administrators]
GO
ALTER ROLE [db_datareader] ADD MEMBER [RACKSPACE\Global Data Team Developers]
GO
ALTER ROLE [db_datareader] ADD MEMBER [RACKSPACE\getom_sqlrunas]
GO
ALTER ROLE [db_datareader] ADD MEMBER [RACKSPACE\GET_SQLDBA_Offshore]
GO
ALTER ROLE [db_owner] ADD MEMBER [RACKSPACE\EBI_Support]
GO
ALTER ROLE [db_datareader] ADD MEMBER [RACKSPACE\EBI_QA]
GO
ALTER ROLE [db_datareader] ADD MEMBER [RACKSPACE\EBI_ETL_QA_svc]
GO
ALTER ROLE [db_datareader] ADD MEMBER [RACKSPACE\ebi_developers]
GO
ALTER ROLE [db_datareader] ADD MEMBER [RACKSPACE\EBI_ARCH]
GO
ALTER ROLE [db_datareader] ADD MEMBER [RACKSPACE\EBI_Admin_DB]
GO
ALTER ROLE [db_datareader] ADD MEMBER [RACKSPACE\DataTeam_Members]
GO
ALTER ROLE [db_owner] ADD MEMBER [racketl]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [racketl]
GO
ALTER ROLE [db_datareader] ADD MEMBER [racketl]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [racketl]
GO
ALTER ROLE [db_datareader] ADD MEMBER [LS_EBI_ETL_QA]
GO
ALTER ROLE [db_datareader] ADD MEMBER [LS_EBI_ETL_DEV]
GO
ALTER ROLE [db_datareader] ADD MEMBER [LS__EBI_ODS_CORE]
GO
ALTER ROLE [db_datareader] ADD MEMBER [LS__EBI_DATAMART]
GO
ALTER ROLE [db_owner] ADD MEMBER [Infa_Load]
GO
ALTER ROLE [db_datareader] ADD MEMBER [EBI_Support]
GO
ALTER ROLE [db_datareader] ADD MEMBER [EBI_RF_Support]
GO
ALTER ROLE [db_datareader] ADD MEMBER [EBI_QA_Support]
GO
ALTER ROLE [db_datareader] ADD MEMBER [BUILTIN\Administrators]
GO
/****** Object:  Schema [BUILTIN\Administrators]    Script Date: 10/18/2016 1:40:59 PM ******/
CREATE SCHEMA [BUILTIN\Administrators]
GO
/****** Object:  Schema [RACKSPACE\EBI_ETL_PROD_svc]    Script Date: 10/18/2016 1:40:59 PM ******/
CREATE SCHEMA [RACKSPACE\EBI_ETL_PROD_svc]
GO
/****** Object:  Schema [RACKSPACE\natasha.gajic]    Script Date: 10/18/2016 1:40:59 PM ******/
CREATE SCHEMA [RACKSPACE\natasha.gajic]
GO
/****** Object:  StoredProcedure [dbo].[GET_INDEXESLIST]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[GET_INDEXESLIST] 
AS
BEGIN
SET NOCOUNT ON;
------------------------------------------------------------------------	
-- Get the List of all indexes on a Database DB along with its size
------------------------------------------------------------------------
-- this query gives only the indexes in a table unlike 
-- sysindexes which gives indexes and statistics 
 SELECT t.name AS [Table],
i.name AS [Index]
    ,i.type_desc
    ,is_unique
    ,ds.type_desc AS filegroup_or_partition_scheme
    ,ds.name AS filegroup_or_partition_scheme_name
    ,ignore_dup_key
    ,is_primary_key
    ,is_unique_constraint
    ,fill_factor
    ,is_padded
    ,is_disabled
    ,allow_row_locks
    ,allow_page_locks
	Into #TEST
FROM sys.tables AS t
INNER JOIN sys.indexes AS i ON T.object_id = I.object_id
INNER JOIN sys.data_spaces AS ds ON i.data_space_id = ds.data_space_id
WHERE is_hypothetical = 0 AND i.index_id <> 0 

-- Get the Index Size
SELECT
OBJECT_NAME(i.OBJECT_ID) AS TableName,
i.name AS IndexName,
i.index_id AS IndexID,
8 * SUM(a.used_pages) AS [Indexsize(KB)]
INTO #TEST2
FROM sys.indexes AS i
JOIN sys.partitions AS p ON p.OBJECT_ID = i.OBJECT_ID AND p.index_id = i.index_id
JOIN sys.allocation_units AS a ON a.container_id = p.partition_id
where i.name in (Select name from #TEST)
AND OBJECT_NAME(i.OBJECT_ID) in (Select [Table] from #TEST)
GROUP BY i.OBJECT_ID,i.index_id,i.name
ORDER BY OBJECT_NAME(i.OBJECT_ID),i.index_id

Select  A.[Table],A.[Index],((B.[Indexsize(KB)]/1024)/1024) AS [Indexsize(GB)] ,A.type_desc ,A.is_unique from #TEST A
Inner Join #TEST2 B ON A.[INDEX] = B.IndexName AND A.[Table] = B.TableName

DROP TABLE #TEST
DROP TABLE #TEST2

END

GO
/****** Object:  StoredProcedure [dbo].[sp_AGG_Daily_Monitoring_Central_Time]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 7/25/2013
-------------------------------------------------------------------------------------------

Description:
--------------


Modifications:
--------------

-------------------------------------------------------------------------------------------
*/

CREATE procedure [dbo].[sp_AGG_Daily_Monitoring_Central_Time]

as

declare @begin_date		datetime
declare @end_date		datetime
declare @etl_date		datetime
declare @sql			varchar(1000)

declare @process_begin	datetime
declare @step_1			datetime
declare @step_2			datetime
declare	@step_3			datetime
declare @step_4			datetime

declare @run_id			int

set	@begin_date			=	(
							select
								time_full_date
							from
								stage_three_dw.dbo.Dim_Time
							where
								Time_Month_Number	= MONTH(getdate()-1)
							and Time_Year_Number	= YEAR(getdate()-1)
							and Time_Day_Number		= DAY(getdate()-1)
							)
set @end_date			=	DATEADD(ss,86399,@begin_date)
set @etl_date			=	GETDATE()


insert into stage_monitoring.dbo.ref_audit_daily_agg
(
	day_to_process,
	timezone,
	begin_process
)
select
	@begin_date,'CT',@etl_date
	
set @run_id = (select max(id) from stage_monitoring.dbo.ref_audit_daily_agg)

-----------------------------------------------------------------------------
--step 1 stage the agg
-----------------------------------------------------------------------------
set @sql = '
truncate table stage_monitoring.dbo.stg_monitoring_daily_central_time

insert into stage_monitoring.dbo.stg_monitoring_daily_central_time
(
	uptimeDuration,
	downtimeDurationWithSupression,
	downtimeDurationWithoutSupression,
	uptimePercentageWithSupression,
	uptimePercentageWithoutSupression,
	row_key
)
SELECT 
	sum(uptimeDuration),
	sum(downtimeDurationWithSupression),
	sum(downtimeDurationWithoutSupression),
	avg(uptimePercentageWithSupression),
	avg(uptimePercentageWithoutSupression),
	row_key
FROM 
	stage_three_dw.dbo.Report_Monitoring_Availability_Hourly with (nolock)
where
	Source_System_Name in (''sitescope'',''rackwatch'')
and
	Time_Full_Date_HMS >= ''' + convert(varchar, @begin_date) + '''
and 
	time_full_date_hms <= ''' + convert(varchar, @end_date) + '''
group by
	row_key
'
exec (@sql)


update a
	set
		a.step_1_stage_agg = GETDATE()
from
	stage_monitoring.dbo.ref_audit_daily_agg a
where
	a.id = @run_id 
	

-----------------------------------------------------------------------------
--step 2 get row_keys
-----------------------------------------------------------------------------
truncate table stage_monitoring.dbo.ref_row_key_hold_NULL

insert into stage_monitoring.dbo.ref_row_key_hold_NULL
(
	row_key,
	row_key_string
)
select
	distinct 
	row_key,
	replace(replace(replace(row_key,']:[',','),'[',''),']','')
from
	stage_monitoring.dbo.stg_monitoring_daily_central_time


update a
	set
		a.step_2_get_row_keys = GETDATE()
from
	stage_monitoring.dbo.ref_audit_daily_agg a
where
	a.id = @run_id 

----------------------------------------------------
--row_key and row_key_string inserted into hold table
--process row_key_string / parse process to ref_row_key lookup table
----------------------------------------------------
truncate table stage_monitoring.dbo.ref_row_key_NULL

;with
cteSplit AS
(
select
	a.row_key,
	row_number() over (partition by a.row_key order by t.N)	as row_N,
	substring(',' + a.row_key_string, N+1, charindex(',', a.row_key_string + ',', N)-N) as SplitValue
from
	stage_monitoring.dbo.tally t

	cross join stage_monitoring.dbo.ref_row_key_hold_NULL a
WHERE 
	t.N <= LEN(',' + a.row_key_string)
AND SUBSTRING(',' + a.row_key_string, N, 1) = ','
)
insert into stage_monitoring.dbo.ref_row_key_NULL
(
	[row_key]
	,[Instance_NK]
	,[Instance_Source_System]
	,[Monitor_NK]
	,[Monitor_Type]
	,[Monitor_Silo]
	,[Monitor_Source_System]
)
 SELECT s.row_key,
		MAX(CASE WHEN s.row_N = 1 THEN isnull(SplitValue,'N/A') END) AS instance_nk,
		MAX(CASE WHEN s.row_N = 2 THEN isnull(SplitValue,'N/A') END) AS instance_source_system,
		MAX(CASE WHEN s.row_N = 3 THEN isnull(SplitValue,'N/A') END) AS monitor_nk,
		MAX(CASE WHEN s.row_N = 4 THEN isnull(SplitValue,'N/A') END) AS monitor_type,
		MAX(CASE WHEN s.row_N = 5 THEN isnull(SplitValue,'N/A') END) AS monitor_silo,
		MAX(CASE WHEN s.row_N = 6 THEN isnull(SplitValue,'N/A') END) AS monitor_source_system
FROM 
	cteSplit s
GROUP BY 
	s.row_key


update a
	set
		a.atep_3_parse_row_key = GETDATE()
from
	stage_monitoring.dbo.ref_audit_daily_agg a
where
	a.id = @run_id 
		
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
truncate table stage_monitoring.dbo.stg_report_monitoring_availability_daily_central_time

insert into stage_monitoring.dbo.stg_report_monitoring_availability_daily_central_time
(
	[Time_KEY]
	,[Time_Full_Date]
	,[Time_Month_Number]
	,[Time_Month_Desc]
	,[Time_Month_Abbr]
	,[Time_Year_Number]
	,[Time_Quarter_Number]
	,[Time_Full_Date_HMS]
	,[Account_Name]
	,[Account_Number]
	,[Account_Type]
	,[Device_Host_Name]
	,[Device_Number]
	,[Device_Status]
	,[Monitor_Type]
	,[Monitor_Name]
	,[Monitor_Silo]
	,[Source_System_Name]
	,[uptimeDuration]
	,[downtimeDurationWithSupression]
	,[downtimeDurationWithoutSupression]
	,[uptimePercentageWithSupression]
	,[uptimePercentageWithoutSupression]
	,[row_key]
	,[Monitor_ID]
	,[Device_Source]
	,[Account_Source]
	,[etl_date]
	,[Monitor_Type_Group]
)



select
	c.Time_KEY,
	c.Time_Full_Date,
	c.Time_Month_Number,
	c.Time_Month_Desc,
	c.Time_Month_Abbr,
	c.Time_Year_Number,
	c.Time_Quarter_Number,
	@begin_date,
	z.Account_Name,
	z.Account_Number,
	z.Account_Type,
	z.Device_Host_Name,
	z.Device_Number,
	z.Device_Status,
	case
		when x.monitor_type = 'web' then 'URL'
		else
			x.monitor_type
	end				as monitor_type,
	x.Monitor_Name,
	zzz.Monitor_Silo,
	zzz.Monitor_Source_System,
	a.uptimeDuration,
	a.downtimeDurationWithSupression,
	a.downtimeDurationWithoutSupression,
	a.uptimePercentageWithSupression,
	a.uptimePercentageWithoutSupression,
	a.row_key,
	zzz.Monitor_NK,					
	zzz.Instance_Source_System,		
	z.account_source_system_name,
	@etl_Date,
	(
	case
		--DEFINE PING
		when 
				x.MONITOR_TYPE = 'Ping' 
			OR 
				x.MONITOR_TYPE = 'ICMP'  
			OR 
				zzz.monitor_nk = 'PING'
			then 'PING'
		
		--DEFINE PORT
		when
		((zzz.Monitor_NK IN ('FTP','ColdFusion','Cold Fusion','PostgreSQL','MS SQL Server','Webport','SQLServer','HTTP',
							'IMAP','POP3','Telnet','SMTP','Postgres','HTTPS','MySQL','DNS','SSH') 
		AND zzz.monitor_source_system = 'rackwatch')
		OR
		(x.monitor_type in ('Protocol','Ping','FTPGet','ColdFusion','DNS','Protocol')
		and zzz.monitor_source_system = 'sitescope')
		OR
		(x.monitor_type in ('TCP','SMTP','SMTP-BANNER','SSH','NETWORK','MYSQL','DNS','APACHE')
		and zzz.monitor_source_system = 'maas'))
			then 'PORT'

		--DEFINE URL
		when
		((x.monitor_type in ('http','web','URL')
		and zzz.monitor_source_system = 'sitescope')
		OR
		(x.monitor_type in ('URL')
		and zzz.monitor_source_system = 'MaaS'))
			then 'URL'

		else
			'other'
	end	
	)as Monitor_Type_Group
		

from	
	stage_monitoring.dbo.stg_monitoring_daily_central_time a
	
	inner join stage_monitoring.dbo.ref_row_key_NULL zzz
		on a.row_key = zzz.row_key

	inner join stage_three_dw.dbo.Dim_Time c
		on c.Time_Full_Date		=	@begin_date

	--join with dim_monitor
	left join [EBI-ETL].stage_three_dw.dbo.dim_monitor x
		on	x.monitor_id_nk			=	zzz.monitor_nk
		and x.monitor_silo			=	zzz.monitor_silo
		and x.source_system_name    =	(case
											when zzz.Monitor_Source_System = 'sitescope' then 'RADAR'
										 else
											zzz.Monitor_Source_System 
										 end)		
		and x.Current_Record_Flag	=	1
		
		
	left join stage_monitoring.dbo.vw_report_account_device_daily z
		on	zzz.Instance_NK				= z.device_number
		and zzz.Instance_Source_System	= z.device_source_system_name




update a
	set
		a.step_4_stg_with_attributes = GETDATE()
from
	stage_monitoring.dbo.ref_audit_daily_agg a
where
	a.id = @run_id 


----------------------------------------------------------------------------------
----insert into central time daily
----------------------------------------------------------------------------------		
insert into stage_three_dw.dbo.report_monitoring_availability_daily_central_time
(
	[id]
	,[Time_KEY]
	,[Time_Full_Date]
	,[Time_Month_Number]
	,[Time_Month_Desc]
	,[Time_Month_Abbr]
	,[Time_Year_Number]
	,[Time_Quarter_Number]
	,[Time_Full_Date_HMS]
	,[Account_Name]
	,[Account_Number]
	,[Account_Type]
	,[Device_Host_Name]
	,[Device_Number]
	,[Device_Status]
	,[Monitor_Type]
	,[Monitor_Name]
	,[Monitor_Silo]
	,[Monitor_Type_Group]
	,[Source_System_Name]
	,[uptimeDuration]
	,[downtimeDurationWithSupression]
	,[downtimeDurationWithoutSupression]
	,[uptimePercentageWithSupression]
	,[uptimePercentageWithoutSupression]
	,[row_key]
	,[Monitor_ID]
	,[Device_Source]
	,[Account_Source]
	,[etl_date]
)
SELECT 
	[id]
	,[Time_KEY]
	,[Time_Full_Date]
	,[Time_Month_Number]
	,[Time_Month_Desc]
	,[Time_Month_Abbr]
	,[Time_Year_Number]
	,[Time_Quarter_Number]
	,[Time_Full_Date_HMS]
	,[Account_Name]
	,[Account_Number]
	,[Account_Type]
	,[Device_Host_Name]
	,[Device_Number]
	,[Device_Status]
	,[Monitor_Type]
	,[Monitor_Name]
	,[Monitor_Silo]
	,[Monitor_Type_Group]
	,[Source_System_Name]
	,[uptimeDuration]
	,[downtimeDurationWithSupression]
	,[downtimeDurationWithoutSupression]
	,[uptimePercentageWithSupression]
	,[uptimePercentageWithoutSupression]
	,[row_key]
	,[Monitor_ID]
	,[Device_Source]
	,[Account_Source]
	,[etl_date]
FROM 
	[Stage_Monitoring].[dbo].[stg_report_monitoring_availability_daily_central_time]


update a
	set
		a.step_5_insert_to_production = GETDATE()
from
	stage_monitoring.dbo.ref_audit_daily_agg a
where
	a.id = @run_id 


----------------------------------------------------------------------------------
----calculate times
----------------------------------------------------------------------------------	

update a	
	set
		a.duration_1	=	DATEDIFF(ss,begin_process,step_1_stage_agg)
	,	a.duration_2	=	DATEDIFF(ss,step_1_stage_agg,step_2_get_row_keys )
	,	a.duration_3	=	DATEDIFF(SS,step_2_get_row_keys,atep_3_parse_row_key )
	,	a.duration_4	=	DATEDIFF(ss,atep_3_parse_row_key,step_4_stg_with_attributes )
	,	a.duration_5	=	DATEDIFF(ss,step_4_stg_with_attributes,step_5_insert_to_production )
	,	a.total_row_count	=	(select COUNT(*) from stage_monitoring.dbo.stg_report_monitoring_availability_daily_central_time)
from
	stage_monitoring.dbo.ref_audit_daily_agg a
where
	a.id = @run_id 



GO
/****** Object:  StoredProcedure [dbo].[sp_AGG_Daily_Monitoring_UTC]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO













/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 7/25/2013
-------------------------------------------------------------------------------------------

Description:
--------------


Modifications:
--------------

Natasha Gajic 07/20/2015 added MaaS & Performance imporvement

-------------------------------------------------------------------------------------------
*/

CREATE procedure [dbo].[sp_AGG_Daily_Monitoring_UTC]

as

declare @begin_date		datetime
declare @end_date		datetime
declare @begin_date_last_hour		datetime
declare @etl_date		datetime
declare @sql			varchar(1000)
declare @run_id			int
declare @check_day		datetime
declare @timezone		varchar(10)
declare @min_id			bigint
declare @max_id         bigint
declare @min_maas_id			bigint
declare @max_maas_id         bigint

declare @min_sitescope_id			bigint
declare @max_sitescope_id         bigint

declare @min_rackwatch_id			bigint
declare @max_rackwatch_id         bigint

declare @max_date_in_hourly datetime

--Audit variables
declare @process_begin	datetime
declare @step_1			datetime
declare @step_2			datetime
declare	@step_3			datetime
declare @step_4			datetime


--GET UTC DAY
declare @utc_start_date	datetime
declare @tz_diff		int
--set @utc_start_date		= '2015-06-18 00:00:00.000'-- hard code date to run for missing days
--set @utc_start_date		= (
--							select
--								time_full_date
--							from
--								stage_three_dw.dbo.Dim_Time
--							where
--								Time_Month_Number	= MONTH(getdate()-1)
--							and Time_Year_Number	= YEAR(getdate()-1)
--							and Time_Day_Number		= DAY(getdate()-1)
--							)
							
set @utc_start_date		= (select DATEADD(day,1,max(Time_Full_Date_HMS)) from stage_three_dw.dbo.Report_Monitoring_Availability_Daily)
print @utc_start_date
--set @utc_start_date		= '2015-10-14 00:00:00.000'-- hard code date to run for missing days
set @max_date_in_hourly = (select DATEADD(day,1,max(Time_Full_Date_HMS)) from stage_three_dw.dbo.Report_Monitoring_Availability_Hourly where source_system_name ='MaaS')
print @max_date_in_hourly
while (@utc_start_date< cast(floor(cast(@max_date_in_hourly as float)) as datetime) )
begin
--set datetimes (Central Times for hourly)
set	@begin_date			=	stage_three_dw.dbo.udf_Timezone_Conversion_WITH_DST(@utc_start_date,'CT')
set @end_date			=	DATEADD(ss,86399,@begin_date)
set @begin_date_last_hour = DATEADD(ss,82800,@begin_date)
set @etl_date			=	GETDATE()

print @begin_date	
print @end_date
print @begin_date_last_hour

--set check day
set @check_day			= (select MAX(day_to_process) from stage_monitoring.dbo.ref_audit_daily_agg where timezone = 'UTC')
set @timezone			= 'UTC'
set @min_maas_id             = 	(select min(id) from stage_three_dw.dbo.Report_Monitoring_Availability_Hourly with   (FORCESEEK, INDEX (IDX_DATE_HMS)) where Time_Full_Date_HMS = @begin_date and source_system_name='MaaS')
set @max_maas_id             =	(select max(id) from stage_three_dw.dbo.Report_Monitoring_Availability_Hourly with   (FORCESEEK, INDEX (IDX_DATE_HMS)) where Time_Full_Date_HMS = @begin_date_last_hour and source_system_name='MaaS')
set @min_sitescope_id             = 	(select min(id) from stage_three_dw.dbo.Report_Monitoring_Availability_Hourly with   (FORCESEEK, INDEX (IDX_DATE_HMS)) where Time_Full_Date_HMS = @begin_date and source_system_name='SiteScope')
set @max_sitescope_id             =	(select max(id) from stage_three_dw.dbo.Report_Monitoring_Availability_Hourly with   (FORCESEEK, INDEX (IDX_DATE_HMS)) where Time_Full_Date_HMS = @begin_date_last_hour and source_system_name='SiteScope')

set @min_rackwatch_id             = 	(select min(id) from stage_three_dw.dbo.Report_Monitoring_Availability_Hourly with   (FORCESEEK, INDEX (IDX_DATE_HMS)) where Time_Full_Date_HMS = @begin_date and source_system_name='RackWatch')
set @max_rackwatch_id             =	(select max(id) from stage_three_dw.dbo.Report_Monitoring_Availability_Hourly with   (FORCESEEK, INDEX (IDX_DATE_HMS)) where Time_Full_Date_HMS = @begin_date_last_hour and source_system_name='RackWatch')

print @min_maas_id			
print @max_maas_id         

print @min_sitescope_id			
print @max_sitescope_id         

print @min_rackwatch_id			
print @max_rackwatch_id         

print @min_id
print @max_id

--if @check_day < @utc_start_date

begin

insert into stage_monitoring.dbo.ref_audit_daily_agg
(
	day_to_process,
	timezone,
	begin_process
)
select
	@utc_start_date,'UTC',@etl_date
	
	
	
-----------------------------------------------------------------------------
--step 1 stage the agg
-----------------------------------------------------------------------------
--set @sql = '
--truncate table stage_monitoring.dbo.stg_monitoring_daily_universal_time

--insert into stage_monitoring.dbo.stg_monitoring_daily_universal_time
--(
--	uptimeDuration,
--	downtimeDurationWithSupression,
--	downtimeDurationWithoutSupression,
--	uptimePercentageWithSupression,
--	uptimePercentageWithoutSupression,
--	row_key, device_number, device_source
--)
--SELECT 
--	sum(uptimeDuration),
--	sum(downtimeDurationWithSupression),
--	sum(downtimeDurationWithoutSupression),
--	avg(uptimePercentageWithSupression),
--	avg(uptimePercentageWithoutSupression),
--	row_key,device_number, device_source
--FROM 
--	stage_three_dw.dbo.Report_Monitoring_Availability_Hourly with (nolock)
--where
--	Source_System_Name in (''sitescope'',''rackwatch'',''maas'')
--and
--	Time_Full_Date_HMS >= ''' + convert(varchar, @begin_date) + '''
--and 
--	time_full_date_hms <= ''' + convert(varchar, @end_date) + '''
--group by
--	row_key, device_number, device_source
--'

--set @sql = '
truncate table stage_monitoring.dbo.stg_monitoring_daily_universal_time
print 'Loading MaaS data'

insert into stage_monitoring.dbo.stg_monitoring_daily_universal_time
(
	sum_uptimeDuration,
	sum_downtimeDurationWithSupression,
	sum_downtimeDurationWithoutSupression,
	avg_uptimePercentageWithSupression,
	avg_uptimePercentageWithoutSupression,
	row_key, device_number, device_source,
	[Account_Name],[Account_Number],[Account_Type],[Device_Host_Name],[Device_Status],[Monitor_Type],
    [Monitor_Name],[Monitor_Silo],[Source_System_Name],[Monitor_ID],[Account_Source], [Monitor_Type_Group]
)
SELECT 
	sum(uptimeDuration),
	sum(downtimeDurationWithSupression),
	sum(downtimeDurationWithoutSupression),
	avg(uptimePercentageWithSupression),
	avg(uptimePercentageWithoutSupression),
	row_key,device_number, device_source,
	[Account_Name],[Account_Number],[Account_Type],[Device_Host_Name],[Device_Status],[Monitor_Type],
    [Monitor_Name],[Monitor_Silo],[Source_System_Name],[Monitor_ID],[Account_Source],[Monitor_Type_Group]
FROM 
	stage_three_dw.dbo.Report_Monitoring_Availability_Hourly with (nolock) 
where
    (id between @min_maas_id and @max_maas_id )
	and (Time_Full_Date_HMS  between   @begin_date	and  @end_date) 
	and Source_System_Name = 'MaaS'
	and Account_Source='Salesforce'
group by
	row_key, device_number, device_source, 
	[Account_Name],[Account_Number],[Account_Type],[Device_Host_Name],[Device_Status],[Monitor_Type],
    [Monitor_Name],[Monitor_Silo],[Source_System_Name],[Monitor_ID],[Account_Source],[Monitor_Type_Group]

print 'Loading SiteScope data'

insert into stage_monitoring.dbo.stg_monitoring_daily_universal_time
(
	sum_uptimeDuration,
	sum_downtimeDurationWithSupression,
	sum_downtimeDurationWithoutSupression,
	avg_uptimePercentageWithSupression,
	avg_uptimePercentageWithoutSupression,
	row_key, device_number, device_source,
	[Account_Name],[Account_Number],[Account_Type],[Device_Host_Name],[Device_Status],[Monitor_Type],
    [Monitor_Name],[Monitor_Silo],[Source_System_Name],[Monitor_ID],[Account_Source], [Monitor_Type_Group]
)
SELECT 
	sum(uptimeDuration),
	sum(downtimeDurationWithSupression),
	sum(downtimeDurationWithoutSupression),
	avg(uptimePercentageWithSupression),
	avg(uptimePercentageWithoutSupression),
	row_key,device_number, device_source,
	[Account_Name],[Account_Number],[Account_Type],[Device_Host_Name],[Device_Status],[Monitor_Type],
    [Monitor_Name],[Monitor_Silo],[Source_System_Name],[Monitor_ID],[Account_Source],[Monitor_Type_Group]
FROM 
	stage_three_dw.dbo.Report_Monitoring_Availability_Hourly with (nolock) 
where
    (id between @min_sitescope_id and @max_sitescope_id )
	and (Time_Full_Date_HMS  between   @begin_date	and  @end_date) 
	and Source_System_Name = 'SiteScope'
	--(Time_Full_Date_HMS  between   @begin_date	and  @end_date) 
	and Account_Source='Salesforce'
group by
	row_key, device_number, device_source, 
	[Account_Name],[Account_Number],[Account_Type],[Device_Host_Name],[Device_Status],[Monitor_Type],
    [Monitor_Name],[Monitor_Silo],[Source_System_Name],[Monitor_ID],[Account_Source],[Monitor_Type_Group]


	print 'Loading SiteScope data'

insert into stage_monitoring.dbo.stg_monitoring_daily_universal_time
(
	sum_uptimeDuration,
	sum_downtimeDurationWithSupression,
	sum_downtimeDurationWithoutSupression,
	avg_uptimePercentageWithSupression,
	avg_uptimePercentageWithoutSupression,
	row_key, device_number, device_source,
	[Account_Name],[Account_Number],[Account_Type],[Device_Host_Name],[Device_Status],[Monitor_Type],
    [Monitor_Name],[Monitor_Silo],[Source_System_Name],[Monitor_ID],[Account_Source], [Monitor_Type_Group]
)
SELECT 
	sum(uptimeDuration),
	sum(downtimeDurationWithSupression),
	sum(downtimeDurationWithoutSupression),
	avg(uptimePercentageWithSupression),
	avg(uptimePercentageWithoutSupression),
	row_key,device_number, device_source,
	[Account_Name],[Account_Number],[Account_Type],[Device_Host_Name],[Device_Status],[Monitor_Type],
    [Monitor_Name],[Monitor_Silo],[Source_System_Name],[Monitor_ID],[Account_Source],[Monitor_Type_Group]
FROM 
	stage_three_dw.dbo.Report_Monitoring_Availability_Hourly with (nolock) 
where
    (id between @min_rackwatch_id and @max_rackwatch_id )
	and (Time_Full_Date_HMS  between   @begin_date	and  @end_date) 
	and Source_System_Name = 'RackWatch'
	--(Time_Full_Date_HMS  between   @begin_date	and  @end_date) 
	and Account_Source='Salesforce'
group by
	row_key, device_number, device_source, 
	[Account_Name],[Account_Number],[Account_Type],[Device_Host_Name],[Device_Status],[Monitor_Type],
    [Monitor_Name],[Monitor_Silo],[Source_System_Name],[Monitor_ID],[Account_Source],[Monitor_Type_Group]



--return


update  a
set a.Monitor_Type=b.Monitor_type , a.Monitor_Name= b.Monitor_Name
from stage_monitoring.dbo.stg_monitoring_daily_universal_time a, stage_three_DW.dbo.dim_monitor b 
where a.Monitor_ID			=	b.monitor_id_nk	
		and a.Monitor_silo =b.Monitor_Silo 
		and a.source_system_name=(case
										when b.Source_System_Name = 'RADAR' then 'sitescope'
										 else
											b.Source_System_Name
										 end)									
				
		and b.Current_Record_Flag	=	1
--exec (@sql)

--alter index IDX_ROW_KEY  on stage_monitoring.dbo.stg_monitoring_daily_universal_time REBUILD	
--alter index IDX_Device  on stage_monitoring.dbo.stg_monitoring_daily_universal_time REBUILD	

set @run_id = (select max(id) from stage_monitoring.dbo.ref_audit_daily_agg)


update a
	set
		a.step_1_stage_agg = GETDATE()
from
	stage_monitoring.dbo.ref_audit_daily_agg a
where
	a.id = @run_id 
	

-----------------------------------------------------------------------------
--step 2 get row_keys
-----------------------------------------------------------------------------
--truncate table stage_monitoring.dbo.ref_row_key_hold_NULL

--insert into stage_monitoring.dbo.ref_row_key_hold_NULL
--(
--	row_key,
--	row_key_string
--)
--select
--	distinct 
--	row_key,
--	replace(replace(replace(row_key,']:[',','),'[',''),']','')
--from
--	stage_monitoring.dbo.stg_monitoring_daily_universal_time


--update a
--	set
--		a.step_2_get_row_keys = GETDATE()
--from
--	stage_monitoring.dbo.ref_audit_daily_agg a
--where
--	a.id = @run_id 

----------------------------------------------------
--row_key and row_key_string inserted into hold table
--process row_key_string / parse process to ref_row_key lookup table
----------------------------------------------------
--truncate table stage_monitoring.dbo.ref_row_key_NULL

--;with
--cteSplit AS
--(
--select
--	a.row_key,
--	row_number() over (partition by a.row_key order by t.N)	as row_N,
--	substring(',' + a.row_key_string, N+1, charindex(',', a.row_key_string + ',', N)-N) as SplitValue
--from
--	stage_monitoring.dbo.tally t

--	cross join stage_monitoring.dbo.ref_row_key_hold_NULL a
--WHERE 
--	t.N <= LEN(',' + a.row_key_string)
--AND SUBSTRING(',' + a.row_key_string, N, 1) = ','
--)
--insert into stage_monitoring.dbo.ref_row_key_NULL
--(
--	[row_key]
--	,[Instance_NK]
--	,[Instance_Source_System]
--	,[Monitor_NK]
--	,[Monitor_Type]
--	,[Monitor_Silo]
--	,[Monitor_Source_System]
--)
-- SELECT s.row_key,
--		MAX(CASE WHEN s.row_N = 1 THEN isnull(SplitValue,'N/A') END) AS instance_nk,
--		MAX(CASE WHEN s.row_N = 2 THEN isnull(SplitValue,'N/A') END) AS instance_source_system,
--		MAX(CASE WHEN s.row_N = 3 THEN isnull(SplitValue,'N/A') END) AS monitor_nk,
--		MAX(CASE WHEN s.row_N = 4 THEN isnull(SplitValue,'N/A') END) AS monitor_type,
--		MAX(CASE WHEN s.row_N = 5 THEN isnull(SplitValue,'N/A') END) AS monitor_silo,
--		MAX(CASE WHEN s.row_N = 6 THEN isnull(SplitValue,'N/A') END) AS monitor_source_system
--FROM 
--	cteSplit s
--GROUP BY 
--	s.row_key


update a
	set
		a.atep_3_parse_row_key = GETDATE()
from
	stage_monitoring.dbo.ref_audit_daily_agg a
where
	a.id = @run_id 
		
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
truncate table stage_monitoring.dbo.stg_report_monitoring_availability_daily_universal_time
insert into stage_monitoring.dbo.stg_report_monitoring_availability_daily_universal_time
(
	[Time_KEY]
	,[Time_Full_Date]
	,[Time_Month_Number]
	,[Time_Month_Desc]
	,[Time_Month_Abbr]
	,[Time_Year_Number]
	,[Time_Quarter_Number]
	,[Time_Full_Date_HMS]
	,[Account_Name]
	,[Account_Number]
	,[Account_Type]
	,[Device_Host_Name]
	,[Device_Number]
	,[Device_Status]
	,[Monitor_Type]
	,[Monitor_Name]
	,[Monitor_Silo]
	,[Source_System_Name]
	,[uptimeDuration]
	,[downtimeDurationWithSupression]
	,[downtimeDurationWithoutSupression]
	,[uptimePercentageWithSupression]
	,[uptimePercentageWithoutSupression]
	,[row_key]
	,[Monitor_ID]
	,[Device_Source]
	,[Account_Source]
	,[etl_date]
	,[Monitor_Type_Group]
)
select
	c.Time_KEY,
	c.Time_Full_Date,
	c.Time_Month_Number,
	c.Time_Month_Desc,
	c.Time_Month_Abbr,
	c.Time_Year_Number,
	c.Time_Quarter_Number,
	@utc_start_date,
	z.Account_Name,
	z.Account_Number,
	z.Account_Type,
	z.Device_Host_Name,
	z.Device_Number,
	z.Device_Status,
	z.monitor_type,
	z.Monitor_Name,
	z.Monitor_Silo,
	z.Source_System_Name,
	z.sum_uptimeDuration,
	z.sum_downtimeDurationWithSupression,
	z.sum_downtimeDurationWithoutSupression,
	z.avg_uptimePercentageWithSupression,
	z.avg_uptimePercentageWithoutSupression,
	z.row_key,
	z.Monitor_ID,					
	z.Device_Source,		
	z.account_source,
	@etl_Date,
	 z.Monitor_Type_Group
		

from	
	stage_monitoring.dbo.stg_monitoring_daily_universal_time z
	
	
	inner join stage_three_dw.dbo.Dim_Time c
		on c.Time_Full_Date		=	@utc_start_date

	
--insert into stage_monitoring.dbo.stg_report_monitoring_availability_daily_universal_time
--(
--	[Time_KEY]
--	,[Time_Full_Date]
--	,[Time_Month_Number]
--	,[Time_Month_Desc]
--	,[Time_Month_Abbr]
--	,[Time_Year_Number]
--	,[Time_Quarter_Number]
--	,[Time_Full_Date_HMS]
--	,[Account_Name]
--	,[Account_Number]
--	,[Account_Type]
--	,[Device_Host_Name]
--	,[Device_Number]
--	,[Device_Status]
--	,[Monitor_Type]
--	,[Monitor_Name]
--	,[Monitor_Silo]
--	,[Source_System_Name]
--	,[uptimeDuration]
--	,[downtimeDurationWithSupression]
--	,[downtimeDurationWithoutSupression]
--	,[uptimePercentageWithSupression]
--	,[uptimePercentageWithoutSupression]
--	,[row_key]
--	,[Monitor_ID]
--	,[Device_Source]
--	,[Account_Source]
--	,[etl_date]
--	,[Monitor_Type_Group]
--)
--select
--	c.Time_KEY,
--	c.Time_Full_Date,
--	c.Time_Month_Number,
--	c.Time_Month_Desc,
--	c.Time_Month_Abbr,
--	c.Time_Year_Number,
--	c.Time_Quarter_Number,
--	@utc_start_date,
--	z.Account_Name,
--	z.Account_Number,
--	z.Account_Type,
--	z.Device_Host_Name,
--	z.Device_Number,
--	z.Device_Status,
--	case
--		when x.monitor_type = 'web' then 'URL'
--		else
--			x.monitor_type
--	end				as monitor_type,
--	x.Monitor_Name,
--	x.Monitor_Silo,
--	x.Source_System_Name,
--	a.uptimeDuration,
--	a.downtimeDurationWithSupression,
--	a.downtimeDurationWithoutSupression,
--	a.uptimePercentageWithSupression,
--	a.uptimePercentageWithoutSupression,
--	a.row_key,
--	x.Monitor_ID_NK,					
--	a.Device_Source,		
--	z.account_source_system_name,
--	@etl_Date,
--	(
--	case
--		--DEFINE PING
--		when 
--				x.MONITOR_TYPE = 'Ping' 
--			OR 
--				x.MONITOR_TYPE = 'ICMP'  
--			--OR 
--			--	zzz.monitor_nk = 'PING'
--			then 'PING'
		
--		--DEFINE PORT
--		when
--		((x.Monitor_Type IN ('FTP','ColdFusion','Cold Fusion','PostgreSQL','MS SQL Server','Webport','SQLServer','HTTP',
--							'IMAP','POP3','Telnet','SMTP','Postgres','HTTPS','MySQL','DNS','SSH') 
--		AND x.source_system_name= 'rackwatch')
--		OR
--		(x.monitor_type in ('Protocol','Ping','FTPGet','ColdFusion','DNS','Protocol')
--		and x.source_system_name = 'sitescope')
--		OR
--		(x.monitor_type in ('TCP','SMTP','SMTP-BANNER','SSH','NETWORK','MYSQL','DNS','APACHE')
--		and x.source_system_name = 'maas'))
--			then 'PORT'

--		--DEFINE URL
--		when
--		((x.monitor_type in ('http','web','URL')
--		and x.source_system_name = 'sitescope')
--		OR
--		(x.monitor_type in ('URL')
--		and x.source_system_name = 'MaaS'))
--			then 'URL'

--		else
--			'other'
--	end	
--	)as Monitor_Type_Group
		

--from	
--	stage_monitoring.dbo.stg_monitoring_daily_universal_time a
	
--	inner join stage_monitoring.dbo.ref_row_key_NULL zzz
--		on a.row_key = zzz.row_key

--	inner join stage_three_dw.dbo.Dim_Time c
--		on c.Time_Full_Date		=	@utc_start_date

--	--join with dim_monitor
--	left join stage_three_dw.dbo.dim_monitor x
--		on	x.monitor_id_nk			=	zzz.monitor_nk
--		and x.monitor_silo			=	zzz.monitor_silo
--		and x.source_system_name    =	zzz.Monitor_Source_System --(case
--		--									when zzz.Monitor_Source_System = 'sitescope' then 'RADAR'
--		--								 else
--		--									zzz.Monitor_Source_System 
--		--								 end)	
--		--on a.row_key=x.monitor_id	
--		and x.Current_Record_Flag	=	1
		
		
--	left join stage_monitoring.dbo.report_account_device_daily z
--		on	a.device_number				= z.device_number
--		and a.device_source	= z.device_source_system_name




update a
	set
		a.step_4_stg_with_attributes = GETDATE()
from
	stage_monitoring.dbo.ref_audit_daily_agg a
where
	a.id = @run_id 


----------------------------------------------------------------------------------
----insert into central time daily
----------------------------------------------------------------------------------		
--insert into stage_three_dw.dbo.report_monitoring_availability_daily_universal_time
insert into stage_three_dw.dbo.report_monitoring_availability_daily
(
	--[id]
	--,
	[Time_KEY]
	,[Time_Full_Date]
	,[Time_Month_Number]
	,[Time_Month_Desc]
	,[Time_Month_Abbr]
	,[Time_Year_Number]
	,[Time_Quarter_Number]
	,[Time_Full_Date_HMS]
	,[Account_Name]
	,[Account_Number]
	,[Account_Type]
	,[Device_Host_Name]
	,[Device_Number]
	,[Device_Status]
	,[Monitor_Type]
	,[Monitor_Name]
	,[Monitor_Silo]
	,[Monitor_Type_Group]
	,[Source_System_Name]
	,[uptimeDuration]
	,[downtimeDurationWithSupression]
	,[downtimeDurationWithoutSupression]
	,[uptimePercentageWithSupression]
	,[uptimePercentageWithoutSupression]
	,[row_key]
	,[Monitor_ID]
	,[Device_Source]
	,[Account_Source]
	,[etl_date]
)
SELECT 
	[Time_KEY]
	,[Time_Full_Date]
	,[Time_Month_Number]
	,[Time_Month_Desc]
	,[Time_Month_Abbr]
	,[Time_Year_Number]
	,[Time_Quarter_Number]
	,[Time_Full_Date_HMS]
	,[Account_Name]
	,[Account_Number]
	,[Account_Type]
	,[Device_Host_Name]
	,[Device_Number]
	,[Device_Status]
	,[Monitor_Type]
	,[Monitor_Name]
	,[Monitor_Silo]
	,[Monitor_Type_Group]
	,[Source_System_Name]
	,[uptimeDuration]
	,[downtimeDurationWithSupression]
	,[downtimeDurationWithoutSupression]
	,[uptimePercentageWithSupression]
	,[uptimePercentageWithoutSupression]
	,[row_key]
	,[Monitor_ID]
	,[Device_Source]
	,[Account_Source]
	,[etl_date]
FROM 
	[Stage_Monitoring].[dbo].[stg_report_monitoring_availability_daily_universal_time]
	


update a
	set
		a.step_5_insert_to_production = GETDATE()
from
	stage_monitoring.dbo.ref_audit_daily_agg a
where
	a.id = @run_id 


----------------------------------------------------------------------------------
----calculate times
----------------------------------------------------------------------------------	

update a	
	set
		a.duration_1		=	DATEDIFF(ss,begin_process,step_1_stage_agg)
	,	a.duration_2		=	DATEDIFF(ss,step_1_stage_agg,step_2_get_row_keys )
	,	a.duration_3		=	DATEDIFF(SS,step_2_get_row_keys,atep_3_parse_row_key )
	,	a.duration_4		=	DATEDIFF(ss,atep_3_parse_row_key,step_4_stg_with_attributes )
	,	a.duration_5		=	DATEDIFF(ss,step_4_stg_with_attributes,step_5_insert_to_production )
	,	a.total_row_count	=	(select COUNT(*) from stage_monitoring.dbo.stg_report_monitoring_availability_daily_universal_time)
from
	stage_monitoring.dbo.ref_audit_daily_agg a
where
	a.id = @run_id 


--alter index IDX_ROW_KEY  on stage_monitoring.dbo.stg_monitoring_daily_universal_time  DISABLE
--alter index IDX_Device  on stage_monitoring.dbo.stg_monitoring_daily_universal_time DISABLE
end

set @utc_start_date		= (select DATEADD(day,1,@utc_start_date))
print @utc_start_date

end












GO
/****** Object:  StoredProcedure [dbo].[sp_AGG_Daily_Monitoring_UTC_old]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 7/25/2013
-------------------------------------------------------------------------------------------

Description:
--------------


Modifications:
--------------

Natasha Gajic 07/20/2015 added MaaS & Performance imporvement

-------------------------------------------------------------------------------------------
*/

CREATE procedure [dbo].[sp_AGG_Daily_Monitoring_UTC_old]

as

declare @begin_date		datetime
declare @end_date		datetime
declare @etl_date		datetime
declare @sql			varchar(1000)
declare @run_id			int
declare @check_day		datetime
declare @timezone		varchar(10)
declare @min_id			bigint
declare @max_id         bigint
declare @max_date_in_hourly datetime

--Audit variables
declare @process_begin	datetime
declare @step_1			datetime
declare @step_2			datetime
declare	@step_3			datetime
declare @step_4			datetime


--GET UTC DAY
declare @utc_start_date	datetime
declare @tz_diff		int
--set @utc_start_date		= '2015-06-18 00:00:00.000'-- hard code date to run for missing days
--set @utc_start_date		= (
--							select
--								time_full_date
--							from
--								stage_three_dw.dbo.Dim_Time
--							where
--								Time_Month_Number	= MONTH(getdate()-1)
--							and Time_Year_Number	= YEAR(getdate()-1)
--							and Time_Day_Number		= DAY(getdate()-1)
--							)
							
set @utc_start_date		= (select DATEADD(day,1,max(Time_Full_Date_HMS)) from stage_three_dw.dbo.Report_Monitoring_Availability_Daily)
print @utc_start_date
--set @utc_start_date		= '2015-10-14 00:00:00.000'-- hard code date to run for missing days
set @max_date_in_hourly = (select DATEADD(day,1,max(Time_Full_Date_HMS)) from stage_three_dw.dbo.Report_Monitoring_Availability_Hourly where source_system_name ='MaaS')
print @max_date_in_hourly
while (@utc_start_date< cast(floor(cast(@max_date_in_hourly as float)) as datetime) )
begin
--set datetimes (Central Times for hourly)
set	@begin_date			=	stage_three_dw.dbo.udf_Timezone_Conversion_WITH_DST(@utc_start_date,'CT')
set @end_date			=	DATEADD(ss,86399,@begin_date)
set @etl_date			=	GETDATE()

print @begin_date	
print @end_date

--set check day
set @check_day			= (select MAX(day_to_process) from stage_monitoring.dbo.ref_audit_daily_agg where timezone = 'UTC')
set @timezone			= 'UTC'
set @min_id             = 	(select min(id) from stage_three_dw.dbo.Report_Monitoring_Availability_Hourly with   (FORCESEEK, INDEX (IDX_DATE_HMS)) where Time_Full_Date_HMS = @begin_date)
set @max_id             =	(select min(id)-1 from stage_three_dw.dbo.Report_Monitoring_Availability_Hourly with   (FORCESEEK, INDEX (IDX_DATE_HMS)) where Time_Full_Date_HMS = @end_date)

print @min_id
print @max_id

--if @check_day < @utc_start_date

begin

insert into stage_monitoring.dbo.ref_audit_daily_agg
(
	day_to_process,
	timezone,
	begin_process
)
select
	@utc_start_date,'UTC',@etl_date
	
	
	
-----------------------------------------------------------------------------
--step 1 stage the agg
-----------------------------------------------------------------------------
--set @sql = '
--truncate table stage_monitoring.dbo.stg_monitoring_daily_universal_time

--insert into stage_monitoring.dbo.stg_monitoring_daily_universal_time
--(
--	uptimeDuration,
--	downtimeDurationWithSupression,
--	downtimeDurationWithoutSupression,
--	uptimePercentageWithSupression,
--	uptimePercentageWithoutSupression,
--	row_key, device_number, device_source
--)
--SELECT 
--	sum(uptimeDuration),
--	sum(downtimeDurationWithSupression),
--	sum(downtimeDurationWithoutSupression),
--	avg(uptimePercentageWithSupression),
--	avg(uptimePercentageWithoutSupression),
--	row_key,device_number, device_source
--FROM 
--	stage_three_dw.dbo.Report_Monitoring_Availability_Hourly with (nolock)
--where
--	Source_System_Name in (''sitescope'',''rackwatch'',''maas'')
--and
--	Time_Full_Date_HMS >= ''' + convert(varchar, @begin_date) + '''
--and 
--	time_full_date_hms <= ''' + convert(varchar, @end_date) + '''
--group by
--	row_key, device_number, device_source
--'

--set @sql = '
truncate table stage_monitoring.dbo.stg_monitoring_daily_universal_time

insert into stage_monitoring.dbo.stg_monitoring_daily_universal_time
(
	sum_uptimeDuration,
	sum_downtimeDurationWithSupression,
	sum_downtimeDurationWithoutSupression,
	avg_uptimePercentageWithSupression,
	avg_uptimePercentageWithoutSupression,
	row_key, device_number, device_source,
	[Account_Name],[Account_Number],[Account_Type],[Device_Host_Name],[Device_Status],[Monitor_Type],
    [Monitor_Name],[Monitor_Silo],[Source_System_Name],[Monitor_ID],[Account_Source], [Monitor_Type_Group]
)
SELECT 
	sum(uptimeDuration),
	sum(downtimeDurationWithSupression),
	sum(downtimeDurationWithoutSupression),
	avg(uptimePercentageWithSupression),
	avg(uptimePercentageWithoutSupression),
	row_key,device_number, device_source,
	[Account_Name],[Account_Number],[Account_Type],[Device_Host_Name],[Device_Status],[Monitor_Type],
    [Monitor_Name],[Monitor_Silo],[Source_System_Name],[Monitor_ID],[Account_Source],[Monitor_Type_Group]
FROM 
	stage_three_dw.dbo.Report_Monitoring_Availability_Hourly with (nolock) 
where
    --id between @min_id and @max_id 
	(Time_Full_Date_HMS  between   @begin_date	and  @end_date) and Account_Source='Salesforce'
group by
	row_key, device_number, device_source, 
	[Account_Name],[Account_Number],[Account_Type],[Device_Host_Name],[Device_Status],[Monitor_Type],
    [Monitor_Name],[Monitor_Silo],[Source_System_Name],[Monitor_ID],[Account_Source],[Monitor_Type_Group]

--return
update  a
set a.Monitor_Type=b.Monitor_type , a.Monitor_Name= b.Monitor_Name
from stage_monitoring.dbo.stg_monitoring_daily_universal_time a, stage_three_DW.dbo.dim_monitor b 
where a.Monitor_ID			=	b.monitor_id_nk	
		and a.Monitor_silo =b.Monitor_Silo 
		and a.source_system_name=(case
										when b.Source_System_Name = 'RADAR' then 'sitescope'
										 else
											b.Source_System_Name
										 end)									
				
		and b.Current_Record_Flag	=	1
--exec (@sql)

--alter index IDX_ROW_KEY  on stage_monitoring.dbo.stg_monitoring_daily_universal_time REBUILD	
--alter index IDX_Device  on stage_monitoring.dbo.stg_monitoring_daily_universal_time REBUILD	

set @run_id = (select max(id) from stage_monitoring.dbo.ref_audit_daily_agg)


update a
	set
		a.step_1_stage_agg = GETDATE()
from
	stage_monitoring.dbo.ref_audit_daily_agg a
where
	a.id = @run_id 
	

-----------------------------------------------------------------------------
--step 2 get row_keys
-----------------------------------------------------------------------------
--truncate table stage_monitoring.dbo.ref_row_key_hold_NULL

--insert into stage_monitoring.dbo.ref_row_key_hold_NULL
--(
--	row_key,
--	row_key_string
--)
--select
--	distinct 
--	row_key,
--	replace(replace(replace(row_key,']:[',','),'[',''),']','')
--from
--	stage_monitoring.dbo.stg_monitoring_daily_universal_time


--update a
--	set
--		a.step_2_get_row_keys = GETDATE()
--from
--	stage_monitoring.dbo.ref_audit_daily_agg a
--where
--	a.id = @run_id 

----------------------------------------------------
--row_key and row_key_string inserted into hold table
--process row_key_string / parse process to ref_row_key lookup table
----------------------------------------------------
--truncate table stage_monitoring.dbo.ref_row_key_NULL

--;with
--cteSplit AS
--(
--select
--	a.row_key,
--	row_number() over (partition by a.row_key order by t.N)	as row_N,
--	substring(',' + a.row_key_string, N+1, charindex(',', a.row_key_string + ',', N)-N) as SplitValue
--from
--	stage_monitoring.dbo.tally t

--	cross join stage_monitoring.dbo.ref_row_key_hold_NULL a
--WHERE 
--	t.N <= LEN(',' + a.row_key_string)
--AND SUBSTRING(',' + a.row_key_string, N, 1) = ','
--)
--insert into stage_monitoring.dbo.ref_row_key_NULL
--(
--	[row_key]
--	,[Instance_NK]
--	,[Instance_Source_System]
--	,[Monitor_NK]
--	,[Monitor_Type]
--	,[Monitor_Silo]
--	,[Monitor_Source_System]
--)
-- SELECT s.row_key,
--		MAX(CASE WHEN s.row_N = 1 THEN isnull(SplitValue,'N/A') END) AS instance_nk,
--		MAX(CASE WHEN s.row_N = 2 THEN isnull(SplitValue,'N/A') END) AS instance_source_system,
--		MAX(CASE WHEN s.row_N = 3 THEN isnull(SplitValue,'N/A') END) AS monitor_nk,
--		MAX(CASE WHEN s.row_N = 4 THEN isnull(SplitValue,'N/A') END) AS monitor_type,
--		MAX(CASE WHEN s.row_N = 5 THEN isnull(SplitValue,'N/A') END) AS monitor_silo,
--		MAX(CASE WHEN s.row_N = 6 THEN isnull(SplitValue,'N/A') END) AS monitor_source_system
--FROM 
--	cteSplit s
--GROUP BY 
--	s.row_key


update a
	set
		a.atep_3_parse_row_key = GETDATE()
from
	stage_monitoring.dbo.ref_audit_daily_agg a
where
	a.id = @run_id 
		
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
truncate table stage_monitoring.dbo.stg_report_monitoring_availability_daily_universal_time
insert into stage_monitoring.dbo.stg_report_monitoring_availability_daily_universal_time
(
	[Time_KEY]
	,[Time_Full_Date]
	,[Time_Month_Number]
	,[Time_Month_Desc]
	,[Time_Month_Abbr]
	,[Time_Year_Number]
	,[Time_Quarter_Number]
	,[Time_Full_Date_HMS]
	,[Account_Name]
	,[Account_Number]
	,[Account_Type]
	,[Device_Host_Name]
	,[Device_Number]
	,[Device_Status]
	,[Monitor_Type]
	,[Monitor_Name]
	,[Monitor_Silo]
	,[Source_System_Name]
	,[uptimeDuration]
	,[downtimeDurationWithSupression]
	,[downtimeDurationWithoutSupression]
	,[uptimePercentageWithSupression]
	,[uptimePercentageWithoutSupression]
	,[row_key]
	,[Monitor_ID]
	,[Device_Source]
	,[Account_Source]
	,[etl_date]
	,[Monitor_Type_Group]
)
select
	c.Time_KEY,
	c.Time_Full_Date,
	c.Time_Month_Number,
	c.Time_Month_Desc,
	c.Time_Month_Abbr,
	c.Time_Year_Number,
	c.Time_Quarter_Number,
	@utc_start_date,
	z.Account_Name,
	z.Account_Number,
	z.Account_Type,
	z.Device_Host_Name,
	z.Device_Number,
	z.Device_Status,
	z.monitor_type,
	z.Monitor_Name,
	z.Monitor_Silo,
	z.Source_System_Name,
	z.sum_uptimeDuration,
	z.sum_downtimeDurationWithSupression,
	z.sum_downtimeDurationWithoutSupression,
	z.avg_uptimePercentageWithSupression,
	z.avg_uptimePercentageWithoutSupression,
	z.row_key,
	z.Monitor_ID,					
	z.Device_Source,		
	z.account_source,
	@etl_Date,
	 z.Monitor_Type_Group
		

from	
	stage_monitoring.dbo.stg_monitoring_daily_universal_time z
	
	
	inner join stage_three_dw.dbo.Dim_Time c
		on c.Time_Full_Date		=	@utc_start_date

	
--insert into stage_monitoring.dbo.stg_report_monitoring_availability_daily_universal_time
--(
--	[Time_KEY]
--	,[Time_Full_Date]
--	,[Time_Month_Number]
--	,[Time_Month_Desc]
--	,[Time_Month_Abbr]
--	,[Time_Year_Number]
--	,[Time_Quarter_Number]
--	,[Time_Full_Date_HMS]
--	,[Account_Name]
--	,[Account_Number]
--	,[Account_Type]
--	,[Device_Host_Name]
--	,[Device_Number]
--	,[Device_Status]
--	,[Monitor_Type]
--	,[Monitor_Name]
--	,[Monitor_Silo]
--	,[Source_System_Name]
--	,[uptimeDuration]
--	,[downtimeDurationWithSupression]
--	,[downtimeDurationWithoutSupression]
--	,[uptimePercentageWithSupression]
--	,[uptimePercentageWithoutSupression]
--	,[row_key]
--	,[Monitor_ID]
--	,[Device_Source]
--	,[Account_Source]
--	,[etl_date]
--	,[Monitor_Type_Group]
--)
--select
--	c.Time_KEY,
--	c.Time_Full_Date,
--	c.Time_Month_Number,
--	c.Time_Month_Desc,
--	c.Time_Month_Abbr,
--	c.Time_Year_Number,
--	c.Time_Quarter_Number,
--	@utc_start_date,
--	z.Account_Name,
--	z.Account_Number,
--	z.Account_Type,
--	z.Device_Host_Name,
--	z.Device_Number,
--	z.Device_Status,
--	case
--		when x.monitor_type = 'web' then 'URL'
--		else
--			x.monitor_type
--	end				as monitor_type,
--	x.Monitor_Name,
--	x.Monitor_Silo,
--	x.Source_System_Name,
--	a.uptimeDuration,
--	a.downtimeDurationWithSupression,
--	a.downtimeDurationWithoutSupression,
--	a.uptimePercentageWithSupression,
--	a.uptimePercentageWithoutSupression,
--	a.row_key,
--	x.Monitor_ID_NK,					
--	a.Device_Source,		
--	z.account_source_system_name,
--	@etl_Date,
--	(
--	case
--		--DEFINE PING
--		when 
--				x.MONITOR_TYPE = 'Ping' 
--			OR 
--				x.MONITOR_TYPE = 'ICMP'  
--			--OR 
--			--	zzz.monitor_nk = 'PING'
--			then 'PING'
		
--		--DEFINE PORT
--		when
--		((x.Monitor_Type IN ('FTP','ColdFusion','Cold Fusion','PostgreSQL','MS SQL Server','Webport','SQLServer','HTTP',
--							'IMAP','POP3','Telnet','SMTP','Postgres','HTTPS','MySQL','DNS','SSH') 
--		AND x.source_system_name= 'rackwatch')
--		OR
--		(x.monitor_type in ('Protocol','Ping','FTPGet','ColdFusion','DNS','Protocol')
--		and x.source_system_name = 'sitescope')
--		OR
--		(x.monitor_type in ('TCP','SMTP','SMTP-BANNER','SSH','NETWORK','MYSQL','DNS','APACHE')
--		and x.source_system_name = 'maas'))
--			then 'PORT'

--		--DEFINE URL
--		when
--		((x.monitor_type in ('http','web','URL')
--		and x.source_system_name = 'sitescope')
--		OR
--		(x.monitor_type in ('URL')
--		and x.source_system_name = 'MaaS'))
--			then 'URL'

--		else
--			'other'
--	end	
--	)as Monitor_Type_Group
		

--from	
--	stage_monitoring.dbo.stg_monitoring_daily_universal_time a
	
--	inner join stage_monitoring.dbo.ref_row_key_NULL zzz
--		on a.row_key = zzz.row_key

--	inner join stage_three_dw.dbo.Dim_Time c
--		on c.Time_Full_Date		=	@utc_start_date

--	--join with dim_monitor
--	left join stage_three_dw.dbo.dim_monitor x
--		on	x.monitor_id_nk			=	zzz.monitor_nk
--		and x.monitor_silo			=	zzz.monitor_silo
--		and x.source_system_name    =	zzz.Monitor_Source_System --(case
--		--									when zzz.Monitor_Source_System = 'sitescope' then 'RADAR'
--		--								 else
--		--									zzz.Monitor_Source_System 
--		--								 end)	
--		--on a.row_key=x.monitor_id	
--		and x.Current_Record_Flag	=	1
		
		
--	left join stage_monitoring.dbo.report_account_device_daily z
--		on	a.device_number				= z.device_number
--		and a.device_source	= z.device_source_system_name




update a
	set
		a.step_4_stg_with_attributes = GETDATE()
from
	stage_monitoring.dbo.ref_audit_daily_agg a
where
	a.id = @run_id 


----------------------------------------------------------------------------------
----insert into central time daily
----------------------------------------------------------------------------------		
--insert into stage_three_dw.dbo.report_monitoring_availability_daily_universal_time
insert into stage_three_dw.dbo.report_monitoring_availability_daily
(
	--[id]
	--,
	[Time_KEY]
	,[Time_Full_Date]
	,[Time_Month_Number]
	,[Time_Month_Desc]
	,[Time_Month_Abbr]
	,[Time_Year_Number]
	,[Time_Quarter_Number]
	,[Time_Full_Date_HMS]
	,[Account_Name]
	,[Account_Number]
	,[Account_Type]
	,[Device_Host_Name]
	,[Device_Number]
	,[Device_Status]
	,[Monitor_Type]
	,[Monitor_Name]
	,[Monitor_Silo]
	,[Monitor_Type_Group]
	,[Source_System_Name]
	,[uptimeDuration]
	,[downtimeDurationWithSupression]
	,[downtimeDurationWithoutSupression]
	,[uptimePercentageWithSupression]
	,[uptimePercentageWithoutSupression]
	,[row_key]
	,[Monitor_ID]
	,[Device_Source]
	,[Account_Source]
	,[etl_date]
)
SELECT 
	[Time_KEY]
	,[Time_Full_Date]
	,[Time_Month_Number]
	,[Time_Month_Desc]
	,[Time_Month_Abbr]
	,[Time_Year_Number]
	,[Time_Quarter_Number]
	,[Time_Full_Date_HMS]
	,[Account_Name]
	,[Account_Number]
	,[Account_Type]
	,[Device_Host_Name]
	,[Device_Number]
	,[Device_Status]
	,[Monitor_Type]
	,[Monitor_Name]
	,[Monitor_Silo]
	,[Monitor_Type_Group]
	,[Source_System_Name]
	,[uptimeDuration]
	,[downtimeDurationWithSupression]
	,[downtimeDurationWithoutSupression]
	,[uptimePercentageWithSupression]
	,[uptimePercentageWithoutSupression]
	,[row_key]
	,[Monitor_ID]
	,[Device_Source]
	,[Account_Source]
	,[etl_date]
FROM 
	[Stage_Monitoring].[dbo].[stg_report_monitoring_availability_daily_universal_time]
	


update a
	set
		a.step_5_insert_to_production = GETDATE()
from
	stage_monitoring.dbo.ref_audit_daily_agg a
where
	a.id = @run_id 


----------------------------------------------------------------------------------
----calculate times
----------------------------------------------------------------------------------	

update a	
	set
		a.duration_1		=	DATEDIFF(ss,begin_process,step_1_stage_agg)
	,	a.duration_2		=	DATEDIFF(ss,step_1_stage_agg,step_2_get_row_keys )
	,	a.duration_3		=	DATEDIFF(SS,step_2_get_row_keys,atep_3_parse_row_key )
	,	a.duration_4		=	DATEDIFF(ss,atep_3_parse_row_key,step_4_stg_with_attributes )
	,	a.duration_5		=	DATEDIFF(ss,step_4_stg_with_attributes,step_5_insert_to_production )
	,	a.total_row_count	=	(select COUNT(*) from stage_monitoring.dbo.stg_report_monitoring_availability_daily_universal_time)
from
	stage_monitoring.dbo.ref_audit_daily_agg a
where
	a.id = @run_id 


--alter index IDX_ROW_KEY  on stage_monitoring.dbo.stg_monitoring_daily_universal_time  DISABLE
--alter index IDX_Device  on stage_monitoring.dbo.stg_monitoring_daily_universal_time DISABLE
end

set @utc_start_date		= (select DATEADD(day,1,@utc_start_date))
print @utc_start_date

end









GO
/****** Object:  StoredProcedure [dbo].[sp_AGG_monthly_Monitoring_UTC]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 7/25/2013
-------------------------------------------------------------------------------------------

Description:
--------------


Modifications:
--------------

-------------------------------------------------------------------------------------------
*/

CREATE procedure [dbo].[sp_AGG_monthly_Monitoring_UTC]

as

declare @begin_date		datetime
declare @end_date		datetime
declare @etl_date		datetime
declare @sql			varchar(1000)
declare @run_id			int

--Audit variables
declare @process_begin	datetime
declare @step_1			datetime
declare @step_2			datetime
declare	@step_3			datetime
declare @step_4			datetime


--GET UTC DAY
declare @utc_start_date	datetime
declare @utc_end_date	datetime

declare @start_id bigint
declare @end_id bigint

----set @utc_start_date = '2014-08-01 00:00:00.000'
----set @utc_end_date	= '2014-08-31 00:00:00.000'
/* Updated the code from getdate()-1 to getdate()-2 */
if day(GETDATE()) = 6
begin
set @utc_end_date		= (
							select
								time_full_date
							from
								stage_three_dw.dbo.Dim_Time
							where
								Time_Month_Number	= MONTH(getdate()-6)
							and Time_Year_Number	= YEAR(getdate()-6)
							and Time_Day_Number		= DAY(getdate()-6)
							)
							
set @utc_start_date		= (
							select
								time_full_date
							from
								stage_three_dw.dbo.Dim_Time
							where
								Time_Month_Number	= MONTH(@utc_end_date)
							and Time_Year_Number	= YEAR(@utc_end_date)
							and Time_Day_Number		= 1
							)
set @start_id = (select min(id) from Stage_three_dw.[dbo].[Report_Monitoring_Availability_Daily] where [Time_Full_Date_HMS]= @utc_start_date)
set @end_id = (select max(id) from Stage_three_dw.[dbo].[Report_Monitoring_Availability_Daily] where [Time_Full_Date_HMS]= @utc_end_date)
print @start_id
print @end_id
print @utc_start_date
print @utc_end_date
--return
end
--set @utc_start_date = '2015-06-01 00:00:00.000'
--set @utc_end_date	= '2015-06-30 00:00:00.000'

set @etl_date			=	GETDATE()

insert into stage_monitoring.dbo.ref_audit_monthly_agg
(
	day_to_process,
	timezone,
	begin_process
)
select
	@utc_start_date,'UTC',@etl_date
	
	
	
-----------------------------------------------------------------------------
--step 1 stage the agg
-----------------------------------------------------------------------------
--set @sql = '
--truncate table stage_monitoring.dbo.stg_monitoring_monthly_universal_time

--insert into stage_monitoring.dbo.stg_monitoring_monthly_universal_time
--(
--	uptimeDuration,
--	downtimeDurationWithSupression,
--	downtimeDurationWithoutSupression,
--	uptimePercentageWithSupression,
--	uptimePercentageWithoutSupression,
--	row_key,device_number, device_source
--)
--SELECT 
--	sum(uptimeDuration),
--	sum(downtimeDurationWithSupression),
--	sum(downtimeDurationWithoutSupression),
--	avg(uptimePercentageWithSupression),
--	avg(uptimePercentageWithoutSupression),
--	row_key,device_number, device_source
--FROM 
--	stage_three_dw.dbo.Report_Monitoring_Availability_daily with (nolock)
--where
--	Source_System_Name in (''sitescope'',''rackwatch'',''maas'')
--and
--	Time_Full_Date_HMS >= ''' + convert(varchar, @utc_start_date) + '''
--and 
--	time_full_date_hms <= ''' + convert(varchar, @utc_end_date) + '''
--group by
--	row_key,device_number, device_source
--'
--exec (@sql)
--alter index IDX_ROW_KEY  on stage_monitoring.dbo.stg_monitoring_monthly_universal_time REBUILD	
--alter index IDX_Device  on stage_monitoring.dbo.stg_monitoring_monthly_universal_time REBUILD

--set @run_id = (select max(id) from stage_monitoring.dbo.ref_audit_monthly_agg)


update a
	set
		a.step_1_stage_agg = GETDATE()
from
	stage_monitoring.dbo.ref_audit_monthly_agg a
where
	a.id = @run_id 
	

-----------------------------------------------------------------------------
--step 2 get row_keys
-----------------------------------------------------------------------------
--truncate table stage_monitoring.dbo.ref_row_key_hold_NULL

--insert into stage_monitoring.dbo.ref_row_key_hold_NULL
--(
--	row_key,
--	row_key_string
--)
--select
--	distinct 
--	row_key,
--	replace(replace(replace(row_key,']:[',','),'[',''),']','')
--from
--	stage_monitoring.dbo.stg_monitoring_monthly_universal_time


update a
	set
		a.step_2_get_row_keys = GETDATE()
from
	stage_monitoring.dbo.ref_audit_monthly_agg a
where
	a.id = @run_id 

----------------------------------------------------
--row_key and row_key_string inserted into hold table
--process row_key_string / parse process to ref_row_key lookup table
----------------------------------------------------
--truncate table stage_monitoring.dbo.ref_row_key_NULL

--;with
--cteSplit AS
--(
--select
--	a.row_key,
--	row_number() over (partition by a.row_key order by t.N)	as row_N,
--	substring(',' + a.row_key_string, N+1, charindex(',', a.row_key_string + ',', N)-N) as SplitValue
--from
--	stage_monitoring.dbo.tally t

--	cross join stage_monitoring.dbo.ref_row_key_hold_NULL a
--WHERE 
--	t.N <= LEN(',' + a.row_key_string)
--AND SUBSTRING(',' + a.row_key_string, N, 1) = ','
--)
--insert into stage_monitoring.dbo.ref_row_key_NULL
--(
--	[row_key]
--	,[Instance_NK]
--	,[Instance_Source_System]
--	,[Monitor_NK]
--	,[Monitor_Type]
--	,[Monitor_Silo]
--	,[Monitor_Source_System]
--)
-- SELECT s.row_key,
--		MAX(CASE WHEN s.row_N = 1 THEN isnull(SplitValue,'N/A') END) AS instance_nk,
--		MAX(CASE WHEN s.row_N = 2 THEN isnull(SplitValue,'N/A') END) AS instance_source_system,
--		MAX(CASE WHEN s.row_N = 3 THEN isnull(SplitValue,'N/A') END) AS monitor_nk,
--		MAX(CASE WHEN s.row_N = 4 THEN isnull(SplitValue,'N/A') END) AS monitor_type,
--		MAX(CASE WHEN s.row_N = 5 THEN isnull(SplitValue,'N/A') END) AS monitor_silo,
--		MAX(CASE WHEN s.row_N = 6 THEN isnull(SplitValue,'N/A') END) AS monitor_source_system
--FROM 
--	cteSplit s
--GROUP BY 
--	s.row_key


update a
	set
		a.atep_3_parse_row_key = GETDATE()
from
	stage_monitoring.dbo.ref_audit_monthly_agg a
where
	a.id = @run_id 
		
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
truncate table stage_monitoring.dbo.stg_monitoring_monthly_universal_time

insert into stage_monitoring.dbo.stg_monitoring_monthly_universal_time
(
	sum_uptimeDuration,
	sum_downtimeDurationWithSupression,
	sum_downtimeDurationWithoutSupression,
	avg_uptimePercentageWithSupression,
	avg_uptimePercentageWithoutSupression,
	row_key, device_number, device_source,
	[Account_Name],[Account_Number],[Account_Type],[Device_Host_Name],[Device_Status],[Monitor_Type],
    [Monitor_Name],[Monitor_Silo],[Source_System_Name],[Monitor_ID],[Account_Source], [Monitor_Type_Group]
)
SELECT 
	sum(uptimeDuration),
	sum(downtimeDurationWithSupression),
	sum(downtimeDurationWithoutSupression),
	avg(uptimePercentageWithSupression),
	avg(uptimePercentageWithoutSupression),
	row_key,device_number, device_source,
	[Account_Name],[Account_Number],[Account_Type],[Device_Host_Name],[Device_Status],[Monitor_Type],
    [Monitor_Name],[Monitor_Silo],[Source_System_Name],[Monitor_ID],[Account_Source],[Monitor_Type_Group]
FROM 
	stage_three_dw.dbo.Report_Monitoring_Availability_Daily with (nolock) 
where
    id between @start_id and @end_id 
	--(Time_Full_Date_HMS  between   @begin_date	and  @end_date) and Account_Source='Salesforce'
group by
	row_key, device_number, device_source, 
	[Account_Name],[Account_Number],[Account_Type],[Device_Host_Name],[Device_Status],[Monitor_Type],
    [Monitor_Name],[Monitor_Silo],[Source_System_Name],[Monitor_ID],[Account_Source],[Monitor_Type_Group]

	--return
truncate table stage_monitoring.dbo.stg_report_monitoring_availability_monthly_universal_time
insert into stage_monitoring.dbo.stg_report_monitoring_availability_monthly_universal_time
(
	[Time_KEY]
	,[Time_Full_Date]
	,[Time_Month_Number]
	,[Time_Month_Desc]
	,[Time_Month_Abbr]
	,[Time_Year_Number]
	,[Time_Quarter_Number]
	,[Time_Full_Date_HMS]
	,[Account_Name]
	,[Account_Number]
	,[Account_Type]
	,[Device_Host_Name]
	,[Device_Number]
	,[Device_Status]
	,[Monitor_Type]
	,[Monitor_Name]
	,[Monitor_Silo]
	,[Source_System_Name]
	,[uptimeDuration]
	,[downtimeDurationWithSupression]
	,[downtimeDurationWithoutSupression]
	,[uptimePercentageWithSupression]
	,[uptimePercentageWithoutSupression]
	,[row_key]
	,[Monitor_ID]
	,[Device_Source]
	,[Account_Source]
	,[etl_date]
	,[Monitor_Type_Group]
)
select
	c.Time_KEY,
	c.Time_Full_Date,
	c.Time_Month_Number,
	c.Time_Month_Desc,
	c.Time_Month_Abbr,
	c.Time_Year_Number,
	c.Time_Quarter_Number,
	@utc_start_date,
	z.Account_Name,
	z.Account_Number,
	z.Account_Type,
	z.Device_Host_Name,
	z.Device_Number,
	z.Device_Status,
	z.monitor_type,
	z.Monitor_Name,
	z.Monitor_Silo,
	z.Source_System_Name,
	z.sum_uptimeDuration,
	z.sum_downtimeDurationWithSupression,
	z.sum_downtimeDurationWithoutSupression,
	z.avg_uptimePercentageWithSupression,
	z.avg_uptimePercentageWithoutSupression,
	z.row_key,
	z.Monitor_ID,					
	z.Device_Source,		
	z.account_source,
	@etl_Date,
	 z.Monitor_Type_Group
		

from	
	stage_monitoring.dbo.stg_monitoring_monthly_universal_time z
	
	
	inner join stage_three_dw.dbo.Dim_Time c
		on c.Time_Full_Date		=	@utc_start_date

	--	return


--truncate table stage_monitoring.dbo.stg_report_monitoring_availability_monthly_universal_time

--insert into stage_monitoring.dbo.stg_report_monitoring_availability_monthly_universal_time
--(
--	[Time_KEY]
--	,[Time_Full_Date]
--	,[Time_Month_Number]
--	,[Time_Month_Desc]
--	,[Time_Month_Abbr]
--	,[Time_Year_Number]
--	,[Time_Quarter_Number]
--	,[Time_Full_Date_HMS]
--	,[Account_Name]
--	,[Account_Number]
--	,[Account_Type]
--	,[Device_Host_Name]
--	,[Device_Number]
--	,[Device_Status]
--	,[Monitor_Type]
--	,[Monitor_Name]
--	,[Monitor_Silo]
--	,[Source_System_Name]
--	,[uptimeDuration]
--	,[downtimeDurationWithSupression]
--	,[downtimeDurationWithoutSupression]
--	,[uptimePercentageWithSupression]
--	,[uptimePercentageWithoutSupression]
--	,[row_key]
--	,[Monitor_ID]
--	,[Device_Source]
--	,[Account_Source]
--	,[etl_date]
--	,[Monitor_Type_Group]
--)
--select
--	c.Time_KEY,
--	c.Time_Full_Date,
--	c.Time_Month_Number,
--	c.Time_Month_Desc,
--	c.Time_Month_Abbr,
--	c.Time_Year_Number,
--	c.Time_Quarter_Number,
--	@utc_start_date,
--	z.Account_Name,
--	z.Account_Number,
--	z.Account_Type,
--	z.Device_Host_Name,
--	z.Device_Number,
--	z.Device_Status,
--	case
--		when x.monitor_type = 'web' then 'URL'
--		else
--			x.monitor_type
--	end				as monitor_type,
--	x.Monitor_Name,
--	x.Monitor_Silo,
--	x.Source_System_Name,
--	a.uptimeDuration,
--	a.downtimeDurationWithSupression,
--	a.downtimeDurationWithoutSupression,
--	a.uptimePercentageWithSupression,
--	a.uptimePercentageWithoutSupression,
--	a.row_key,
--	x.Monitor_ID_NK,					
--	a.Device_Source,		
--	z.account_source_system_name,
--	@etl_Date,
--	(
--	case
--		--DEFINE PING
--		when 
--				x.MONITOR_TYPE = 'Ping' 
--			OR 
--				x.MONITOR_TYPE = 'ICMP'  
--			--OR 
--			--	zzz.Monitor_NK = 'PING'
--			then 'PING'
		
--		--DEFINE PORT
--		when
--		((x.Monitor_Type IN ('FTP','ColdFusion','Cold Fusion','PostgreSQL','MS SQL Server','Webport','SQLServer','HTTP',
--							'IMAP','POP3','Telnet','SMTP','Postgres','HTTPS','MySQL','DNS','SSH') 
--		AND x.source_system_name = 'rackwatch')
--		OR
--		(x.monitor_type in ('Protocol','Ping','FTPGet','ColdFusion','DNS','Protocol')
--		and x.source_system_name = 'sitescope')
--		OR
--		(x.monitor_type in ('TCP','SMTP','SMTP-BANNER','SSH','NETWORK','MYSQL','DNS','APACHE')
--		and x.source_system_name = 'maas'))
--			then 'PORT'

--		--DEFINE URL
--		when
--		((x.monitor_type in ('http','web','URL')
--		and x.source_system_name= 'sitescope')
--		OR
--		(x.monitor_type in ('URL')
--		and x.source_system_name = 'MaaS'))
--			then 'URL'

--		else
--			'other'
--	end	
--	)as Monitor_Type_Group
		

--from	
--	stage_monitoring.dbo.stg_monitoring_monthly_universal_time a
	
--	--inner join stage_monitoring.dbo.ref_row_key_NULL zzz
--	--	on a.row_key = zzz.row_key

--	inner join stage_three_dw.dbo.Dim_Time c
--		on c.Time_Full_Date		=	@utc_start_date

--	--join with dim_monitor
--	left join stage_three_dw.dbo.dim_monitor x
--		--on	x.monitor_id_nk			=	zzz.monitor_nk
--		--and x.monitor_silo			=	zzz.monitor_silo
--		--and x.source_system_name    =	(case
--		--									when zzz.Monitor_Source_System = 'sitescope' then 'RADAR'
--		--								 else
--		--									zzz.Monitor_Source_System 
--		--								 end)		
--		on a.row_key=x.monitor_id
--		and x.Current_Record_Flag	=	1
		
		
--	left join stage_monitoring.dbo.report_account_device_daily z
--		on	a.device_number				= z.device_number
--		and a.device_source	= z.device_source_system_name




update a
	set
		a.step_4_stg_with_attributes = GETDATE()
from
	stage_monitoring.dbo.ref_audit_monthly_agg a
where
	a.id = @run_id 


----------------------------------------------------------------------------------
----insert into monthly universal table
----------------------------------------------------------------------------------		
--insert into stage_three_dw.dbo.report_monitoring_availability_monthly_universal_time
insert into stage_three_dw.dbo.report_monitoring_availability_monthly
(
	--[id]
	--,
	[Time_KEY]
	,[Time_Full_Date]
	,[Time_Month_Number]
	,[Time_Month_Desc]
	,[Time_Month_Abbr]
	,[Time_Year_Number]
	,[Time_Quarter_Number]
	--,[Time_Full_Date_HMS]
	,[Account_Name]
	,[Account_Number]
	,[Account_Type]
	,[Device_Host_Name]
	,[Device_Number]
	,[Device_Status]
	,[Monitor_Type]
	,[Monitor_Name]
	,[Monitor_Silo]
	,[Source_System_Name]
	,[uptimeDuration]
	,[downtimeDurationWithSupression]
	,[downtimeDurationWithoutSupression]
	,[uptimePercentageWithSupression]
	,[uptimePercentageWithoutSupression]
	,[row_key]
	,[Monitor_ID]
	,[Device_Source]
	,[Account_Source]
	,[etl_date]
	,[Monitor_Type_Group]
)
SELECT 
	[Time_KEY]
	,[Time_Full_Date]
	,[Time_Month_Number]
	,[Time_Month_Desc]
	,[Time_Month_Abbr]
	,[Time_Year_Number]
	,[Time_Quarter_Number]
	--,[Time_Full_Date_HMS]
	,[Account_Name]
	,[Account_Number]
	,[Account_Type]
	,[Device_Host_Name]
	,[Device_Number]
	,[Device_Status]
	,[Monitor_Type]
	,[Monitor_Name]
	,[Monitor_Silo]
	,[Source_System_Name]
	,[uptimeDuration]
	,[downtimeDurationWithSupression]
	,[downtimeDurationWithoutSupression]
	,[uptimePercentageWithSupression]
	,[uptimePercentageWithoutSupression]
	,[row_key]
	,[Monitor_ID]
	,[Device_Source]
	,[Account_Source]
	,[etl_date]
	,[Monitor_Type_Group]
FROM 
	[Stage_Monitoring].[dbo].[stg_report_monitoring_availability_monthly_universal_time]

	


update a
	set
		a.step_5_insert_to_production = GETDATE()
from
	stage_monitoring.dbo.ref_audit_monthly_agg a
where
	a.id = @run_id 


----------------------------------------------------------------------------------
----calculate times
----------------------------------------------------------------------------------	

update a	
	set
		a.duration_1	=	DATEDIFF(ss,begin_process,step_1_stage_agg)
	,	a.duration_2	=	DATEDIFF(ss,step_1_stage_agg,step_2_get_row_keys )
	,	a.duration_3	=	DATEDIFF(SS,step_2_get_row_keys,atep_3_parse_row_key )
	,	a.duration_4	=	DATEDIFF(ss,atep_3_parse_row_key,step_4_stg_with_attributes )
	,	a.duration_5	=	DATEDIFF(ss,step_4_stg_with_attributes,step_5_insert_to_production )
from
	stage_monitoring.dbo.ref_audit_monthly_agg a
where
	a.id = @run_id 

--	alter index IDX_ROW_KEY  on stage_monitoring.dbo.stg_monitoring_monthly_universal_time DISABLE	
--alter index IDX_Device  on stage_monitoring.dbo.stg_monitoring_monthly_universal_time DISABLE










GO
/****** Object:  StoredProcedure [dbo].[sp_AGG_monthly_Monitoring_UTC_2014_10_14]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 7/25/2013
-------------------------------------------------------------------------------------------

Description:
--------------


Modifications:
--------------

-------------------------------------------------------------------------------------------
*/

CREATE procedure [dbo].[sp_AGG_monthly_Monitoring_UTC_2014_10_14]

as

declare @begin_date		datetime
declare @end_date		datetime
declare @etl_date		datetime
declare @sql			varchar(1000)
declare @run_id			int

--Audit variables
declare @process_begin	datetime
declare @step_1			datetime
declare @step_2			datetime
declare	@step_3			datetime
declare @step_4			datetime


--GET UTC DAY
declare @utc_start_date	datetime
declare @utc_end_date	datetime

----set @utc_start_date = '2014-08-01 00:00:00.000'
----set @utc_end_date	= '2014-08-31 00:00:00.000'

if day(GETDATE()) = 1
begin
set @utc_end_date		= (
							select
								time_full_date
							from
								stage_three_dw.dbo.Dim_Time
							where
								Time_Month_Number	= MONTH(getdate()-1)
							and Time_Year_Number	= YEAR(getdate()-1)
							and Time_Day_Number		= DAY(getdate()-1)
							)
							
set @utc_start_date		= (
							select
								time_full_date
							from
								stage_three_dw.dbo.Dim_Time
							where
								Time_Month_Number	= MONTH(@utc_end_date)
							and Time_Year_Number	= YEAR(@utc_end_date)
							and Time_Day_Number		= 1
							)
end

set @etl_date			=	GETDATE()

insert into stage_monitoring.dbo.ref_audit_monthly_agg
(
	day_to_process,
	timezone,
	begin_process
)
select
	@utc_start_date,'UTC',@etl_date
	
	
	
-----------------------------------------------------------------------------
--step 1 stage the agg
-----------------------------------------------------------------------------
set @sql = '
truncate table stage_monitoring.dbo.stg_monitoring_monthly_universal_time

insert into stage_monitoring.dbo.stg_monitoring_monthly_universal_time
(
	uptimeDuration,
	downtimeDurationWithSupression,
	downtimeDurationWithoutSupression,
	uptimePercentageWithSupression,
	uptimePercentageWithoutSupression,
	row_key
)
SELECT 
	sum(uptimeDuration),
	sum(downtimeDurationWithSupression),
	sum(downtimeDurationWithoutSupression),
	avg(uptimePercentageWithSupression),
	avg(uptimePercentageWithoutSupression),
	row_key
FROM 
	stage_three_dw.dbo.Report_Monitoring_Availability_daily with (nolock)
where
	Source_System_Name in (''sitescope'',''rackwatch'')
and
	Time_Full_Date_HMS >= ''' + convert(varchar, @utc_start_date) + '''
and 
	time_full_date_hms <= ''' + convert(varchar, @utc_end_date) + '''
group by
	row_key
'
exec (@sql)


set @run_id = (select max(id) from stage_monitoring.dbo.ref_audit_monthly_agg)


update a
	set
		a.step_1_stage_agg = GETDATE()
from
	stage_monitoring.dbo.ref_audit_monthly_agg a
where
	a.id = @run_id 
	

-----------------------------------------------------------------------------
--step 2 get row_keys
-----------------------------------------------------------------------------
truncate table stage_monitoring.dbo.ref_row_key_hold_NULL

insert into stage_monitoring.dbo.ref_row_key_hold_NULL
(
	row_key,
	row_key_string
)
select
	distinct 
	row_key,
	replace(replace(replace(row_key,']:[',','),'[',''),']','')
from
	stage_monitoring.dbo.stg_monitoring_monthly_universal_time


update a
	set
		a.step_2_get_row_keys = GETDATE()
from
	stage_monitoring.dbo.ref_audit_monthly_agg a
where
	a.id = @run_id 

----------------------------------------------------
--row_key and row_key_string inserted into hold table
--process row_key_string / parse process to ref_row_key lookup table
----------------------------------------------------
truncate table stage_monitoring.dbo.ref_row_key_NULL

;with
cteSplit AS
(
select
	a.row_key,
	row_number() over (partition by a.row_key order by t.N)	as row_N,
	substring(',' + a.row_key_string, N+1, charindex(',', a.row_key_string + ',', N)-N) as SplitValue
from
	stage_monitoring.dbo.tally t

	cross join stage_monitoring.dbo.ref_row_key_hold_NULL a
WHERE 
	t.N <= LEN(',' + a.row_key_string)
AND SUBSTRING(',' + a.row_key_string, N, 1) = ','
)
insert into stage_monitoring.dbo.ref_row_key_NULL
(
	[row_key]
	,[Instance_NK]
	,[Instance_Source_System]
	,[Monitor_NK]
	,[Monitor_Type]
	,[Monitor_Silo]
	,[Monitor_Source_System]
)
 SELECT s.row_key,
		MAX(CASE WHEN s.row_N = 1 THEN isnull(SplitValue,'N/A') END) AS instance_nk,
		MAX(CASE WHEN s.row_N = 2 THEN isnull(SplitValue,'N/A') END) AS instance_source_system,
		MAX(CASE WHEN s.row_N = 3 THEN isnull(SplitValue,'N/A') END) AS monitor_nk,
		MAX(CASE WHEN s.row_N = 4 THEN isnull(SplitValue,'N/A') END) AS monitor_type,
		MAX(CASE WHEN s.row_N = 5 THEN isnull(SplitValue,'N/A') END) AS monitor_silo,
		MAX(CASE WHEN s.row_N = 6 THEN isnull(SplitValue,'N/A') END) AS monitor_source_system
FROM 
	cteSplit s
GROUP BY 
	s.row_key


update a
	set
		a.atep_3_parse_row_key = GETDATE()
from
	stage_monitoring.dbo.ref_audit_monthly_agg a
where
	a.id = @run_id 
		
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
truncate table stage_monitoring.dbo.stg_report_monitoring_availability_monthly_universal_time

insert into stage_monitoring.dbo.stg_report_monitoring_availability_monthly_universal_time
(
	[Time_KEY]
	,[Time_Full_Date]
	,[Time_Month_Number]
	,[Time_Month_Desc]
	,[Time_Month_Abbr]
	,[Time_Year_Number]
	,[Time_Quarter_Number]
	,[Time_Full_Date_HMS]
	,[Account_Name]
	,[Account_Number]
	,[Account_Type]
	,[Device_Host_Name]
	,[Device_Number]
	,[Device_Status]
	,[Monitor_Type]
	,[Monitor_Name]
	,[Monitor_Silo]
	,[Source_System_Name]
	,[uptimeDuration]
	,[downtimeDurationWithSupression]
	,[downtimeDurationWithoutSupression]
	,[uptimePercentageWithSupression]
	,[uptimePercentageWithoutSupression]
	,[row_key]
	,[Monitor_ID]
	,[Device_Source]
	,[Account_Source]
	,[etl_date]
	,[Monitor_Type_Group]
)
select
	c.Time_KEY,
	c.Time_Full_Date,
	c.Time_Month_Number,
	c.Time_Month_Desc,
	c.Time_Month_Abbr,
	c.Time_Year_Number,
	c.Time_Quarter_Number,
	@utc_start_date,
	z.Account_Name,
	z.Account_Number,
	z.Account_Type,
	z.Device_Host_Name,
	z.Device_Number,
	z.Device_Status,
	case
		when x.monitor_type = 'web' then 'URL'
		else
			x.monitor_type
	end				as monitor_type,
	x.Monitor_Name,
	zzz.Monitor_Silo,
	zzz.Monitor_Source_System,
	a.uptimeDuration,
	a.downtimeDurationWithSupression,
	a.downtimeDurationWithoutSupression,
	a.uptimePercentageWithSupression,
	a.uptimePercentageWithoutSupression,
	a.row_key,
	zzz.Monitor_NK,					
	zzz.Instance_Source_System,		
	z.account_source_system_name,
	@etl_Date,
	(
	case
		--DEFINE PING
		when 
				x.MONITOR_TYPE = 'Ping' 
			OR 
				x.MONITOR_TYPE = 'ICMP'  
			OR 
				zzz.Monitor_NK = 'PING'
			then 'PING'
		
		--DEFINE PORT
		when
		((zzz.Monitor_NK IN ('FTP','ColdFusion','Cold Fusion','PostgreSQL','MS SQL Server','Webport','SQLServer','HTTP',
							'IMAP','POP3','Telnet','SMTP','Postgres','HTTPS','MySQL','DNS','SSH') 
		AND zzz.monitor_source_system = 'rackwatch')
		OR
		(x.monitor_type in ('Protocol','Ping','FTPGet','ColdFusion','DNS','Protocol')
		and zzz.monitor_source_system = 'sitescope')
		OR
		(x.monitor_type in ('TCP','SMTP','SMTP-BANNER','SSH','NETWORK','MYSQL','DNS','APACHE')
		and zzz.monitor_source_system = 'maas'))
			then 'PORT'

		--DEFINE URL
		when
		((x.monitor_type in ('http','web','URL')
		and zzz.monitor_source_system = 'sitescope')
		OR
		(x.monitor_type in ('URL')
		and zzz.monitor_source_system = 'MaaS'))
			then 'URL'

		else
			'other'
	end	
	)as Monitor_Type_Group
		

from	
	stage_monitoring.dbo.stg_monitoring_monthly_universal_time a
	
	inner join stage_monitoring.dbo.ref_row_key_NULL zzz
		on a.row_key = zzz.row_key

	inner join stage_three_dw.dbo.Dim_Time c
		on c.Time_Full_Date		=	@utc_start_date

	--join with dim_monitor
	left join stage_three_dw.dbo.dim_monitor x
		on	x.monitor_id_nk			=	zzz.monitor_nk
		and x.monitor_silo			=	zzz.monitor_silo
		and x.source_system_name    =	(case
											when zzz.Monitor_Source_System = 'sitescope' then 'RADAR'
										 else
											zzz.Monitor_Source_System 
										 end)		
		and x.Current_Record_Flag	=	1
		
		
	left join stage_monitoring.dbo.vw_report_account_device_daily z
		on	zzz.Instance_NK				= z.device_number
		and zzz.Instance_Source_System	= z.device_source_system_name




update a
	set
		a.step_4_stg_with_attributes = GETDATE()
from
	stage_monitoring.dbo.ref_audit_monthly_agg a
where
	a.id = @run_id 


----------------------------------------------------------------------------------
----insert into monthly universal table
----------------------------------------------------------------------------------		
--insert into stage_three_dw.dbo.report_monitoring_availability_monthly_universal_time
insert into stage_three_dw.dbo.report_monitoring_availability_monthly
(
	--[id]
	--,
	[Time_KEY]
	,[Time_Full_Date]
	,[Time_Month_Number]
	,[Time_Month_Desc]
	,[Time_Month_Abbr]
	,[Time_Year_Number]
	,[Time_Quarter_Number]
	--,[Time_Full_Date_HMS]
	,[Account_Name]
	,[Account_Number]
	,[Account_Type]
	,[Device_Host_Name]
	,[Device_Number]
	,[Device_Status]
	,[Monitor_Type]
	,[Monitor_Name]
	,[Monitor_Silo]
	,[Source_System_Name]
	,[uptimeDuration]
	,[downtimeDurationWithSupression]
	,[downtimeDurationWithoutSupression]
	,[uptimePercentageWithSupression]
	,[uptimePercentageWithoutSupression]
	,[row_key]
	,[Monitor_ID]
	,[Device_Source]
	,[Account_Source]
	,[etl_date]
	,[Monitor_Type_Group]
)
SELECT 
	[Time_KEY]
	,[Time_Full_Date]
	,[Time_Month_Number]
	,[Time_Month_Desc]
	,[Time_Month_Abbr]
	,[Time_Year_Number]
	,[Time_Quarter_Number]
	--,[Time_Full_Date_HMS]
	,[Account_Name]
	,[Account_Number]
	,[Account_Type]
	,[Device_Host_Name]
	,[Device_Number]
	,[Device_Status]
	,[Monitor_Type]
	,[Monitor_Name]
	,[Monitor_Silo]
	,[Source_System_Name]
	,[uptimeDuration]
	,[downtimeDurationWithSupression]
	,[downtimeDurationWithoutSupression]
	,[uptimePercentageWithSupression]
	,[uptimePercentageWithoutSupression]
	,[row_key]
	,[Monitor_ID]
	,[Device_Source]
	,[Account_Source]
	,[etl_date]
	,[Monitor_Type_Group]
FROM 
	[Stage_Monitoring].[dbo].[stg_report_monitoring_availability_monthly_universal_time]

	


update a
	set
		a.step_5_insert_to_production = GETDATE()
from
	stage_monitoring.dbo.ref_audit_monthly_agg a
where
	a.id = @run_id 


----------------------------------------------------------------------------------
----calculate times
----------------------------------------------------------------------------------	

update a	
	set
		a.duration_1	=	DATEDIFF(ss,begin_process,step_1_stage_agg)
	,	a.duration_2	=	DATEDIFF(ss,step_1_stage_agg,step_2_get_row_keys )
	,	a.duration_3	=	DATEDIFF(SS,step_2_get_row_keys,atep_3_parse_row_key )
	,	a.duration_4	=	DATEDIFF(ss,atep_3_parse_row_key,step_4_stg_with_attributes )
	,	a.duration_5	=	DATEDIFF(ss,step_4_stg_with_attributes,step_5_insert_to_production )
from
	stage_monitoring.dbo.ref_audit_monthly_agg a
where
	a.id = @run_id 


GO
/****** Object:  StoredProcedure [dbo].[sp_AGG_monthly_Monitoring_UTC_MTD]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 7/25/2013
-------------------------------------------------------------------------------------------

Description:
--------------


Modifications:
--------------

-------------------------------------------------------------------------------------------
*/

CREATE procedure [dbo].[sp_AGG_monthly_Monitoring_UTC_MTD]

as

declare @begin_date		datetime
declare @end_date		datetime
declare @etl_date		datetime
declare @sql			varchar(1000)
declare @run_id			int

--Audit variables
declare @process_begin	datetime
declare @step_1			datetime
declare @step_2			datetime
declare	@step_3			datetime
declare @step_4			datetime


--GET UTC DAY
declare @utc_start_date	datetime
declare @utc_end_date	datetime


declare @start_id bigint
declare @end_id bigint

--set @utc_start_date = '2015-06-01 00:00:00.000'
--set @utc_end_date	= '2015-06-13 00:00:00.000'



if day(GETDATE()) <> 1
begin
set @utc_end_date		= (
							select
								time_full_date
							from
								stage_three_dw.dbo.Dim_Time
							where
								Time_Month_Number	= MONTH(getdate()-1)
							and Time_Year_Number	= YEAR(getdate()-1)
							and Time_Day_Number		= DAY(getdate()-1)
							)
							
set @utc_start_date		= (
							select
								time_full_date
							from
								stage_three_dw.dbo.Dim_Time
							where
								Time_Month_Number	= MONTH(@utc_end_date)
							and Time_Year_Number	= YEAR(@utc_end_date)
							and Time_Day_Number		= 1
							)
end

--set @utc_start_date = '2015-06-01 00:00:00.000'
--set @utc_end_date	= '2015-06-13 00:00:00.000'
set @start_id = (select min(id) from Stage_three_dw.[dbo].[Report_Monitoring_Availability_Daily] where [Time_Full_Date_HMS]= @utc_start_date)
set @end_id = (select max(id) from Stage_three_dw.[dbo].[Report_Monitoring_Availability_Daily] )
print @start_id
print @end_id

select
	@utc_start_date, @utc_end_date

set @etl_date			=	GETDATE()

insert into stage_monitoring.dbo.ref_audit_monthly_agg
(
	day_to_process,
	timezone,
	begin_process
)
select
	@utc_start_date,'UTC_MTD',@etl_date
	
	
	
-----------------------------------------------------------------------------
--step 1 stage the agg
-----------------------------------------------------------------------------
--set @sql = '
--truncate table stage_monitoring.dbo.stg_monitoring_monthly_universal_time

--insert into stage_monitoring.dbo.stg_monitoring_monthly_universal_time
--(
--	uptimeDuration,
--	downtimeDurationWithSupression,
--	downtimeDurationWithoutSupression,
--	uptimePercentageWithSupression,
--	uptimePercentageWithoutSupression,
--	row_key,device_number, device_source
--)
--SELECT 
--	sum(uptimeDuration),
--	sum(downtimeDurationWithSupression),
--	sum(downtimeDurationWithoutSupression),
--	avg(uptimePercentageWithSupression),
--	avg(uptimePercentageWithoutSupression),
--	row_key,device_number, device_source
--FROM 
--	stage_three_dw.dbo.Report_Monitoring_Availability_daily with (nolock)
--where
--	Source_System_Name in (''sitescope'',''rackwatch'',''maas'')
--and
--	Time_Full_Date_HMS >= ''' + convert(varchar, @utc_start_date) + '''
--and 
--	time_full_date_hms <= ''' + convert(varchar, @utc_end_date) + '''
--group by
--	row_key,device_number, device_source
--'
--exec (@sql)

--alter index IDX_ROW_KEY  on stage_monitoring.dbo.stg_monitoring_monthly_universal_time REBUILD	
--alter index IDX_Device  on stage_monitoring.dbo.stg_monitoring_monthly_universal_time REBUILD
set @run_id = (select max(id) from stage_monitoring.dbo.ref_audit_monthly_agg)


update a
	set
		a.step_1_stage_agg = GETDATE()
from
	stage_monitoring.dbo.ref_audit_monthly_agg a
where
	a.id = @run_id 
	

-----------------------------------------------------------------------------
--step 2 get row_keys
-----------------------------------------------------------------------------
--truncate table stage_monitoring.dbo.ref_row_key_hold_NULL

--insert into stage_monitoring.dbo.ref_row_key_hold_NULL
--(
--	row_key,
--	row_key_string
--)
--select
--	distinct 
--	row_key,
--	replace(replace(replace(row_key,']:[',','),'[',''),']','')
--from
--	stage_monitoring.dbo.stg_monitoring_monthly_universal_time


update a
	set
		a.step_2_get_row_keys = GETDATE()
from
	stage_monitoring.dbo.ref_audit_monthly_agg a
where
	a.id = @run_id 

----------------------------------------------------
--row_key and row_key_string inserted into hold table
--process row_key_string / parse process to ref_row_key lookup table
----------------------------------------------------
--truncate table stage_monitoring.dbo.ref_row_key_NULL

--;with
--cteSplit AS
--(
--select
--	a.row_key,
--	row_number() over (partition by a.row_key order by t.N)	as row_N,
--	substring(',' + a.row_key_string, N+1, charindex(',', a.row_key_string + ',', N)-N) as SplitValue
--from
--	stage_monitoring.dbo.tally t

--	cross join stage_monitoring.dbo.ref_row_key_hold_NULL a
--WHERE 
--	t.N <= LEN(',' + a.row_key_string)
--AND SUBSTRING(',' + a.row_key_string, N, 1) = ','
--)
--insert into stage_monitoring.dbo.ref_row_key_NULL
--(
--	[row_key]
--	,[Instance_NK]
--	,[Instance_Source_System]
--	,[Monitor_NK]
--	,[Monitor_Type]
--	,[Monitor_Silo]
--	,[Monitor_Source_System]
--)
-- SELECT s.row_key,
--		MAX(CASE WHEN s.row_N = 1 THEN isnull(SplitValue,'N/A') END) AS instance_nk,
--		MAX(CASE WHEN s.row_N = 2 THEN isnull(SplitValue,'N/A') END) AS instance_source_system,
--		MAX(CASE WHEN s.row_N = 3 THEN isnull(SplitValue,'N/A') END) AS monitor_nk,
--		MAX(CASE WHEN s.row_N = 4 THEN isnull(SplitValue,'N/A') END) AS monitor_type,
--		MAX(CASE WHEN s.row_N = 5 THEN isnull(SplitValue,'N/A') END) AS monitor_silo,
--		MAX(CASE WHEN s.row_N = 6 THEN isnull(SplitValue,'N/A') END) AS monitor_source_system
--FROM 
--	cteSplit s
--GROUP BY 
--	s.row_key


update a
	set
		a.atep_3_parse_row_key = GETDATE()
from
	stage_monitoring.dbo.ref_audit_monthly_agg a
where
	a.id = @run_id 
		
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--truncate table stage_monitoring.dbo.stg_report_monitoring_availability_monthly_universal_time

--insert into stage_monitoring.dbo.stg_report_monitoring_availability_monthly_universal_time
--(
--	[Time_KEY]
--	,[Time_Full_Date]
--	,[Time_Month_Number]
--	,[Time_Month_Desc]
--	,[Time_Month_Abbr]
--	,[Time_Year_Number]
--	,[Time_Quarter_Number]
--	,[Time_Full_Date_HMS]
--	,[Account_Name]
--	,[Account_Number]
--	,[Account_Type]
--	,[Device_Host_Name]
--	,[Device_Number]
--	,[Device_Status]
--	,[Monitor_Type]
--	,[Monitor_Name]
--	,[Monitor_Silo]
--	,[Source_System_Name]
--	,[uptimeDuration]
--	,[downtimeDurationWithSupression]
--	,[downtimeDurationWithoutSupression]
--	,[uptimePercentageWithSupression]
--	,[uptimePercentageWithoutSupression]
--	,[row_key]
--	,[Monitor_ID]
--	,[Device_Source]
--	,[Account_Source]
--	,[etl_date]
--	,[Monitor_Type_Group]
--)
--select
--	c.Time_KEY,
--	c.Time_Full_Date,
--	c.Time_Month_Number,
--	c.Time_Month_Desc,
--	c.Time_Month_Abbr,
--	c.Time_Year_Number,
--	c.Time_Quarter_Number,
--	@utc_start_date,
--	z.Account_Name,
--	z.Account_Number,
--	z.Account_Type,
--	z.Device_Host_Name,
--	z.Device_Number,
--	z.Device_Status,
--	case
--		when x.monitor_type = 'web' then 'URL'
--		else
--			x.monitor_type
--	end				as monitor_type,
--	x.Monitor_Name,
--	x.Monitor_Silo,
--	x.Source_System_Name,
--	a.uptimeDuration,
--	a.downtimeDurationWithSupression,
--	a.downtimeDurationWithoutSupression,
--	a.uptimePercentageWithSupression,
--	a.uptimePercentageWithoutSupression,
--	a.row_key,
--	x.Monitor_ID_NK,					
--	a.Device_Source,		
--	z.account_source_system_name,
--	@etl_Date,
--	(
--	case
--		--DEFINE PING
--		when 
--				x.MONITOR_TYPE = 'Ping' 
--			OR 
--				x.MONITOR_TYPE = 'ICMP'  
--			--OR 
--			--	zzz.Monitor_NK = 'PING'
--			then 'PING'
		
--		--DEFINE PORT
--		when
--		((x.Monitor_Type IN ('FTP','ColdFusion','Cold Fusion','PostgreSQL','MS SQL Server','Webport','SQLServer','HTTP',
--							'IMAP','POP3','Telnet','SMTP','Postgres','HTTPS','MySQL','DNS','SSH') 
--		AND x.source_system_name = 'rackwatch')
--		OR
--		(x.monitor_type in ('Protocol','Ping','FTPGet','ColdFusion','DNS','Protocol')
--		and x.source_system_name = 'sitescope')
--		OR
--		(x.monitor_type in ('TCP','SMTP','SMTP-BANNER','SSH','NETWORK','MYSQL','DNS','APACHE')
--		and x.source_system_name = 'maas'))
--			then 'PORT'

--		--DEFINE URL
--		when
--		((x.monitor_type in ('http','web','URL')
--		and x.source_system_name = 'sitescope')
--		OR
--		(x.monitor_type in ('URL')
--		and x.source_system_name = 'MaaS'))
--			then 'URL'

--		else
--			'other'
--	end	
--	)as Monitor_Type_Group
		

--from	
--	stage_monitoring.dbo.stg_monitoring_monthly_universal_time a
	
--	--inner join stage_monitoring.dbo.ref_row_key_NULL zzz
--	--	on a.row_key = zzz.row_key

--	inner join stage_three_dw.dbo.Dim_Time c
--		on c.Time_Full_Date		=	@utc_start_date

--	--join with dim_monitor
--	left join stage_three_dw.dbo.dim_monitor x
--		--on	x.monitor_id_nk			=	zzz.monitor_nk
--		--and x.monitor_silo			=	zzz.monitor_silo
--		--and x.source_system_name    =	(case
--		--									when zzz.Monitor_Source_System = 'sitescope' then 'RADAR'
--		--								 else
--		--									zzz.Monitor_Source_System 
--		--								 end)		
--		on a.row_key=x.monitor_id
--		and x.Current_Record_Flag	=	1
		
		
--	left join stage_monitoring.dbo.report_account_device_daily z
--		on	a.device_number				= z.device_number
--		and a.device_source	= z.device_source_system_name




--update a
--	set
--		a.step_4_stg_with_attributes = GETDATE()
--from
--	stage_monitoring.dbo.ref_audit_monthly_agg a
--where
--	a.id = @run_id 



truncate table stage_monitoring.dbo.stg_monitoring_monthly_universal_time

insert into stage_monitoring.dbo.stg_monitoring_monthly_universal_time
(
	sum_uptimeDuration,
	sum_downtimeDurationWithSupression,
	sum_downtimeDurationWithoutSupression,
	avg_uptimePercentageWithSupression,
	avg_uptimePercentageWithoutSupression,
	row_key, device_number, device_source,
	[Account_Name],[Account_Number],[Account_Type],[Device_Host_Name],[Device_Status],[Monitor_Type],
    [Monitor_Name],[Monitor_Silo],[Source_System_Name],[Monitor_ID],[Account_Source], [Monitor_Type_Group]
)
SELECT 
	sum(uptimeDuration),
	sum(downtimeDurationWithSupression),
	sum(downtimeDurationWithoutSupression),
	avg(uptimePercentageWithSupression),
	avg(uptimePercentageWithoutSupression),
	row_key,device_number, device_source,
	[Account_Name],[Account_Number],[Account_Type],[Device_Host_Name],[Device_Status],[Monitor_Type],
    [Monitor_Name],[Monitor_Silo],[Source_System_Name],[Monitor_ID],[Account_Source],[Monitor_Type_Group]
FROM 
	stage_three_dw.dbo.Report_Monitoring_Availability_Daily with (nolock) 
where
    id between @start_id and @end_id
	--(Time_Full_Date_HMS  between   @begin_date	and  @end_date) and Account_Source='Salesforce'
group by
	row_key, device_number, device_source, 
	[Account_Name],[Account_Number],[Account_Type],[Device_Host_Name],[Device_Status],[Monitor_Type],
    [Monitor_Name],[Monitor_Silo],[Source_System_Name],[Monitor_ID],[Account_Source],[Monitor_Type_Group]


----------------------------------------------------------------------------------
----insert into monthly universal table
----------------------------------------------------------------------------------		
--insert into stage_three_dw.dbo.report_monitoring_availability_monthly_universal_time
truncate table stage_monitoring.dbo.stg_report_monitoring_availability_monthly_universal_time
insert into stage_monitoring.dbo.stg_report_monitoring_availability_monthly_universal_time
(
	[Time_KEY]
	,[Time_Full_Date]
	,[Time_Month_Number]
	,[Time_Month_Desc]
	,[Time_Month_Abbr]
	,[Time_Year_Number]
	,[Time_Quarter_Number]
	,[Time_Full_Date_HMS]
	,[Account_Name]
	,[Account_Number]
	,[Account_Type]
	,[Device_Host_Name]
	,[Device_Number]
	,[Device_Status]
	,[Monitor_Type]
	,[Monitor_Name]
	,[Monitor_Silo]
	,[Source_System_Name]
	,[uptimeDuration]
	,[downtimeDurationWithSupression]
	,[downtimeDurationWithoutSupression]
	,[uptimePercentageWithSupression]
	,[uptimePercentageWithoutSupression]
	,[row_key]
	,[Monitor_ID]
	,[Device_Source]
	,[Account_Source]
	,[etl_date]
	,[Monitor_Type_Group]
)
select
	c.Time_KEY,
	c.Time_Full_Date,
	c.Time_Month_Number,
	c.Time_Month_Desc,
	c.Time_Month_Abbr,
	c.Time_Year_Number,
	c.Time_Quarter_Number,
	@utc_start_date,
	z.Account_Name,
	z.Account_Number,
	z.Account_Type,
	z.Device_Host_Name,
	z.Device_Number,
	z.Device_Status,
	z.monitor_type,
	z.Monitor_Name,
	z.Monitor_Silo,
	z.Source_System_Name,
	z.sum_uptimeDuration,
	z.sum_downtimeDurationWithSupression,
	z.sum_downtimeDurationWithoutSupression,
	z.avg_uptimePercentageWithSupression,
	z.avg_uptimePercentageWithoutSupression,
	z.row_key,
	z.Monitor_ID,					
	z.Device_Source,		
	z.account_source,
	@etl_Date,
	 z.Monitor_Type_Group
		

from	
	stage_monitoring.dbo.stg_monitoring_monthly_universal_time z
	
	
	inner join stage_three_dw.dbo.Dim_Time c
		on c.Time_Full_Date		=	@utc_start_date






truncate table stage_three_dw.dbo.report_monitoring_availability_monthly_mtd

insert into stage_three_dw.dbo.report_monitoring_availability_monthly_mtd
(
	--[id]
	--,
	[Time_KEY]
	,[Time_Full_Date]
	,[Time_Month_Number]
	,[Time_Month_Desc]
	,[Time_Month_Abbr]
	,[Time_Year_Number]
	,[Time_Quarter_Number]
	--,[Time_Full_Date_HMS]
	,[Account_Name]
	,[Account_Number]
	,[Account_Type]
	,[Device_Host_Name]
	,[Device_Number]
	,[Device_Status]
	,[Monitor_Type]
	,[Monitor_Name]
	,[Monitor_Silo]
	,[Source_System_Name]
	,[uptimeDuration]
	,[downtimeDurationWithSupression]
	,[downtimeDurationWithoutSupression]
	,[uptimePercentageWithSupression]
	,[uptimePercentageWithoutSupression]
	,[row_key]
	,[Monitor_ID]
	,[Device_Source]
	,[Account_Source]
	,[etl_date]
	,[Monitor_Type_Group]
)
SELECT 
	[Time_KEY]
	,[Time_Full_Date]
	,[Time_Month_Number]
	,[Time_Month_Desc]
	,[Time_Month_Abbr]
	,[Time_Year_Number]
	,[Time_Quarter_Number]
	--,[Time_Full_Date_HMS]
	,[Account_Name]
	,[Account_Number]
	,[Account_Type]
	,[Device_Host_Name]
	,[Device_Number]
	,[Device_Status]
	,[Monitor_Type]
	,[Monitor_Name]
	,[Monitor_Silo]
	,[Source_System_Name]
	,[uptimeDuration]
	,[downtimeDurationWithSupression]
	,[downtimeDurationWithoutSupression]
	,[uptimePercentageWithSupression]
	,[uptimePercentageWithoutSupression]
	,[row_key]
	,[Monitor_ID]
	,[Device_Source]
	,[Account_Source]
	,[etl_date]
	,[Monitor_Type_Group]
FROM 
	[Stage_Monitoring].[dbo].[stg_report_monitoring_availability_monthly_universal_time]

	


update a
	set
		a.step_5_insert_to_production = GETDATE()
from
	stage_monitoring.dbo.ref_audit_monthly_agg a
where
	a.id = @run_id 


----------------------------------------------------------------------------------
----calculate times
----------------------------------------------------------------------------------	

update a	
	set
		a.duration_1	=	DATEDIFF(ss,begin_process,step_1_stage_agg)
	,	a.duration_2	=	DATEDIFF(ss,step_1_stage_agg,step_2_get_row_keys )
	,	a.duration_3	=	DATEDIFF(SS,step_2_get_row_keys,atep_3_parse_row_key )
	,	a.duration_4	=	DATEDIFF(ss,atep_3_parse_row_key,step_4_stg_with_attributes )
	,	a.duration_5	=	DATEDIFF(ss,step_4_stg_with_attributes,step_5_insert_to_production )
from
	stage_monitoring.dbo.ref_audit_monthly_agg a
where
	a.id = @run_id 

--	alter index IDX_ROW_KEY  on stage_monitoring.dbo.stg_monitoring_monthly_universal_time DISABLE	
--alter index IDX_Device  on stage_monitoring.dbo.stg_monitoring_monthly_universal_time DISABLE




GO
/****** Object:  StoredProcedure [dbo].[sp_archive_files]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 6/25/2013
-------------------------------------------------------------------------------------------

Description:
--------------


Modifications:
--------------

-------------------------------------------------------------------------------------------
*/ 

CREATE procedure [dbo].[sp_archive_files]

as

---------------------------------------------------------------
---------------------------------------------------------------
--variables for file build
declare	@cmd					varchar(4000)
declare @var					varchar(4000)
declare @bat_file_destination	varchar(1000) --the path and bat file name
declare @clear_bat				varchar(255)  --delete bat file for next run
---------------------------------------------------------------
---------------------------------------------------------------

set @bat_file_destination	= 'D:\FTP\monitoring\scripts\move_and_archive.bat'
set @clear_bat				= 'D:\FTP\monitoring\scripts\move_and_delete.bat'

----------------------------------------------------------------------------------
--BEGIN SCRIPT BUILD
----------------------------------------------------------------------------------

declare @file_location	varchar(1024)
declare @file_name_txt	varchar(255)
declare @file_type		varchar(100)

declare file_move cursor LOCAL fast_forward for
select
	a.file_location,
	a.file_name_txt,
	b.file_type
from
	dbo.ref_current_file_list a
	
	inner join stage_monitoring.dbo.ref_processed_file_list b
		on a.file_name_txt = b.file_name_txt
where
	b.iscomplete = 'complete'
and b.file_location <> 'HOURLY_NULL_CATCH'
	
open file_move
	fetch next from file_move into @file_location, @file_name_txt, @file_type

while @@FETCH_STATUS=0
begin


set @var = 'copy ' + @file_location + @file_name_txt + ' ' + 'D:\FTP\monitoring\availability\archive\'
set @cmd = 'echo ' + @var + ' >> ' + @bat_file_destination
exec master..xp_cmdshell @cmd

set @var = 'ERASE ' + @file_location + @file_name_txt
set @cmd = 'echo ' + @var + ' >> ' + @bat_file_destination
exec master..xp_cmdshell @cmd

		
fetch next from file_move into @file_location, @file_name_txt, @file_type
	
end

close file_move
deallocate  file_move

--execute archive
EXEC master..xp_CMDShell @bat_file_destination

--delete bat for next run
EXEC master..xp_CMDShell @clear_bat

GO
/****** Object:  StoredProcedure [dbo].[sp_delete_0_files]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 6/18/2013
-------------------------------------------------------------------------------------------

Description:
--------------


Modifications:
--------------

-------------------------------------------------------------------------------------------
*/ 

CREATE procedure [dbo].[sp_delete_0_files]

as

---------------------------------------------------------------
---------------------------------------------------------------
--variables for file build
declare	@cmd					varchar(4000)
declare @var					varchar(4000)
declare @bat_file_destination	varchar(1000) --the path and bat file name
declare @clear_bat				varchar(255)  --delete bat file for next run
---------------------------------------------------------------
---------------------------------------------------------------

set @bat_file_destination	= 'D:\FTP\monitoring\scripts\delete_0_files.bat'
set @clear_bat				= 'D:\FTP\monitoring\scripts\delete_file.bat'

----------------------------------------------------------------------------------
--BEGIN SCRIPT BUILD
----------------------------------------------------------------------------------

declare @file_location	varchar(1024)
declare @file_name_txt	varchar(255)

declare file_move cursor LOCAL fast_forward for
select
	a.file_location,
	a.file_name_txt
from
	ref_current_file_list a
where
	a.size_KB < 1.00
	
open file_move
	fetch next from file_move into @file_location, @file_name_txt

while @@FETCH_STATUS=0
begin


set @var = 'ERASE ' + @file_location + @file_name_txt
set @cmd = 'echo ' + @var + ' >> ' + @bat_file_destination
exec master..xp_cmdshell @cmd

		
fetch next from file_move into @file_location, @file_name_txt
	
end

close file_move
deallocate  file_move

--execute archive
EXEC master..xp_CMDShell @bat_file_destination

--delete bat for next run
EXEC master..xp_CMDShell @clear_bat

GO
/****** Object:  StoredProcedure [dbo].[sp_failure_clean_up]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




/*
********************************************
********************************************
ONLY run this procedure if there has been a failure:
-connection failure
-job failure
-server failure
-socket issue

OR you just know that something is wrong and
the jobs will not start up again

IF an issue persists, please investigate which
file is causing issue and copy that file into
a HOLD folder for further investigation AND then
run this procedure
********************************************
********************************************
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 6/18/2013
-------------------------------------------------------------------------------------------

Description:
--------------


Modifications:
--------------

-------------------------------------------------------------------------------------------
*/
CREATE procedure [dbo].[sp_failure_clean_up]

as

declare @production_check int

declare @file_name table(
file_name_txt	varchar(255)
)

insert into @file_name
select
	file_name_txt
from
	Stage_Monitoring.dbo.ref_processed_file_list
where
	iscomplete in ('in_progress','stage_complete','inserting_into_production')
OR  iscomplete like '%stage_complete%'
AND completed_datetime is null
--exec [dbo].[sp_archive_files]
--return 						
						
--delete from Audit for rerun
delete from stage_monitoring.dbo.ref_processed_file_list
where 
	file_name_txt IN ( 
						select
							file_name_txt
						from
							@file_name
					 )
print 'delete from table stage_monitoring.dbo.ref_processed_file_list'
		
		
		
set @production_check = (
						select 
							count(*) 
						from 
							stage_three_dw.dbo.Report_Monitoring_Availability_Hourly 
						where 
							file_name_txt IN ( 
												select
													file_name_txt
												from
													@file_name
											 )
						)					
--delete from production table if records have been inserted
if @production_check >= 1
begin
delete from stage_three_dw.dbo.Report_Monitoring_Availability_Hourly 
where 
	file_name_txt IN ( 
						select
							file_name_txt
						from
							@file_name
					 )
print 'deleted records from stage_three_dw.dbo.Report_Monitoring_Availability_Hourly'
end



GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Current_Lists]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 6/18/2013
-------------------------------------------------------------------------------------------

Description:
--------------


Modifications:
--------------

-------------------------------------------------------------------------------------------
*/ 

CREATE procedure [dbo].[sp_Get_Current_Lists]

as

declare @process_check as int

set @process_check = (
						select
							count(*)	as total_count
						from
							stage_monitoring.dbo.ref_processed_file_list
						where
							iscomplete in ('in_progress','stage_complete','stage_complete_with_errors')
					  )
								
if @process_check = 0
begin

--STEP 1 - Get current files in FTP directories
--clear out current list
truncate table stage_monitoring.dbo.ref_current_file_list

--Rackwatch
exec stage_monitoring.dbo.sp_GetListOfFileWithSize N'D:\FTP\monitoring\availability\rackwatch\hourly\'
--exec stage_monitoring.dbo.sp_GetListOfFileWithSize N'D:\FTP\monitoring\availability\rackwatch\daily\'
--exec stage_monitoring.dbo.sp_GetListOfFileWithSize N'D:\FTP\monitoring\availability\rackwatch\monthly\'

--Sitescope
exec stage_monitoring.dbo.sp_GetListOfFileWithSize N'D:\FTP\monitoring\availability\sitescope\hourly\'
--exec stage_monitoring.dbo.sp_GetListOfFileWithSize N'D:\FTP\monitoring\availability\sitescope\daily\'
--exec stage_monitoring.dbo.sp_GetListOfFileWithSize N'D:\FTP\monitoring\availability\sitescope\monthly\'

--MaaS
exec stage_monitoring.dbo.sp_GetListOfFileWithSize N'D:\FTP\monitoring\availability\maas\hourly\'
--exec stage_monitoring.dbo.sp_GetListOfFileWithSize N'D:\FTP\monitoring\availability\maas\daily\'
--exec stage_monitoring.dbo.sp_GetListOfFileWithSize N'D:\FTP\monitoring\availability\maas\monthly\'


exec sp_delete_0_files

delete from stage_monitoring.dbo.ref_current_file_list
	where
		size_KB < 1.00
	


--STEP 2 - have any of these files been processed and need to be archived
--clear out current list
truncate table stage_monitoring.dbo.ref_current_file_list_archive

--ALL Archives
exec stage_monitoring.dbo.sp_GetListOfFileWithSize_Archive N'D:\FTP\monitoring\availability\archive\'


--GET ROW COUNTS FOR FILES
begin

	declare @file_location	varchar(1024)
	declare @file_name_txt	varchar(255)
	
	declare file_move cursor LOCAL fast_forward for
	select 
		file_location,
		file_name_txt	
	from 
		stage_monitoring.dbo.ref_current_file_list


	open file_move
	fetch next from file_move into @file_location, @file_name_txt

	while @@FETCH_STATUS=0
	begin
			
		exec dbo.sp_get_row_count @file_location, @file_name_txt
		
		fetch next from file_move into @file_location, @file_name_txt
	
	end
	
	close file_move
	deallocate  file_move

end


end


if @process_check <> 0
begin
	print 'Process is still running.  Please check progress of current process'
end

GO
/****** Object:  StoredProcedure [dbo].[sp_get_file_load_list]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[sp_get_file_load_list]

as

declare @process_check as int

set @process_check = (
						select
							count(*)	as total_count
						from
							stage_monitoring.dbo.ref_processed_file_list
						where
							iscomplete in ('in_progress','stage_complete','inserting_into_production')
						OR  iscomplete like '%stage_complete%'
					  )
								

if @process_check = 0
begin

	truncate table stage_monitoring.dbo.ref_file_load
	print 'Load stage_monitoring.dbo.ref_file_load'
	select getdate()
		
	insert into stage_monitoring.dbo.ref_file_load
	(
		file_location,
		file_name_txt,
		file_type
	)
	select
		file_location,
		file_name_txt,
		case
			when file_name_txt like '%hourly%'	then 'hourly'
			when file_name_txt like '%daily%'	then 'daily'
			when file_name_txt like '%monthly%'	then 'monthly'
		else
			'AUDIT'
		end	as file_type
	from
		stage_monitoring.dbo.ref_current_file_list
	where
		file_name_txt not in (select file_name_txt from stage_monitoring.dbo.ref_processed_file_list)

	print 'Run dbo.sp_stage_monitoring_files'
	select getdate()	
		
	--exec step 3 - start stage process if check = 0 Natasha Gajic - no changes
	exec dbo.sp_stage_monitoring_files

	print 'Run dbo.udsp_populate_report_account_device_daily'
	select getdate()	
	--Natasha Gajic added
	exec udsp_populate_report_account_device_daily
	print 'Run dbo.sp_stage_report_monitoring_hourly_table'
	select getdate()
	--exec step 4 - when step 3 completes / stage into staging report tables -Natasha Gajic - changed
	exec dbo.sp_stage_report_monitoring_hourly_table
	--print 'Run dbo.sp_stage_report_monitoring_hourly_NULL_CATCH'
	select getdate()
	--exec step 4.1 - write off recorsd with null attributes to NULL_HOLD table for processing later in the day -Natasha Gajic changed added maas
	--exec dbo.sp_stage_report_monitoring_hourly_NULL_CATCH
	print 'Run dbo.sp_insert_report_monitoring_hourly'
	select getdate()
	--exec step 5 - insert into report tables from staging report tables --Natasha gajic changed 
	exec dbo.sp_insert_report_monitoring_hourly
	print 'Run dbo.sp_archive_files'
	select getdate()
	--exec step 6 - archive files that have processed
	exec dbo.sp_archive_files
	
		
end

if @process_check <> 0

print 'Process is still running.  Please check progress of current process'

GO
/****** Object:  StoredProcedure [dbo].[sp_get_file_purge_list]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 6/18/2013
-------------------------------------------------------------------------------------------

Description:
--------------


Modifications:
--------------

-------------------------------------------------------------------------------------------
*/ 

CREATE procedure [dbo].[sp_get_file_purge_list]

as

truncate table stage_monitoring.dbo.ref_file_purge
	
insert into stage_monitoring.dbo.ref_file_purge
(
	file_location,
	file_name_txt
)
select
	b.file_location,
	b.file_name_txt
from
	stage_monitoring.dbo.ref_processed_file_list b
	
	inner join stage_monitoring.dbo.ref_current_file_list_archive z
		on b.file_name_txt = z.file_name_txt
where
	31 <= datediff(dd,b.staging_complete,getdate())
	


GO
/****** Object:  StoredProcedure [dbo].[sp_get_row_count]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 3/7/2013
-------------------------------------------------------------------------------------------

Description:
--------------
Monitoring_Process_Poll_State_Changes

Modifications:
--------------

-------------------------------------------------------------------------------------------
*/ 

create procedure [dbo].[sp_get_row_count]

@file_location	as varchar(1024),
@file_name_txt	as varchar(255)

as

----------------------------------------------------
----------------------------------------------------

SET nocount ON

DECLARE  @FileName varchar(8000)
DECLARE  @NumLines int 
DECLARE  @XPCmdString varchar(8000)
 
SET @FileName = @file_location + @file_name_txt
SET @XPCmdString =  'find /V /C "nothingcontainsthisstring" ' + @FileName
 
CREATE TABLE #XPOutput (XPLineOut varchar(1000))
INSERT INTO #XPOutput EXEC master..xp_cmdshell @XPCmdString
DELETE FROM #XPOutput WHERE XPLineOut IS NULL
 
SELECT @NumLines =  SUBSTRING (XPLineOut, 12 + 
len(@FileName) + 2, 1000) FROM #XPOutput

update a
	set	a.row_count = @NumLines
from
	stage_monitoring.dbo.ref_current_file_list a
where
	file_location = @file_location
and file_name_txt = @file_name_txt

drop table #XPOutput


GO
/****** Object:  StoredProcedure [dbo].[sp_GetListOfFileWithSize]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE  PROCEDURE   [dbo].[sp_GetListOfFileWithSize]  
(
    @Dir    VARCHAR(1000)
)
AS
---------------------------------------------------------------------------------------------
-- Variable decleration
---------------------------------------------------------------------------------------------
    declare @curdir nvarchar(400)
    declare @line varchar(400)
    declare @command varchar(400)
    declare @counter int

    DECLARE @1MB    DECIMAL
    SET     @1MB = 1024 * 1024

    DECLARE @1KB    DECIMAL
    SET     @1KB = 1024 

---------------------------------------------------------------------------------------------
-- Temp tables creation
---------------------------------------------------------------------------------------------
CREATE TABLE #dirs (DIRID int identity(1,1), directory varchar(400))
CREATE TABLE #tempoutput (line varchar(400))
CREATE TABLE output (Directory varchar(400), FilePath VARCHAR(400), SizeInMB DECIMAL(13,2), SizeInKB DECIMAL(13,2))

CREATE TABLE #tempFilePaths (Files VARCHAR(500))
CREATE TABLE #tempFileInformation (FilePath VARCHAR(500), FileSize VARCHAR(100))

---------------------------------------------------------------------------------------------
-- Call xp_cmdshell
---------------------------------------------------------------------------------------------    

     SET @command = 'dir "'+ @Dir +'" /S/O/B/A:D'
     INSERT INTO #dirs exec xp_cmdshell @command
     INSERT INTO #dirs SELECT @Dir
     SET @counter = (select count(*) from #dirs)

---------------------------------------------------------------------------------------------
-- Process the return data
---------------------------------------------------------------------------------------------      

        WHILE @Counter <> 0
          BEGIN
            DECLARE @filesize INT
            SET @curdir = (SELECT directory FROM #dirs WHERE DIRID = @counter)
            SET @command = 'dir "' + @curdir +'"'
            ------------------------------------------------------------------------------------------
                -- Clear the table
                DELETE FROM #tempFilePaths


                INSERT INTO #tempFilePaths
                EXEC MASTER..XP_CMDSHELL @command 

                --delete all directories
                DELETE #tempFilePaths WHERE Files LIKE '%<dir>%'

                --delete all informational messages
                DELETE #tempFilePaths WHERE Files LIKE ' %'

                --delete the null values
                DELETE #tempFilePaths WHERE Files IS NULL

                --get rid of dateinfo
                UPDATE #tempFilePaths SET files =RIGHT(files,(LEN(files)-20))

                --get rid of leading spaces
                UPDATE #tempFilePaths SET files =LTRIM(files)

                --split data into size and filename
                ----------------------------------------------------------
                -- Clear the table
                DELETE FROM #tempFileInformation;

                -- Store the FileName & Size
                INSERT INTO #tempFileInformation
                SELECT  
                        RIGHT(files,LEN(files) -PATINDEX('% %',files)) AS FilePath,
                        LEFT(files,PATINDEX('% %',files)) AS FileSize
                FROM    #tempFilePaths

                --------------------------------
                --  Remove the commas
                UPDATE  #tempFileInformation
                SET     FileSize = REPLACE(FileSize, ',','')



                --------------------------------------------------------------
                -- Store the results in the output table
                --------------------------------------------------------------

                INSERT INTO stage_monitoring.dbo.ref_current_file_list--(FilePath, SizeInMB, SizeInKB)
                SELECT  
                        @curdir,
                        FilePath,
                        getdate(),
                        CAST(CAST(FileSize AS DECIMAL(13,2))/ @1MB AS DECIMAL(13,2)),
                        CAST(CAST(FileSize AS DECIMAL(13,2))/ @1KB AS DECIMAL(13,2)),
                        0
                FROM    #tempFileInformation

            --------------------------------------------------------------------------------------------


            Set @counter = @counter -1
           END


    DELETE FROM OUTPUT WHERE Directory is null       
----------------------------------------------
-- DROP temp tables
----------------------------------------------           
DROP TABLE #Tempoutput  
DROP TABLE #dirs  
DROP TABLE #tempFilePaths  
DROP TABLE #tempFileInformation  
--DROP TABLE #tempfinal  
DROP TABLE output 

GO
/****** Object:  StoredProcedure [dbo].[sp_GetListOfFileWithSize_Archive]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE  PROCEDURE   [dbo].[sp_GetListOfFileWithSize_Archive]  
(
    @Dir    VARCHAR(1000)
)
AS
---------------------------------------------------------------------------------------------
-- Variable decleration
---------------------------------------------------------------------------------------------
    declare @curdir nvarchar(400)
    declare @line varchar(400)
    declare @command varchar(400)
    declare @counter int

    DECLARE @1MB    DECIMAL
    SET     @1MB = 1024 * 1024

    DECLARE @1KB    DECIMAL
    SET     @1KB = 1024 

---------------------------------------------------------------------------------------------
-- Temp tables creation
---------------------------------------------------------------------------------------------
CREATE TABLE #dirs (DIRID int identity(1,1), directory varchar(400))
CREATE TABLE #tempoutput (line varchar(400))
CREATE TABLE output (Directory varchar(400), FilePath VARCHAR(400), SizeInMB DECIMAL(13,2), SizeInKB DECIMAL(13,2))

CREATE TABLE #tempFilePaths (Files VARCHAR(500))
CREATE TABLE #tempFileInformation (FilePath VARCHAR(500), FileSize VARCHAR(100))

---------------------------------------------------------------------------------------------
-- Call xp_cmdshell
---------------------------------------------------------------------------------------------    

     SET @command = 'dir "'+ @Dir +'" /S/O/B/A:D'
     INSERT INTO #dirs exec xp_cmdshell @command
     INSERT INTO #dirs SELECT @Dir
     SET @counter = (select count(*) from #dirs)

---------------------------------------------------------------------------------------------
-- Process the return data
---------------------------------------------------------------------------------------------      

        WHILE @Counter <> 0
          BEGIN
            DECLARE @filesize INT
            SET @curdir = (SELECT directory FROM #dirs WHERE DIRID = @counter)
            SET @command = 'dir "' + @curdir +'"'
            ------------------------------------------------------------------------------------------
                -- Clear the table
                DELETE FROM #tempFilePaths


                INSERT INTO #tempFilePaths
                EXEC MASTER..XP_CMDSHELL @command 

                --delete all directories
                DELETE #tempFilePaths WHERE Files LIKE '%<dir>%'

                --delete all informational messages
                DELETE #tempFilePaths WHERE Files LIKE ' %'

                --delete the null values
                DELETE #tempFilePaths WHERE Files IS NULL

                --get rid of dateinfo
                UPDATE #tempFilePaths SET files =RIGHT(files,(LEN(files)-20))

                --get rid of leading spaces
                UPDATE #tempFilePaths SET files =LTRIM(files)

                --split data into size and filename
                ----------------------------------------------------------
                -- Clear the table
                DELETE FROM #tempFileInformation;

                -- Store the FileName & Size
                INSERT INTO #tempFileInformation
                SELECT  
                        RIGHT(files,LEN(files) -PATINDEX('% %',files)) AS FilePath,
                        LEFT(files,PATINDEX('% %',files)) AS FileSize
                FROM    #tempFilePaths

                --------------------------------
                --  Remove the commas
                UPDATE  #tempFileInformation
                SET     FileSize = REPLACE(FileSize, ',','')



                --------------------------------------------------------------
                -- Store the results in the output table
                --------------------------------------------------------------

                INSERT INTO stage_monitoring.dbo.ref_current_file_list_archive--(FilePath, SizeInMB, SizeInKB)
                SELECT  
                        @curdir,
                        FilePath,
                        getdate(),
                        CAST(CAST(FileSize AS DECIMAL(13,2))/ @1MB AS DECIMAL(13,2)),
                        CAST(CAST(FileSize AS DECIMAL(13,2))/ @1KB AS DECIMAL(13,2)),
                        0
                FROM    #tempFileInformation

            --------------------------------------------------------------------------------------------


            Set @counter = @counter -1
           END


    DELETE FROM OUTPUT WHERE Directory is null       
----------------------------------------------
-- DROP temp tables
----------------------------------------------           
DROP TABLE #Tempoutput  
DROP TABLE #dirs  
DROP TABLE #tempFilePaths  
DROP TABLE #tempFileInformation  
--DROP TABLE #tempfinal  
DROP TABLE output 


update a
	set a.file_processed_datetime	=	b.etl_time
	,	a.processed					=	(
											case 
												when b.iscomplete = 'complete'	then 1
											else
												0
											end
										)
from
	stage_monitoring.dbo.ref_current_file_list_archive a
	
	left join stage_monitoring.dbo.ref_processed_file_list b
		on a.file_name_txt = b.file_name_txt
		


GO
/****** Object:  StoredProcedure [dbo].[sp_insert_report_monitoring_daily]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 6/26/2013
-------------------------------------------------------------------------------------------

Description:
--------------


Modifications:
--------------

-------------------------------------------------------------------------------------------
*/ 

create procedure [dbo].[sp_insert_report_monitoring_daily]

as

------------------------------------------------------------
--truncate table stage_three_dw.dbo.Report_Monitoring_Availability_Daily_TEST

declare @time_key_lookup	int

set @time_key_lookup		= (select distinct time_key from stage_three_dw.dbo.dim_time where time_full_date = cast(convert(varchar,getdate()-2, 101) as datetime) )
------------------------------------------------------------

insert into stage_three_dw.dbo.Report_Monitoring_Availability_Daily_TEST
SELECT 
	[Time_KEY]
	,'1900-01-01 00:00:00'
	,[Time_Month_Number]
	,[Time_Month_Desc]
	,[Time_Month_Abbr]
	,[Time_Year_Number]
	,[Time_Quarter_Number]
	,'1900-01-01 00:00:00'
	,[Account_Name]
	,[Account_Number]
	,[Account_Type]
	,[Device_Host_Name]
	,[Device_Number]
	,[Device_Status]
	,[Monitor_Type]
	,[Monitor_Name]
	,[Monitor_Silo]
	,[Source_System_Name]
	,SUM([uptimeDuration])					as uptimeDuration
	,SUM([downtimeDurationWithSupression])
	,SUM([downtimeDurationWithoutSupression])
	,AVG([uptimePercentageWithSupression])
	,AVG([uptimePercentageWithoutSupression])
	,[row_key]
	,[etl_date]
	,[Monitor_ID]
	,[Device_Source]
	,[Account_Source]
	,[Monitor_Type_Group]
	,'no_file'--[file_name_txt]
FROM 
	[Stage_Monitoring].[dbo].[stg_report_monitoring_availability_hourly]
where
	--time_key = @time_key_lookup

	file_name_txt in ('UpTimeCalc_Hourly_RackWatch1371163208.csv','UpTimeCalc_Hourly_RackWatch1371163851.csv',
					  'UpTimeCalc_Hourly_SiteScope1371210625.csv','UpTimeCalc_Hourly_MaaS1371215063.csv')
group by
	[Time_KEY]
	,[Time_Month_Number]
	,[Time_Month_Desc]
	,[Time_Month_Abbr]
	,[Time_Year_Number]
	,[Time_Quarter_Number]
	,[Account_Name]
	,[Account_Number]
	,[Account_Type]
	,[Device_Host_Name]
	,[Device_Number]
	,[Device_Status]
	,[Monitor_Type]
	,[Monitor_Name]
	,[Monitor_Silo]
	,[Source_System_Name]
	,[row_key]
	,[etl_date]
	,[Monitor_ID]
	,[Device_Source]
	,[Account_Source]
	,[Monitor_Type_Group]



	
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_report_monitoring_hourly]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 6/25/2013
-------------------------------------------------------------------------------------------

Description:
--------------


Modifications:
--------------
Natasha Gajic 07/20/2015 - changes for MaaS
-------------------------------------------------------------------------------------------
*/

CREATE  procedure [dbo].[sp_insert_report_monitoring_hourly]

as

------------------------------------------------------------
--check record count
--if record count >250,000, then insert in by file_name_txt
--else, just insert straight across
------------------------------------------------------------

------------------------------------------------------------
declare @file_check		int
declare @fileRcount int
declare @idNumber bigint

set @file_check	= (select count(*) from [Stage_Monitoring].[dbo].[stg_report_monitoring_availability_hourly])

------------------------------------------------------------
 
if @file_check <= 250000
begin

	insert into stage_three_dw.dbo.Report_Monitoring_Availability_Hourly
			(
	     [Time_KEY]
		,[Time_Full_Date]
		,[Time_Month_Number]
		,[Time_Month_Desc]
		,[Time_Month_Abbr]
		,[Time_Year_Number]
		,[Time_Quarter_Number]
		,[HMS_Military_Hour_Number]
		,[Time_Full_Date_HMS]
		,[End_Time_Key]
		,[End_Time_Full_Date]
		,[End_Time_Month_Number]
		,[End_Time_Month_Desc]
		,[End_Time_Month_Abbr]
		,[End_Time_Year_Number]
		,[End_Time_Quater_Number]
		,[End_Time_Quater_Desc]
		,[End_HMS_Military_Hour_Number]
		,[End_Time_Full_Date_HMS]
		,[Account_Name]
		,[Account_Number]
		,[Account_Type]
		,[Device_Host_Name]
		,[Device_Number]
		,[Device_Status]
		,[Monitor_Type]
		,[Monitor_Name]
		,[Monitor_Silo]
		,[Source_System_Name]
		,[uptimeDuration]
		,[downtimeDurationWithSupression]
		,[downtimeDurationWithoutSupression]
		,[uptimePercentageWithSupression]
		,[uptimePercentageWithoutSupression]
		,[row_key]
		,[etl_date]
		,[Monitor_ID]
		,[Device_Source]
		,[Account_Source]
		,[Monitor_Type_Group]
		,[file_name_txt]
		)
	select
		A.[Time_KEY]
		,A.[Time_Full_Date]
		,A.[Time_Month_Number]
		,A.[Time_Month_Desc]
		,A.[Time_Month_Abbr]
		,A.[Time_Year_Number]
		,A.[Time_Quarter_Number]
		,A.[HMS_Military_Hour_Number]
		,A.[Time_Full_Date_HMS]
		,A.[End_Time_Key]
		,A.[End_Time_Full_Date]
		,A.[End_Time_Month_Number]
		,A.[End_Time_Month_Desc]
		,A.[End_Time_Month_Abbr]
		,A.[End_Time_Year_Number]
		,A.[End_Time_Quarter_Number]
		,A.[End_Time_Quarter_Desc]
		,A.[End_HMS_Military_Hour_Number]
		,A.[End_Time_Full_Date_HMS]
		,A.[Account_Name]
		,A.[Account_Number]
		,A.[Account_Type]
		,A.[Device_Host_Name]
		,A.[Device_Number]
		,A.[Device_Status]
		,A.[Monitor_Type]
		,A.[Monitor_Name]
		,A.[Monitor_Silo]
		,A.[Source_System_Name]
		,A.[uptimeDuration]
		,A.[downtimeDurationWithSupression]
		,A.[downtimeDurationWithoutSupression]
		,A.[uptimePercentageWithSupression]
		,A.[uptimePercentageWithoutSupression]
		,A.[row_key]
		,A.[etl_date]
		,A.[Monitor_ID]
		,A.[Device_Source]
		,A.[Account_Source]
		,A.[Monitor_Type_Group]
		,A.[file_name_txt]
	from 
		Stage_Monitoring.dbo.stg_report_monitoring_availability_hourly A
	LEFT JOIN 
		Stage_Three_DW.dbo.Report_Monitoring_Availability_Hourly B
	ON	A.row_key=B.row_key
	AND	A.Time_Full_Date_HMS=B.Time_Full_Date_HMS
	WHERE
		B.row_key IS NULL		
	

end

------------------------------------------------------------

if @file_check > 250000
begin

	declare @file_name_txt_hold		varchar(255)

	declare file_move cursor LOCAL fast_forward for
	select
		distinct
		file_name_txt
	from 
		Stage_Monitoring.dbo.stg_report_monitoring_availability_hourly
	
	open file_move
	fetch next from file_move into @file_name_txt_hold
	
	while @@FETCH_STATUS=0
	begin

	

	set @fileRcount	= (select count(*) from [Stage_Monitoring].[dbo].[hourly_report_load_audit] where file_name = @file_name_txt_hold)
	if @fileRcount>0
	begin
	--RAISERROR('File has been processed', 18, 1)
	--RETURN -1
	print @file_name_txt_hold
	fetch next from file_move into @file_name_txt_hold
	end
	else
	BEGIN

	set @idNumber = (select max(id) from stage_three_dw.dbo.Report_Monitoring_Availability_Hourly)
	insert into [dbo].[hourly_report_load_audit] (file_name, start_id, status) values (@file_name_txt_hold,@idNumber,'in_progress');
	
	insert into 
		stage_three_dw.dbo.Report_Monitoring_Availability_Hourly
		(
	     [Time_KEY]
		,[Time_Full_Date]
		,[Time_Month_Number]
		,[Time_Month_Desc]
		,[Time_Month_Abbr]
		,[Time_Year_Number]
		,[Time_Quarter_Number]
		,[HMS_Military_Hour_Number]
		,[Time_Full_Date_HMS]
		,[End_Time_Key]
		,[End_Time_Full_Date]
		,[End_Time_Month_Number]
		,[End_Time_Month_Desc]
		,[End_Time_Month_Abbr]
		,[End_Time_Year_Number]
		,[End_Time_Quater_Number]
		,[End_Time_Quater_Desc]
		,[End_HMS_Military_Hour_Number]
		,[End_Time_Full_Date_HMS]
		,[Account_Name]
		,[Account_Number]
		,[Account_Type]
		,[Device_Host_Name]
		,[Device_Number]
		,[Device_Status]
		,[Monitor_Type]
		,[Monitor_Name]
		,[Monitor_Silo]
		,[Source_System_Name]
		,[uptimeDuration]
		,[downtimeDurationWithSupression]
		,[downtimeDurationWithoutSupression]
		,[uptimePercentageWithSupression]
		,[uptimePercentageWithoutSupression]
		,[row_key]
		,[etl_date]
		,[Monitor_ID]
		,[Device_Source]
		,[Account_Source]
		,[Monitor_Type_Group]
		,[file_name_txt]
		)
		
	select
		 A.[Time_KEY]
		,A.[Time_Full_Date]
		,A.[Time_Month_Number]
		,A.[Time_Month_Desc]
		,A.[Time_Month_Abbr]
		,A.[Time_Year_Number]
		,A.[Time_Quarter_Number]
		,A.[HMS_Military_Hour_Number]
		,A.[Time_Full_Date_HMS]
		,A.[End_Time_Key]
		,A.[End_Time_Full_Date]
		,A.[End_Time_Month_Number]
		,A.[End_Time_Month_Desc]
		,A.[End_Time_Month_Abbr]
		,A.[End_Time_Year_Number]
		,A.[End_Time_Quarter_Number]
		,A.[End_Time_Quarter_Desc]
		,A.[End_HMS_Military_Hour_Number]
		,A.[End_Time_Full_Date_HMS]
		,A.[Account_Name]
		,A.[Account_Number]
		,A.[Account_Type]
		,A.[Device_Host_Name]
		,A.[Device_Number]
		,A.[Device_Status]
		,A.[Monitor_Type]
		,A.[Monitor_Name]
		,A.[Monitor_Silo]
		,A.[Source_System_Name]
		,A.[uptimeDuration]
		,A.[downtimeDurationWithSupression]
		,A.[downtimeDurationWithoutSupression]
		,A.[uptimePercentageWithSupression]
		,A.[uptimePercentageWithoutSupression]
		,A.[row_key]
		,A.[etl_date]
		,A.[Monitor_ID]
		,A.[Device_Source]
		,A.[Account_Source]
		,A.[Monitor_Type_Group]
		,A.[file_name_txt]
	from 
		Stage_Monitoring.dbo.stg_report_monitoring_availability_hourly A
	--LEFT JOIN 
	--	Stage_Three_DW.dbo.Report_Monitoring_Availability_Hourly B
	--ON	A.row_key=B.row_key
	--AND	A.Time_Full_Date_HMS=B.Time_Full_Date_HMS
	WHERE
	--	B.row_key IS NULL	
	--AND	
	A.file_name_txt = @file_name_txt_hold

	set @idNumber = (select max(id) from stage_three_dw.dbo.Report_Monitoring_Availability_Hourly)
	update [dbo].[hourly_report_load_audit] set end_id=@idNumber, status ='completed' where file_name = @file_name_txt_hold
	
	
	fetch next from file_move into @file_name_txt_hold
		
	end
	
	--close file_move
	--deallocate  file_move

end
close file_move
	deallocate  file_move

--UPDATE stage_monitoring.dbo.ref_processed_file_list 
update a
	set		a.completed_datetime		=	getdate()
		,	a.iscomplete				=	'complete'
		,	a.reporting_row_count		=	z.total_row_count
		
from 
	stage_monitoring.dbo.ref_processed_file_list a
	
	inner join (
				select
					file_name_txt,
					count(*)	as total_row_count
				from
					stage_monitoring.dbo.stg_report_monitoring_availability_hourly
				group by
					file_name_txt
				) as z
			on a.file_name_txt = z.file_name_txt

/*

----------------------------------------------------------
--process null records in the hold table to get them
--in production
----------------------------------------------------------
declare @check_time_begin	int
set		@check_time_begin	= (select datepart(hh,GETDATE()))

if @check_time_begin in (4,5,6,21)
begin

	exec dbo.sp_stage_report_monitoring_hourly_NULL_CATCH_UPDATE

	declare	@etl_reprocess_date datetime
	set @etl_reprocess_date		=	getdate()


		--INSERT INTO REPORT HOURLY PRODUCTION WHEN READY
		insert into 
			stage_three_dw.dbo.Report_Monitoring_Availability_Hourly
			(
			 [Time_KEY]
			,[Time_Full_Date]
			,[Time_Month_Number]
			,[Time_Month_Desc]
			,[Time_Month_Abbr]
			,[Time_Year_Number]
			,[Time_Quarter_Number]
			,[HMS_Military_Hour_Number]
			,[Time_Full_Date_HMS]
			,[End_Time_Key]
			,[End_Time_Full_Date]
			,[End_Time_Month_Number]
			,[End_Time_Month_Desc]
			,[End_Time_Month_Abbr]
			,[End_Time_Year_Number]
			,[End_Time_Quater_Number]
			,[End_Time_Quater_Desc]
			,[End_HMS_Military_Hour_Number]
			,[End_Time_Full_Date_HMS]
			,[Account_Name]
			,[Account_Number]
			,[Account_Type]
			,[Device_Host_Name]
			,[Device_Number]
			,[Device_Status]
			,[Monitor_Type]
			,[Monitor_Name]
			,[Monitor_Silo]
			,[Source_System_Name]
			,[uptimeDuration]
			,[downtimeDurationWithSupression]
			,[downtimeDurationWithoutSupression]
			,[uptimePercentageWithSupression]
			,[uptimePercentageWithoutSupression]
			,[row_key]
			,[etl_date]
			,[Monitor_ID]
			,[Device_Source]
			,[Account_Source]
			,[Monitor_Type_Group]
			,[file_name_txt]
			)
		select
			 A.[Time_KEY]
			,A.[Time_Full_Date]
			,A.[Time_Month_Number]
			,A.[Time_Month_Desc]
			,A.[Time_Month_Abbr]
			,A.[Time_Year_Number]
			,A.[Time_Quarter_Number]
			,A.[HMS_Military_Hour_Number]
			,A.[Time_Full_Date_HMS]
			,A.[End_Time_Key]
			,A.[End_Time_Full_Date]
			,A.[End_Time_Month_Number]
			,A.[End_Time_Month_Desc]
			,A.[End_Time_Month_Abbr]
			,A.[End_Time_Year_Number]
			,A.[End_Time_Quarter_Number]
			,A.[End_Time_Quarter_Desc]
			,A.[End_HMS_Military_Hour_Number]
			,A.[End_Time_Full_Date_HMS]
			,A.[Account_Name]
			,A.[Account_Number]
			,A.[Account_Type]
			,A.[Device_Host_Name]
			,A.[Device_Number]
			,A.[Device_Status]
			,A.[Monitor_Type]
			,A.[Monitor_Name]
			,A.[Monitor_Silo]
			,A.[Source_System_Name]
			,A.[uptimeDuration]
			,A.[downtimeDurationWithSupression]
			,A.[downtimeDurationWithoutSupression]
			,A.[uptimePercentageWithSupression]
			,A.[uptimePercentageWithoutSupression]
			,A.[row_key]
			,@etl_reprocess_date
			,A.[Monitor_ID]
			,A.[Device_Source]
			,A.[Account_Source]
			,A.[Monitor_Type_Group]
			,A.[file_name_txt]
		from
			dbo.stg_report_monitoring_availability_hourly_NULL_HOLD A
		where
		(
			 Account_Name is not NULL
		  and Account_Number is not NULL
		  and Account_Source is not NULL
		  and Account_Type is not NULL
		  and Device_Host_Name is not NULL
		  and Device_Number is not NULL
		  and Device_Source is not NULL
		  and Device_Status is not NULL
		  and Monitor_ID is not NULL
		  and Monitor_Name is not NULL
		  and Monitor_Silo is not NULL
		  and Monitor_Type is not NULL
		  and monitor_type_group is not NULL
		)

		--INSERT INTO ADUIT TABLE SUMMARY of records inserted into Hourly production
		insert into stage_monitoring.dbo.ref_processed_file_list
			(
			file_type,
			file_location,	
			file_name_txt,	
			file_row_count,
			size_MB,
			size_KB,
			process_into_staging,	
			staging_complete,
			staging_row_count,
			staging_duration,
			process_into_reporting,
			reporting_row_count,
			reporting_duration,
			iscomplete,
			etl_time,
			completed_datetime
			)
			
		select
			'hourly',
			'HOURLY_NULL_CATCH',
			x.file_name_txt,
			x.stg_row_count,
			x.stg_row_count,
			x.stg_row_count,
			@etl_reprocess_date,
			@etl_reprocess_date,
			x.stg_row_count,
			0,
			@etl_reprocess_date,
			x.stg_row_count,
			0,
			'complete',
			@etl_reprocess_date,
			@etl_reprocess_date
		from
			(	
			select
				file_name_txt,
				count(*)	as stg_row_count
			from
				stage_monitoring.dbo.stg_report_monitoring_availability_hourly_NULL_HOLD
			where
			 Account_Name is not NULL
		  and Account_Number is not NULL
		  and Account_Source is not NULL
		  and Account_Type is not NULL
		  and Device_Host_Name is not NULL
		  and Device_Number is not NULL
		  and Device_Source is not NULL
		  and Device_Status is not NULL
		  and Monitor_ID is not NULL
		  and Monitor_Name is not NULL
		  and Monitor_Silo is not NULL
		  and Monitor_Type is not NULL
		  and monitor_type_group is not NULL
			group by
				file_name_txt
			) x
			
			
		--DELETE processed records that inserted into the hourly table
		delete from stage_monitoring.dbo.stg_report_monitoring_availability_hourly_NULL_HOLD
		where
		(
			 Account_Name is not NULL
		  and Account_Number is not NULL
		  and Account_Source is not NULL
		  and Account_Type is not NULL
		  and Device_Host_Name is not NULL
		  and Device_Number is not NULL
		  and Device_Source is not NULL
		  and Device_Status is not NULL
		  and Monitor_ID is not NULL
		  and Monitor_Name is not NULL
		  and Monitor_Silo is not NULL
		  and Monitor_Type is not NULL
		  and monitor_type_group is not NULL
		)
	end


	*/

end



GO
/****** Object:  StoredProcedure [dbo].[sp_investigate_file_size]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




create  PROCEDURE   [dbo].[sp_investigate_file_size]  
(
    @Dir    VARCHAR(1000)
)
AS
---------------------------------------------------------------------------------------------
-- Variable decleration
---------------------------------------------------------------------------------------------
    declare @curdir nvarchar(400)
    declare @line varchar(400)
    declare @command varchar(400)
    declare @counter int

    DECLARE @1MB    DECIMAL
    SET     @1MB = 1024 * 1024

    DECLARE @1KB    DECIMAL
    SET     @1KB = 1024 

---------------------------------------------------------------------------------------------
-- Temp tables creation
---------------------------------------------------------------------------------------------
CREATE TABLE #dirs (DIRID int identity(1,1), directory varchar(400))
CREATE TABLE #tempoutput (line varchar(400))
CREATE TABLE output (Directory varchar(400), FilePath VARCHAR(400), SizeInMB DECIMAL(13,2), SizeInKB DECIMAL(13,2))

CREATE TABLE #tempFilePaths (Files VARCHAR(500))
CREATE TABLE #tempFileInformation (FilePath VARCHAR(500), FileSize VARCHAR(100))

---------------------------------------------------------------------------------------------
-- Call xp_cmdshell
---------------------------------------------------------------------------------------------    

     SET @command = 'dir "'+ @Dir +'" /S/O/B/A:D'
     INSERT INTO #dirs exec xp_cmdshell @command
     INSERT INTO #dirs SELECT @Dir
     SET @counter = (select count(*) from #dirs)

---------------------------------------------------------------------------------------------
-- Process the return data
---------------------------------------------------------------------------------------------      

        WHILE @Counter <> 0
          BEGIN
            DECLARE @filesize INT
            SET @curdir = (SELECT directory FROM #dirs WHERE DIRID = @counter)
            SET @command = 'dir "' + @curdir +'"'
            ------------------------------------------------------------------------------------------
                -- Clear the table
                DELETE FROM #tempFilePaths


                INSERT INTO #tempFilePaths
                EXEC MASTER..XP_CMDSHELL @command 

                --delete all directories
                DELETE #tempFilePaths WHERE Files LIKE '%<dir>%'

                --delete all informational messages
                DELETE #tempFilePaths WHERE Files LIKE ' %'

                --delete the null values
                DELETE #tempFilePaths WHERE Files IS NULL

                --get rid of dateinfo
                UPDATE #tempFilePaths SET files =RIGHT(files,(LEN(files)-20))

                --get rid of leading spaces
                UPDATE #tempFilePaths SET files =LTRIM(files)

                --split data into size and filename
                ----------------------------------------------------------
                -- Clear the table
                DELETE FROM #tempFileInformation;

                -- Store the FileName & Size
                INSERT INTO #tempFileInformation
                SELECT  
                        RIGHT(files,LEN(files) -PATINDEX('% %',files)) AS FilePath,
                        LEFT(files,PATINDEX('% %',files)) AS FileSize
                FROM    #tempFilePaths

                --------------------------------
                --  Remove the commas
                UPDATE  #tempFileInformation
                SET     FileSize = REPLACE(FileSize, ',','')



                --------------------------------------------------------------
                -- Store the results in the output table
                --------------------------------------------------------------

                INSERT INTO stage_monitoring.dbo.investigate_files
                SELECT  
                        @curdir,
                        FilePath,
                        getdate(),
                        CAST(CAST(FileSize AS DECIMAL(13,2))/ @1MB AS DECIMAL(13,2)),
                        CAST(CAST(FileSize AS DECIMAL(13,2))/ @1KB AS DECIMAL(13,2)),
                        0
                FROM    #tempFileInformation

            --------------------------------------------------------------------------------------------


            Set @counter = @counter -1
           END


    DELETE FROM OUTPUT WHERE Directory is null       
----------------------------------------------
-- DROP temp tables
----------------------------------------------           
DROP TABLE #Tempoutput  
DROP TABLE #dirs  
DROP TABLE #tempFilePaths  
DROP TABLE #tempFileInformation  
--DROP TABLE #tempfinal  
DROP TABLE output 

GO
/****** Object:  StoredProcedure [dbo].[sp_investigate_files]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 7/7/2013
-------------------------------------------------------------------------------------------

Description:
--------------


Modifications:
--------------

-------------------------------------------------------------------------------------------
*/ 

CREATE procedure [dbo].[sp_investigate_files]

as

truncate table stage_monitoring.dbo.investigate_files

--look files
exec stage_monitoring.dbo.sp_investigate_file_size N'D:\FTP\monitoring\availability\look\'
	
--GET ROW COUNTS FOR FILES
begin

	declare @file_location	varchar(1024)
	declare @file_name_txt	varchar(255)
	
	declare file_move cursor LOCAL fast_forward for
	select 
		file_location,
		file_name_txt	
	from 
		stage_monitoring.dbo.investigate_files


	open file_move
	fetch next from file_move into @file_location, @file_name_txt

	while @@FETCH_STATUS=0
	begin
			
		SET nocount ON

		DECLARE  @FileName varchar(8000)
		DECLARE  @NumLines int 
		DECLARE  @XPCmdString varchar(8000)
		 
		SET @FileName = @file_location + @file_name_txt
		SET @XPCmdString =  'find /V /C "nothingcontainsthisstring" ' + @FileName
		 
		CREATE TABLE #XPOutput (XPLineOut varchar(1000))
		INSERT INTO #XPOutput EXEC master..xp_cmdshell @XPCmdString
		DELETE FROM #XPOutput WHERE XPLineOut IS NULL
		 
		SELECT @NumLines =  SUBSTRING (XPLineOut, 12 + 
		len(@FileName) + 2, 1000) FROM #XPOutput

		update a
			set	a.row_count = @NumLines
		from
			stage_monitoring.dbo.investigate_files a
		where
			a.file_location = @file_location
		and a.file_name_txt = @file_name_txt

		drop table #XPOutput
		
		fetch next from file_move into @file_location, @file_name_txt
	
	end
	
	close file_move
	deallocate  file_move

end


truncate table stage_monitoring.dbo.stg_investigate_monitoring

	declare @sql_cmd			varchar(4000)
	declare @file_path			varchar(2000)
	declare @file_location_2	varchar(900)
	declare @file_name_txt_2	varchar(900)
	
	declare file_move cursor LOCAL fast_forward for
		select
			a.file_location,
			a.file_name_txt
		from
			stage_monitoring.dbo.investigate_files a


	open file_move
	fetch next from file_move into @file_location_2, @file_name_txt_2

	while @@FETCH_STATUS=0
	begin

	set @file_path = @file_location_2 + @file_name_txt_2

	set @sql_cmd = '
					bulk insert  stage_monitoring.dbo.stg_investigate_monitoring
					from ''' + @file_path + '''
					with
					(
					formatfile = ''D:\FTP\monitoring\xml_schemas\Availability_Format.xml''
					)

					'
	exec(@sql_cmd)
	
	fetch next from file_move into @file_location_2, @file_name_txt_2
	
	end
	
	close file_move
	deallocate  file_move



select
	a.ID,
	a.Time_Full_Date_HMS,
	a.row_key,
	a.file_name_txt
from
	stage_three_dw.dbo.Report_Monitoring_Availability_Hourly a with (nolock)
	
	inner join (
				select
					row_key,
					converted_start_time
				from
					stage_monitoring.dbo.stg_investigate_monitoring with (nolock)
				) x
				on	x.row_key = a.row_key
				and x.converted_start_time = a.Time_Full_Date_HMS


GO
/****** Object:  StoredProcedure [dbo].[sp_stage_monitoring_data]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 6/18/2013
-------------------------------------------------------------------------------------------

Description:
--------------


Modifications:
--------------

-------------------------------------------------------------------------------------------
*/ 

CREATE procedure [dbo].[sp_stage_monitoring_data]

@file_location	varchar(1024),
@file_name_txt	varchar(255),
@file_type		varchar(100)

as

-----------------------------------
--TEST PARAMS----------------------
-----------------------------------
--declare @file_location	varchar(1024)
--declare @file_name_txt	varchar(255)
--declare @file_type		varchar(100)

--set @file_location	= 'S:\FTP\monitoring\availability\maas\daily\'
--set @file_name_txt	= 'UpTimeCalc_Daily_MaaS1371216874.csv'
--set @file_type		= 'daily'
-----------------------------------
-----------------------------------

declare @sql_cmd		as varchar(4000)
declare @file_path		as varchar(2000)

set @file_path = @file_location + @file_name_txt

---**************** HOURLY INSERT *****************---
if @file_type = 'hourly'
begin
set @sql_cmd = '
	bulk insert  stage_monitoring.dbo.stg_monitoring_hourly
	from ''' + @file_path + '''
	with
	(
	formatfile = ''D:\FTP\monitoring\xml_schemas\Availability_Format.xml''
	)
	update x
		set		x.file_name_txt			= ''' + @file_name_txt + '''
			,	x.converted_start_time	= dbo.udf_TS(x.start_time_unix_ts)
	from
		stage_monitoring.dbo.stg_monitoring_hourly x
	where
		x.file_name_txt is null
		
	update a
		set		a.staging_complete		= getdate()
			,	a.staging_row_count		= @@RowCount
			,	a.staging_duration		= datediff(ss,a.process_into_staging,getdate())
			,	a.iscomplete			= (CASE
											when a.file_row_count = @@RowCount then ''stage_complete''
										  else
											''stage_complete_with_errors''
										  end)
	from
		stage_monitoring.dbo.ref_processed_file_list a
	where
		a.file_type		= ''hourly''
	and a.file_name_txt = ''' + @file_name_txt + '''	
	
'
end


-----**************** DAILY INSERT *****************---
if @file_type = 'daily'
begin
set @sql_cmd = '
	bulk insert  stage_monitoring.dbo.stg_monitoring_daily
	from ''' + @file_path + '''
	with
	(
	formatfile = ''D:\FTP\monitoring\xml_schemas\Availability_Format.xml''
	)
	update x
		set		x.file_name_txt			= ''' + @file_name_txt + '''
			,	x.converted_start_time	= dbo.udf_TS(x.start_time_unix_ts)
	from
		stage_monitoring.dbo.stg_monitoring_daily x
	where
		x.file_name_txt is null
		
	
	update a
		set		a.staging_complete		= getdate()
			,	a.staging_row_count		= @@RowCount
			,	a.staging_duration		= datediff(ss,a.process_into_staging,getdate())
			,	a.iscomplete			= (CASE
											when a.file_row_count = @@RowCount then ''stage_complete''
										  else
											''stage_complete_with_errors''
										  end)
	from
		stage_monitoring.dbo.ref_processed_file_list a
	where
		a.file_type		= ''daily''
	and a.file_name_txt = ''' + @file_name_txt + '''	
	
'
end


-----**************** MONTHLY INSERT *****************---

if @file_type = 'monthly'
begin
set @sql_cmd = '
	bulk insert  stage_monitoring.dbo.stg_monitoring_monthly
	from ''' + @file_path + '''
	with
	(
	formatfile = ''D:\FTP\monitoring\xml_schemas\Availability_Format.xml''
	)
	update x
		set		x.file_name_txt			= ''' + @file_name_txt + '''
			,	x.converted_start_time	= dbo.udf_TS(x.start_time_unix_ts)
	from
		stage_monitoring.dbo.stg_monitoring_monthly x
	where
		x.file_name_txt is null


	update a
		set		a.staging_complete		= getdate()
			,	a.staging_row_count		= @@RowCount
			,	a.staging_duration		= datediff(ss,a.process_into_staging,getdate())
			,	a.iscomplete			= (CASE
											when a.file_row_count = @@RowCount then ''stage_complete''
										  else
											''stage_complete_with_errors''
										  end)
	from
		stage_monitoring.dbo.ref_processed_file_list a
	where
		a.file_type		= ''monthly''
	and a.file_name_txt = ''' + @file_name_txt + '''	
	
'
end

exec(@sql_cmd)



GO
/****** Object:  StoredProcedure [dbo].[sp_stage_monitoring_files]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 6/18/2013
-------------------------------------------------------------------------------------------

Description:
--------------


Modifications:
--------------

-------------------------------------------------------------------------------------------
*/ 

CREATE procedure [dbo].[sp_stage_monitoring_files]

as

begin

	--clear out staging tables
	truncate table stage_monitoring.dbo.stg_monitoring_hourly
	truncate table stage_monitoring.dbo.stg_monitoring_daily
	truncate table stage_monitoring.dbo.stg_monitoring_monthly

	declare @file_location	varchar(1024)
	declare @file_name_txt	varchar(255)
	declare @file_type		varchar(100)
	declare @file_row_count	int
	declare @size_MB		decimal(36,2)
	declare @size_KB		decimal(36,2)
	declare @etl_time		datetime
	
	set	@etl_time	 = (GETDATE())
	
	--get current list of files that need to be processed that have not been processed
	declare file_move cursor LOCAL fast_forward for
	select
		a.file_location,
		a.file_name_txt,
		a.file_type,
		b.row_count,
		b.size_MB,
		b.size_KB,
		@etl_time
	from
		stage_monitoring.dbo.ref_file_load a
		
		inner join stage_monitoring.dbo.ref_current_file_list b
			on a.file_name_txt = b.file_name_txt
	where
		a.file_name_txt not in (select file_name_txt from dbo.ref_processed_file_list where iscomplete = 'complete')
		
	open file_move
	fetch next from file_move into @file_location, @file_name_txt, @file_type, @file_row_count, @size_MB, @size_KB, @etl_time

	while @@FETCH_STATUS=0
	begin
	
		--insert pre staging attributes
		insert into stage_monitoring.dbo.ref_processed_file_list
		(
		[file_type]
		,[file_location]
		,[file_name_txt]
		,[file_row_count]
		,[size_MB]
		,[size_KB]
		,[process_into_staging]
		,[staging_complete]
		,[staging_row_count]
		,[staging_duration]
		,[iscomplete]
		,[etl_time]
		)
		select
			@file_type,
			@file_location,
			@file_name_txt,
			@file_row_count,
			@size_MB,
			@size_KB,
			getdate(),
			'1900-01-01 00:00:00',
			-1,
			-1,
			'in_progress',
			@etl_time
		
		exec dbo.sp_stage_monitoring_data @file_location, @file_name_txt, @file_type
			
		fetch next from file_move into @file_location, @file_name_txt, @file_type, @file_row_count, @size_MB, @size_KB, @etl_time
	
	end
	
	close file_move
	deallocate  file_move
	
	
	
	
	----------------------------------------------------
	--staging is complete - update central time to UTC
	--updated 2013-07-05 STOP COVERTING TO UTC - KEEP Central Time
	----------------------------------------------------	
	---UPDATE TO UTC
	--declare @start_t	datetime
	--declare @end_t		datetime
	--declare @dst_diff	int
	--declare @utc_diff	int
	
	--set @start_t		= (select dst_begins	from stage_three_dwmaint.dbo.wrk_time_zone with (nolock) where [YEAR] = YEAR(getdate()) and Time_Zone = 'CT') 
	--set @end_t			= (select dst_ends		from stage_three_dwmaint.dbo.wrk_time_zone with (nolock) where [YEAR] = YEAR(getdate()) and Time_Zone = 'CT') 
	--set @dst_diff		= (select utc_dst_diff	from stage_three_dwmaint.dbo.wrk_time_zone with (nolock) where [YEAR] = YEAR(getdate()) and Time_Zone = 'CT')
	--set @utc_diff		= (select utc_diff		from stage_three_dwmaint.dbo.wrk_time_zone with (nolock) where [YEAR] = YEAR(getdate()) and Time_Zone = 'CT')
	
		
	--update utc
	--	set
	--		utc.converted_start_time = 	(
	--										case
	--											when utc.converted_start_time between @start_t AND @end_t then dateadd(hh,(@dst_diff * -1),utc.converted_start_time)
	--										else
	--											dateadd(hh,(@utc_diff * -1),utc.converted_start_time)
	--										end
	--									)		
	--from
	--	stage_monitoring.dbo.stg_monitoring_hourly utc with (nolock)
		
			
	
	
	----------------------------------------------------
	--staging is complete - begin row_key parse process
	--get row_key and row_key string
	----------------------------------------------------
	truncate table stage_monitoring.dbo.ref_row_key_hold

	insert into stage_monitoring.dbo.ref_row_key_hold
	(
		row_key,
		row_key_string
	)
	select
		distinct 
		row_key,
		replace(replace(replace(row_key,']:[',','),'[',''),']','')
	from
		dbo.stg_monitoring_hourly
	--union
	--select
	--	distinct 
	--	row_key,
	--	replace(replace(replace(row_key,']:[',','),'[',''),']','')
	--from
	--	dbo.stg_monitoring_daily
	--union
	--select
	--	distinct 
	--	row_key,
	--	replace(replace(replace(row_key,']:[',','),'[',''),']','')
	--from
	--	dbo.stg_monitoring_monthly
		

	----------------------------------------------------
	--row_key and row_key_string inserted into hold table
	--process row_key_string / parse process to ref_row_key lookup table
	----------------------------------------------------
	truncate table stage_monitoring.dbo.ref_row_key
	
	;with
	cteSplit AS
	(
	select
		a.row_key,
		row_number() over (partition by a.row_key order by t.N)	as row_N,
		substring(',' + a.row_key_string, N+1, charindex(',', a.row_key_string + ',', N)-N) as SplitValue
	from
		stage_monitoring.dbo.tally t
	
		cross join stage_monitoring.dbo.ref_row_key_hold a
	WHERE 
		t.N <= LEN(',' + a.row_key_string)
	AND SUBSTRING(',' + a.row_key_string, N, 1) = ','
	)
	insert into stage_monitoring.dbo.ref_row_key
	(
		[row_key]
		,[Instance_NK]
		,[Instance_Source_System]
		,[Monitor_NK]
		,[Monitor_Type]
		,[Monitor_Silo]
		,[Monitor_Source_System]
	)
	 SELECT s.row_key,
			MAX(CASE WHEN s.row_N = 1 THEN isnull(SplitValue,'N/A') END) AS instance_nk,
			MAX(CASE WHEN s.row_N = 2 THEN isnull(SplitValue,'N/A') END) AS instance_source_system,
			MAX(CASE WHEN s.row_N = 3 THEN isnull(SplitValue,'N/A') END) AS monitor_nk,
			MAX(CASE WHEN s.row_N = 4 THEN isnull(SplitValue,'N/A') END) AS monitor_type,
			MAX(CASE WHEN s.row_N = 5 THEN isnull(SplitValue,'N/A') END) AS monitor_silo,
			MAX(CASE WHEN s.row_N = 6 THEN isnull(SplitValue,'N/A') END) AS monitor_source_system
	FROM 
		cteSplit s
	GROUP BY 
		s.row_key


end




GO
/****** Object:  StoredProcedure [dbo].[sp_stage_report_monitoring_hourly_NULL_CATCH]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 6/18/2013
-------------------------------------------------------------------------------------------

Description:
--------------
insert null records into a hold table to process later in the evening, then insert into daily process.

Modifications:
--------------

-------------------------------------------------------------------------------------------
*/ 

CREATE procedure [dbo].[sp_stage_report_monitoring_hourly_NULL_CATCH]

as


insert into stage_monitoring.dbo.stg_report_monitoring_availability_hourly_NULL_HOLD
select
	*
from
	dbo.stg_report_monitoring_availability_hourly
where
	(
         Account_Name is NULL
      or Account_Number is NULL
      or Account_Source is NULL
      or Account_Type is NULL
      or Device_Host_Name is NULL
      or Device_Number is NULL
      or Device_Source is NULL
      or Device_Status is NULL
      or Monitor_ID is NULL
      or Monitor_Name is NULL
      or Monitor_Silo is NULL
      or Monitor_Type is NULL
      or monitor_type_group is NULL

	)
AND
	(
	source_system_name in ('rackwatch','sitescope')
	)


delete from dbo.stg_report_monitoring_availability_hourly
where
	(
         Account_Name is NULL
      or Account_Number is NULL
      or Account_Source is NULL
      or Account_Type is NULL
      or Device_Host_Name is NULL
      or Device_Number is NULL
      or Device_Source is NULL
      or Device_Status is NULL
      or Monitor_ID is NULL
      or Monitor_Name is NULL
      or Monitor_Silo is NULL
      or Monitor_Type is NULL
      or monitor_type_group is NULL
	)
AND
	(
	source_system_name in ('rackwatch','sitescope')
	)
GO
/****** Object:  StoredProcedure [dbo].[sp_stage_report_monitoring_hourly_NULL_CATCH_UPDATE]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 6/18/2013
-------------------------------------------------------------------------------------------

Description:
--------------
insert null records into a hold table to process later in the evening, then insert into daily process.

Modifications:
--------------

-------------------------------------------------------------------------------------------
*/ 

CREATE procedure [dbo].[sp_stage_report_monitoring_hourly_NULL_CATCH_UPDATE]

as

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
truncate table stage_monitoring.dbo.ref_row_key_hold_NULL

insert into stage_monitoring.dbo.ref_row_key_hold_NULL
(
	row_key,
	row_key_string
)
select
	distinct 
	row_key,
	replace(replace(replace(row_key,']:[',','),'[',''),']','')
from
	stage_monitoring.dbo.stg_report_monitoring_availability_hourly_NULL_HOLD

	

----------------------------------------------------
--row_key and row_key_string inserted into hold table
--process row_key_string / parse process to ref_row_key lookup table
----------------------------------------------------
truncate table stage_monitoring.dbo.ref_row_key_NULL

;with
cteSplit AS
(
select
	a.row_key,
	row_number() over (partition by a.row_key order by t.N)	as row_N,
	substring(',' + a.row_key_string, N+1, charindex(',', a.row_key_string + ',', N)-N) as SplitValue
from
	stage_monitoring.dbo.tally t

	cross join stage_monitoring.dbo.ref_row_key_hold_NULL a
WHERE 
	t.N <= LEN(',' + a.row_key_string)
AND SUBSTRING(',' + a.row_key_string, N, 1) = ','
)
insert into stage_monitoring.dbo.ref_row_key_NULL
(
	[row_key]
	,[Instance_NK]
	,[Instance_Source_System]
	,[Monitor_NK]
	,[Monitor_Type]
	,[Monitor_Silo]
	,[Monitor_Source_System]
)
 SELECT s.row_key,
		MAX(CASE WHEN s.row_N = 1 THEN isnull(SplitValue,'N/A') END) AS instance_nk,
		MAX(CASE WHEN s.row_N = 2 THEN isnull(SplitValue,'N/A') END) AS instance_source_system,
		MAX(CASE WHEN s.row_N = 3 THEN isnull(SplitValue,'N/A') END) AS monitor_nk,
		MAX(CASE WHEN s.row_N = 4 THEN isnull(SplitValue,'N/A') END) AS monitor_type,
		MAX(CASE WHEN s.row_N = 5 THEN isnull(SplitValue,'N/A') END) AS monitor_silo,
		MAX(CASE WHEN s.row_N = 6 THEN isnull(SplitValue,'N/A') END) AS monitor_source_system
FROM 
	cteSplit s
GROUP BY 
	s.row_key
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------


update a
	set
		a.account_name			=	z.Account_Name
	,	a.Account_Number		=	z.Account_Number
	,	a.Account_type			=	z.account_type
	,	a.account_source		=	z.account_source_system_name
	,	a.Device_Host_Name		=	z.Device_Host_Name
	,	a.Device_Status			=	z.Device_Status
	,	a.monitor_name			=	x.monitor_name
	,	a.monitor_type			=	x.monitor_type
	,	a.monitor_silo			=	x.monitor_silo
	,	a.monitor_type_group	=	(
									case
										--DEFINE PING
										when 
												x.MONITOR_TYPE	= 'Ping' 
											OR 
												x.MONITOR_TYPE	= 'ICMP'  
											OR 
												x.Monitor_ID	= 'ping'
											then 'PING'
										
										--DEFINE PORT
										when
										((zzz.Monitor_NK IN ('FTP','ColdFusion','Cold Fusion','PostgreSQL','MS SQL Server','Webport','SQLServer','HTTP',
															'IMAP','POP3','Telnet','SMTP','Postgres','HTTPS','MySQL','DNS','SSH') 
										AND zzz.Monitor_Source_System = 'rackwatch')
										OR
										(zzz.monitor_type in ('Protocol','Ping','FTPGet','ColdFusion','DNS','Protocol')
										and zzz.Monitor_Source_System = 'sitescope')
										OR
										(x.monitor_type in ('TCP','SMTP','SMTP-BANNER','SSH','NETWORK','MYSQL','DNS','APACHE')
										and a.source_system_name = 'maas'))
											then 'PORT'

										--DEFINE URL
										when
										((zzz.monitor_type in ('http','web','URL')
										and zzz.Monitor_Source_System = 'sitescope')
										OR
										(x.monitor_type in ('URL')
										and a.source_system_name = 'MaaS'))
											then 'URL'

										else
											'other'
									end	
									)
from
	stage_monitoring.dbo.stg_report_monitoring_availability_hourly_NULL_HOLD a
	
	inner join Stage_Monitoring.dbo.ref_row_key_null zzz
		on a.row_key = zzz.row_key	
	
	--join with dim_monitor
	left join [EBI-ETL].stage_three_dw.dbo.dim_monitor x
		on	x.monitor_id_nk			=	zzz.monitor_nk
		and x.monitor_silo			=	zzz.monitor_silo
		and x.source_system_name    =	(case
											when zzz.Monitor_Source_System = 'sitescope' then 'RADAR'
										 else
											zzz.Monitor_Source_System 
										 end)		
		and x.Current_Record_Flag	=	1
		
		
	left join stage_monitoring.dbo.vw_report_account_device_daily z
		on	a.device_number				= z.device_number
		and a.device_source				= z.device_source_system_name
GO
/****** Object:  StoredProcedure [dbo].[sp_stage_report_monitoring_hourly_table]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO












/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 6/18/2013
-------------------------------------------------------------------------------------------

Description:
--------------


Modifications:
--------------
Natasha Gajic 07/20/2015 Added Maas
-------------------------------------------------------------------------------------------
*/ 

CREATE procedure [dbo].[sp_stage_report_monitoring_hourly_table]

as

declare @insert_time	datetime
set @insert_time		= getdate()


truncate table stage_monitoring.dbo.stg_report_monitoring_availability_hourly


alter index IDX_ROWKEY on [dbo].[stg_monitoring_hourly] REBUILD
alter index IDX_ROWKEY on [dbo].[ref_row_key] REBUILD
alter index IDX_Instance on [dbo].[ref_row_key] REBUILD

update ref_row_key set Monitor_Silo='N/A' where monitor_silo='AGENT'

--update ref_row_key set Monitor_source_system='RADAR' where Monitor_source_system='SiteScope' 

insert into stage_monitoring.dbo.stg_report_monitoring_availability_hourly


select
	--start time
	b.time_key,
	b.time_full_date,
	b.Time_Month_Number,
	b.Time_Month_Desc,
	b.Time_Month_Abbr,
	b.Time_Year_Number,
	b.Time_Quarter_Number,
	datepart(hh,a.converted_start_time)		as HMS_Military_Hour_Number,
	a.converted_start_time					as Time_Full_Date_HMS,
	----end time
	c.time_key								as end_time_key,
	c.time_full_date						as end_time_full_date,
	c.Time_Month_Number						as end_time_month_number,
	c.Time_Month_Desc						as end_time_month_desc,
	c.Time_Month_Abbr						as end_time_month_abbr,
	c.Time_Year_Number						as end_time_year_number,
	c.Time_Quarter_Number					as end_time_quarter_number,
	c.time_quarter_desc						as end_time_quarter_desc,
	datepart(hh,dateadd(hour,1,a.converted_start_time))		as HMS_Military_Hour_Number,
	dateadd(hour,1,a.converted_start_time)	as Time_Full_Date_HMS,
	--ACCOUNT
	zz.account_name, 
	zz.account_number, 
	zz.account_type, 
	--INSTANCE
	zz.device_host_name, 
	d.instance_nk,
	zz.device_status,	
	--MONITOR
	case
		when e.monitor_type	= 'web' then 'URL'
	else	
		e.Monitor_Type
	end									as Monitor_type,
	e.monitor_name,
	d.Monitor_Silo,
	-----------------------------------------------------------------------------
	case
		--DEFINE PING
		when 
			d.MONITOR_TYPE = 'Ping' 
			OR d.MONITOR_TYPE = 'ICMP'  
			OR d.monitor_NK = 'PING'
			then 'PING'
		
		--DEFINE PORT
		when
		((d.MONITOR_NK IN ('FTP','ColdFusion','Cold Fusion','PostgreSQL','MS SQL Server','Webport','SQLServer','HTTP',
							'IMAP','POP3','Telnet','SMTP','Postgres','HTTPS','MySQL','DNS','SSH') 
		AND d.monitor_source_system = 'rackwatch')
		OR
		(d.monitor_type in ('Protocol','Ping','FTPGet','ColdFusion','DNS','Protocol')
		and d.monitor_source_system = 'sitescope')
		OR
		(d.monitor_type in ('TCP','SMTP','SMTP-BANNER','SSH','NETWORK','MYSQL','DNS','APACHE')
		and d.monitor_source_system = 'maas'))
			then 'PORT'

		--DEFINE URL
		when
		((d.monitor_type in ('http','web','URL')
		and d.monitor_source_system = 'sitescope')
		OR
		(d.monitor_type in ('URL')
		and d.monitor_source_system = 'MaaS'))
			then 'URL'

		else
			'other'
	end											as monitor_type_group,
	-----------------------------------------------------------------------------
	d.Monitor_Source_System						as source_system_name,
	--MEASURES
	a.Aggreed_Up_Time							as uptimeDuration,
	a.Interval_Down_Time						as downtimeDurationWithSupression,
	a.Total_Down_Time  							as downtimeDurationWithoutSupression,
	cast(a.Calculated_Percent as decimal(38,6))	as uptimePercentageWithSupression,
	cast(a.Total_Percent as decimal(38,6))		as uptimePercentageWithoutSupression,
	-----------------------------------------------------------------------------
	a.row_key									as row_key,
	d.Monitor_NK								as monitor_id,
	d.instance_source_system					as device_source,
	zz.account_source_system_name,	
	@insert_time,
	a.file_name_txt
from
	dbo.stg_monitoring_hourly a
	
	--start time
	inner join stage_three_dw.dbo.dim_time b
		on	b.time_full_date		=	cast(convert(varchar,a.converted_start_time, 101) as datetime)
		
	--end time
	inner join stage_three_dw.dbo.dim_time c
		on	c.time_full_date		= 	cast(convert(varchar,dateadd(hour,1,a.converted_start_time), 101) as datetime)
		
	--join with ref_row_key for instance_nk and monitor_nk
	left join stage_monitoring.dbo.ref_row_key d
		on	a.row_key				=	d.row_key
		
	--join with dim_monitor
	left join stage_three_dw.dbo.dim_monitor e
		on	d.Monitor_NK			=	e.monitor_id_nk	
		and d.Monitor_silo =e.Monitor_Silo 
		and d.Monitor_source_system=(case
										when e.Source_System_Name = 'RADAR' then 'sitescope'
										 else
											e.Source_System_Name
										 end)									
				
		and e.Current_Record_Flag	=	1
		
		
	left join stage_monitoring.dbo.report_account_device_daily zz
		on	d.instance_nk				= zz.device_number
		and d.instance_source_system	= zz.device_source_system_name



--UPDATE stage_monitoring.dbo.ref_processed_file_list 
update a
	set		a.process_into_reporting	=	@insert_time
		,	a.reporting_row_count		=	z.total_row_count
		,	a.reporting_duration		=	datediff(ss,@insert_time,getdate())
		,	a.iscomplete				=	'inserting_into_production'
		
from 
	stage_monitoring.dbo.ref_processed_file_list a
	
	inner join (
				select
					file_name_txt,
					count(*)	as total_row_count
				from
					stage_monitoring.dbo.stg_report_monitoring_availability_hourly
				group by
					file_name_txt
				) as z
			on a.file_name_txt = z.file_name_txt	
			
					

alter index IDX_ROWKEY on [dbo].[stg_monitoring_hourly] DISABLE

alter index IDX_ROWKEY on [dbo].[ref_row_key] DISABLE
alter index IDX_Instance on [dbo].[ref_row_key] DISABLE









GO
/****** Object:  StoredProcedure [dbo].[sp_truncate_proxy]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE  PROCEDURE [dbo].[sp_truncate_proxy] 
 @table nvarchar(80)
WITH EXECUTE AS 'truncate_proxy' 
   AS
/*
-- AUTHOR: ATOMASINO
-- DATE:   1/3/2013
-- PURPOSE: called by infa_load login to truncate database tables prior to load
*/
 
DECLARE @SQLString NVARCHAR(500);
 
/* Build the SQL string */
SET @SQLString =
     N'TRUNCATE TABLE ' + @table;
 
/* Execute the string  */
EXECUTE sp_executesql @SQLString;
 
If @@ERROR <> 0 GoTo ErrorHandler
Set NoCount OFF
Return(0)
  
ErrorHandler:
    Return(@@ERROR)


GO
/****** Object:  StoredProcedure [dbo].[sp_update_hourly_on_failure]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	
/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 7/26/2013
-------------------------------------------------------------------------------------------

Description:
--------------


Modifications:
--------------

-------------------------------------------------------------------------------------------
*/ 

CREATE procedure [dbo].[sp_update_hourly_on_failure]

as

---------------------------------------------------------------
--update files/records that have >1 entry
---------------------------------------------------------------	
update a	
	set 
		a.iscomplete = 'complete'
	,	a.completed_datetime = getdate()
from
	dbo.ref_processed_file_list a
where
	a.file_name_txt in (select file_name_txt from dbo.vw_check_files_with_production_hourly_on_failure where production_file_row_count is not null)


---------------------------------------------------------------
--delete from ref_processed_file_list where failure has occured
--and records have not been inserted into production
---------------------------------------------------------------
delete from dbo.ref_processed_file_list
where
	file_name_txt in (select file_name_txt from dbo.vw_check_files_with_production_hourly_on_failure where production_file_row_count is null)
	
--let next run pick up files for reprocessing

GO
/****** Object:  StoredProcedure [dbo].[udsp_AGG_report_monitoring_daily]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
-------------------------------------------------------------------------------------------
Created By: Pete Peterson - put together by DT
Created On: 7/18/2013
-------------------------------------------------------------------------------------------

Description:
--------------


Modifications:
--------------

-------------------------------------------------------------------------------------------
*/ 


CREATE PROC [dbo].[udsp_AGG_report_monitoring_daily]

AS

---------------------------------------------------------------------------------------------------------------------------------------------
DECLARE @max_daily_date				datetime
DECLARE @max_hourly_date			datetime
DECLARE @max_daily_agg_start		datetime
DECLARE @max_daily_agg_end			datetime
DECLARE @max_daily_agg_start_cst	datetime
DECLARE @max_daily_agg_end_cst		datetime
DECLARE @tmp_row_keys				TABLE (row_key varchar(512)) 
DECLARE @etl_date datetime
DECLARE @max_daily_agg_time_key		bigint
---------------------------------------------------------------------------------------------------------------------------------------------
SET @etl_date=getdate()
SET @max_daily_date			= (SELECT MAX(Time_Full_Date) FROM stage_three_dw.dbo.Report_Monitoring_Availability_Daily with (nolock))
SET @max_hourly_date		= (SELECT MAX(Time_Full_Date_HMS) FROM stage_three_dw.dbo.Report_Monitoring_Availability_Hourly with (nolock))
SET @max_hourly_date		= Stage_Three_DW.dbo.udf_Timezone_Conversion_CST_WITH_DST(@max_hourly_date,'CT')
SET @max_hourly_date		= CAST(LEFT(@max_hourly_date,11) as datetime)
SET @max_daily_agg_start	= DATEADD(DD,1,@max_daily_date)
SET @max_daily_agg_end		= DATEADD(DD,2,@max_daily_date)
SET @max_daily_agg_start_cst= stage_three_dw.dbo.udf_Timezone_Conversion_WITH_DST(@max_daily_agg_start,'CT')
SET @max_daily_agg_end_cst	= stage_three_dw.dbo.udf_Timezone_Conversion_WITH_DST(@max_daily_agg_end,'CT')
SET	@max_daily_agg_time_key	=(SELECT cast(convert(varchar(20),@max_daily_agg_end_cst,112) as bigint))
---------------------------------------------------------------------------------------------------------------------------------------------
if
	@max_hourly_date > @max_daily_date
	
	BEGIN
		PRINT 'Max Date in Daily Aggregate is ' +	cast(@max_daily_date as varchar(11)) + ' and the max date in the Hourly aggregate is ' + cast(@max_hourly_date as varchar(11)) +' Starting the daily aggregate process now.'
		PRINT 'Getting Hourly data for:'
		PRINT @max_daily_agg_start_cst
		PRINT @max_daily_agg_end_cst
		PRINT @max_daily_agg_time_key
	---	
	--
	TRUNCATE TABLE Stage_Monitoring.dbo.stg_AGG_report_monitoring_availability_daily
	--
	---
	INSERT INTO	
		Stage_Monitoring.dbo.stg_AGG_report_monitoring_availability_daily
		(
		Time_KEY,
		Time_Full_Date,
		Time_Month_Number,
		Time_Month_Desc,
		Time_Month_Abbr,
		Time_Year_Number,
		Time_Quarter_Number,
		Time_Full_Date_HMS,
		Account_Name,
		Account_Number,
		Account_Type,
		Device_Host_Name,
		Device_Number,
		Device_Status,
		Monitor_Type,
		Monitor_Name,
		Monitor_Silo,
		Source_System_Name,
		uptimeDuration,
		downtimeDurationWithSupression,
		downtimeDurationWithoutSupression,
		uptimePercentageWithSupression,
		uptimePercentageWithoutSupression,
		row_key,
		Monitor_ID,
		Device_Source,
		Account_Source,
		etl_date,
		monitor_type_group		
		)

	SELECT 
		time_key									= b.time_key,  
		Time_Full_Date								= b.Time_Full_Date,
		Time_Month_Number							= b.Time_Month_Number,	
		Time_Month_Desc								= b.Time_Month_Desc,
		Time_Month_Abbr								= b.Time_Month_Abbr,
		Time_Year_Number							= b.Time_Year_Number,
		Time_Quarter_Number							= b.Time_Quarter_Number,
		Time_Full_Date_HMS							= b.Time_Full_Date,							
		Account_Name								= NULL, --MAX(a.Account_Name),
		Account_Number								= NULL, --MAX(a.Account_Number),
		Account_Type								= NULL, --a.Account_Type,
		Device_Host_Name							= NULL,
		Device_Number								= NULL, --a.Device_Number,
		Device_Status								= NULL,
		Monitor_Type								= NULL, --a.Monitor_Type,								
		Monitor_Name								= NULL, --a.Monitor_Name,
		Monitor_Silo								= NULL, --a.Monitor_Silo,
		Source_System_Name							= NULL, --a.Source_System_Name,
		uptimeDuration								= SUM(a.uptimeDuration),
		downtimeDurationWithSupression				= SUM(a.downtimeDurationWithSupression),
		downtimeDurationWithoutSupression			= SUM(a.downtimeDurationWithoutSupression), 
		uptimePercentageWithSupression				= AVG(a.uptimePercentageWithSupression),
		uptimePercentageWithoutSupression			= AVG(uptimePercentageWithoutSupression),
		row_key										= a.row_key,
		Monitor_ID									= NULL, --a.Monitor_ID,
		Device_Source								= NULL, --a.Device_Source, 
		Account_Source								= NULL, --MAX(Account_Source),
		etl_date									= @etl_date,
		monitor_type_group							= NULL
	FROM 
		stage_three_dw.dbo.Report_Monitoring_Availability_Hourly a WITH (NOLOCK) 
	INNER JOIN
		Stage_Three_DWMaint.dbo.ref_bridge_cst_utc b WITH (NOLOCK) 
	ON	a.Time_Full_Date_HMS=b.date_cst 
	WHERE 
		a.Time_Full_Date_HMS >= @max_daily_agg_start_cst
	and	a.Time_Full_Date_HMS <  @max_daily_agg_end_cst
	GROUP BY 
		b.time_key,
		b.Time_Full_Date,
		b.Time_Month_Number,
		b.Time_Month_Desc,
		b.Time_Month_Abbr,
		b.Time_Year_Number,
		b.Time_Quarter_Number,
		b.Time_Full_Date,
		a.row_key
	
-------------------------------------------------------------------------------------------------------------------------------
			UPDATE	
				A	 
			SET	
				A.Account_Name=B.Account_Name,
				A.Account_Number=B.Account_Number,
				A.Account_Source=B.Account_Source,
				A.Account_Type=B.Account_Type,
				A.Device_Host_Name=B.Device_Host_Name,
				A.Device_Number=B.Device_Number,
				A.Device_Source=B.Device_Source,
				A.Device_Status=B.Device_Status,
				A.Monitor_ID=B.Monitor_ID,
				Monitor_Name=B.Monitor_Name,
				Monitor_Silo=B.Monitor_Silo,
				Monitor_Type=B.Monitor_Type,
				monitor_type_group=B.monitor_type_group,
				Source_System_Name=B.Source_System_Name
			FROM 
				Stage_Monitoring.dbo.stg_AGG_report_monitoring_availability_daily A WITH (NOLOCK)
			INNER JOIN
				stage_three_dw.dbo.Report_Monitoring_Availability_Hourly B
			ON	A.row_key=B.row_key
			AND	A.Time_KEY=@max_daily_agg_time_key
			INNER JOIN 
				(
				SELECT
					AA.row_key,
					AA.Time_KEY,
					MAX(Time_Full_Date_HMS) AS Time_Full_Date_HMS 
				FROM 
					stage_three_dw.dbo.Report_Monitoring_Availability_Hourly AA 
				WHERE
					AA.Account_Name			IS NOT NULL
				AND	AA.Account_Number		IS NOT NULL
				AND	Account_Type			IS NOT NULL 
				AND	Device_Host_Name		IS NOT NULL
				AND	Device_Number			IS NOT NULL
				AND	Device_Status			IS NOT NULL
				AND	Monitor_Type			IS NOT NULL
				AND	Monitor_Name			IS NOT NULL
				AND	Monitor_Silo			IS NOT NULL
				AND	Source_System_Name		IS NOT NULL
				AND	Monitor_ID				IS NOT NULL
				AND	Device_Source			IS NOT NULL
				AND	Account_Source			IS NOT NULL
				AND	AA.Monitor_type_group	IS NOT NULL
				GROUP BY
					AA.row_key,
					AA.Time_KEY	
				
				) C
			ON	A.row_key=C.row_key
			AND	A.Time_KEY=C.Time_KEY	
			--AND	B.HMS_Military_Hour_Number=C.HMS_Military_Hour_Number
			AND	B.Time_Full_Date_HMS=C.Time_Full_Date_HMS
			/*
			WHERE
				A.row_key='[00e9a10b-924b-44e0-a84d-c07cde5f66dc]:[NOVA_US_ORD]:[chDT2RB86C]:[PING]:[ORD]:[MaaS]'
			*/	
			
			
		------------------------------------------------------------------------
		--insert into production
		------------------------------------------------------------------------	
			
	insert into [Stage_Three_DW].[dbo].[Report_Monitoring_Availability_Daily]
	(	
		[Time_KEY]
		,[Time_Full_Date]
		,[Time_Month_Number]
		,[Time_Month_Desc]
		,[Time_Month_Abbr]
		,[Time_Year_Number]
		,[Time_Quarter_Number]
		,[Time_Full_Date_HMS]
		,[Account_Name]
		,[Account_Number]
		,[Account_Type]
		,[Device_Host_Name]
		,[Device_Number]
		,[Device_Status]
		,[Monitor_Type]
		,[Monitor_Name]
		,[Monitor_Silo]
		,[Source_System_Name]
		,[uptimeDuration]
		,[downtimeDurationWithSupression]
		,[downtimeDurationWithoutSupression]
		,[uptimePercentageWithSupression]
		,[uptimePercentageWithoutSupression]
		,[row_key]
		,[Monitor_ID]
		,[Device_Source]
		,[Account_Source]
		,[etl_date]
		,[monitor_type_group]
	)
	select
		[Time_KEY]
		,[Time_Full_Date]
		,[Time_Month_Number]
		,[Time_Month_Desc]
		,[Time_Month_Abbr]
		,[Time_Year_Number]
		,[Time_Quarter_Number]
		,[Time_Full_Date_HMS]
		,[Account_Name]
		,[Account_Number]
		,[Account_Type]
		,[Device_Host_Name]
		,[Device_Number]
		,[Device_Status]
		,[Monitor_Type]
		,[Monitor_Name]
		,[Monitor_Silo]
		,[Source_System_Name]
		,[uptimeDuration]
		,[downtimeDurationWithSupression]
		,[downtimeDurationWithoutSupression]
		,[uptimePercentageWithSupression]
		,[uptimePercentageWithoutSupression]
		,[row_key]
		,[Monitor_ID]
		,[Device_Source]
		,[Account_Source]
		,[etl_date]
		,[monitor_type_group]
	FROM 
		Stage_Monitoring.dbo.stg_AGG_report_monitoring_availability_daily

END
-------------------------------------------------------------------------------------------------------------------------------				
	
else
	PRINT 'No need to aggregate, I am outta here!'
	
--SELECT * FROM @tmp_row_keys			
--DROP TABLE #tmp_row_keys	
-- 8,220,309
/*
Max Date in Daily Aggregate is Jul 12 2013 and the max date in the Hourly aggregate is Jul 17 2013 Starting the daily aggregate process now.
Jul 13 2013 12:00AM
Jul 14 2013 12:00AM

*/

GO
/****** Object:  StoredProcedure [dbo].[udsp_populate_report_account_device_daily]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[udsp_populate_report_account_device_daily] as

-- Created: Natasha Gajic 07/20/2015

truncate table stage_monitoring.dbo.report_account_device_daily
alter index [IDX_Instance_Number] on stage_monitoring.dbo.report_account_device_daily disable;
insert into stage_monitoring.dbo.report_account_device_daily
select
	distinct
	a.account_name					as account_name,
	b.assigned_account_number			as account_number,
	'MANAGED_HOSTING'				as account_type,
	'Salesforce'					as account_source_system_name,
	a.account_team_name						as team_name,
	b.instance_name					as device_host_name,
	b.assigned_instance_number		as device_number,
	b.instance_type					as device_type,
	b.instance_status					as device_status,
	'MANAGED_HOSTING'				as device_source_system_name,
	getdate()						as etl_date
from
	stage_three_dw.dbo.dim_instance b (nolock)
	inner join stage_three_dw.dbo.dim_account a
	on b.assigned_account_number=a.account_number
	and a.account_source_system_name='Salesforce'
	and a.[Current_Record]=1 where b.[source_system_name]= 'MANAGED_HOSTING' and b.current_record='1' 
UNION 
    select
	distinct
	a.account_name					as account_name,
	b.assigned_account_number			as account_number,
	a.account_type				as account_type,
	a.account_source_system_name					as account_source_system_name,
	a.account_team_name						as team_name,
	b.instance_name					as device_host_name,
	b.assigned_instance_number		as device_number,
	b.instance_type					as device_type,
	b.instance_status					as device_status,
	b.source_system_name				as device_source_system_name,
	getdate()						as etl_date
from
	stage_three_dw.dbo.dim_instance b (nolock)
	inner join stage_three_dw.dbo.dim_account a
	on isnumeric(b.assigned_account_number)=1 and b.assigned_account_number=a.account_number
	and a.account_source_system_name='HostingMatrix'
	and a.[Current_Record]=1 where b.[source_system_name]!= 'MANAGED_HOSTING'  and b.current_record= '1' and b.assigned_account_number < 10000000
	UNION 
    select
	distinct
	a.account_name					as account_name,
	b.assigned_account_number			as account_number,
	a.account_type				as account_type,
	a.account_source_system_name					as account_source_system_name,
	a.account_team_name						as team_name,
	b.instance_name					as device_host_name,
	b.assigned_instance_number		as device_number,
	b.instance_type					as device_type,
	b.instance_status					as device_status,
	b.source_system_name				as device_source_system_name,
	getdate()						as etl_date
from
	stage_three_dw.dbo.dim_instance b (nolock)
	inner join stage_three_dw.dbo.dim_account a
	on isnumeric(b.assigned_account_number)=1 and b.assigned_account_number=cast(a.account_number as varchar(50))
	and a.account_source_system_name='HostingMatrix_UK'
	and a.[Current_Record]=1 where b.[source_system_name]!= 'MANAGED_HOSTING' and b.current_record='1' and b.assigned_account_number >= 10000000 

	alter index [IDX_Instance_Number] on stage_monitoring.dbo.report_account_device_daily REBUILD;



GO
/****** Object:  StoredProcedure [dbo].[udsp_report_account_device_daily_cloud]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 3/19/2013
-------------------------------------------------------------------------------------------

Description:
--------------
Get current Account and Device combinations

Runs once daily



Modifications:
--------------

-------------------------------------------------------------------------------------------
*/


CREATE procedure [dbo].[udsp_report_account_device_daily_cloud]

as

-------------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------------
truncate table	stage_monitoring.dbo.report_account_device_daily_cloud

--Cloud_US 
insert into stage_monitoring.dbo.report_account_device_daily_cloud
select
	distinct
	'ACCOUNT_NAME'					as account_name,
	assigned_account_number			as account_number,
	'cloud_us'						as account_type,
	case
		when Instance_Description = 'cloud' then 'HostingMatrix'
		when Instance_Description = 'slice' then 'Slicehost'
	else
		'Salesforce'
	end								as account_source_system_name,
	'TEAM_NAME'						as team_name,
	instance_name					as device_host_name,
	assigned_instance_number		as device_number,
	instance_type					as device_type,
	instance_status					as device_status,
	source_system_name				as device_source_system_name,
	getdate()						as etl_date
from
	Slicehost_ODS.dbo.vw_Instance_Slicehost_US (nolock)


--Cloud_UK
insert into stage_monitoring.dbo.report_account_device_daily_cloud
select
	distinct
	'ACCOUNT_NAME'					as account_name,
	assigned_account_number			as account_number,
	'cloud_uk'						as account_type,
	case
		when Instance_Description = 'cloud' then 'HostingMatrix_UK'
		when Instance_Description = 'slice' then 'Slicehost'
	else
		'Salesforce'
	end								as account_source_system_name,
	'TEAM_NAME'						as team_name,
	instance_name					as device_host_name,
	assigned_instance_number		as device_number,
	instance_type					as device_type,
	instance_status					as device_status,
	source_system_name					as device_source_system_name,
	getdate()						as etl_date
from
	Slicehost_UK_ODS.dbo.vw_Instance_Slicehost_UK (nolock)



--NOVA_Cloud_US
insert into stage_monitoring.dbo.report_account_device_daily_cloud
select
	distinct
	'ACCOUNT_NAME'					as account_name,
	assigned_account_number			as account_number,
	case
		when assigned_account_number > 10000000 then 'cloud_uk'
		when assigned_account_number < 10000000 then 'cloud_us'
	else
		'Salesforce'
	end								as account_type,
	case
		when assigned_account_number > 10000000 then 'HostingMatrix_UK'
		when assigned_account_number < 10000000 then 'HostingMatrix'
	else
		'Salesforce'
	end								as account_source_system_name,
	'TEAM_NAME'						as team_name,
	instance_name					as device_host_name,
	assigned_instance_number		as device_number,
	instance_type					as device_type,
	instance_status					as device_status,
	instance_source_system_name					as device_source_system_name,
	getdate()						as etl_date
from
	Nova_ETL.dbo.vw_Instance_Nova_US (nolock)
where
	isnumeric(assigned_account_number) = 1




--NOVA_Cloud_UK
insert into stage_monitoring.dbo.report_account_device_daily_cloud
select
	distinct
	'ACCOUNT_NAME'					as account_name,
	assigned_account_number			as account_number,
	case
		when assigned_account_number > 10000000 then 'cloud_uk'
		when assigned_account_number < 10000000 then 'cloud_us'
	else
		'Salesforce'
	end								as account_type,
	case
		when assigned_account_number > 10000000 then 'HostingMatrix_UK'
		when assigned_account_number < 10000000 then 'HostingMatrix'
	else
		'Salesforce'
	end								as account_source_system_name,
	'TEAM_NAME'						as team_name,
	instance_name					as device_host_name,
	assigned_instance_number		as device_number,
	instance_type					as device_type,
	instance_status					as device_status,
	instance_source_system_name					as device_source_system_name,
	getdate()						as etl_date
from
	Nova_UK_ETL.dbo.vw_Instance_Nova_UK (nolock)
where
	isnumeric(assigned_account_number) = 1


--UPDATE ALL Account Names	
update a
	set a.account_name = x.account_name,
		a.Team_Name	= x.account_team_name
from
	stage_monitoring.dbo.report_account_device_daily_cloud a
	
	inner join stage_three_dw.dbo.dim_account x
		on a.account_number = x.account_number
		and a.account_source_system_name = x.account_source_system_name
		and x.current_record = 1
where
	current_record = 1
	


GO
/****** Object:  StoredProcedure [dbo].[udsp_report_account_device_daily_core]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 3/19/2013
-------------------------------------------------------------------------------------------

Description:
--------------
Get current Account and Device combinations

Runs 4 times a day

Ramu  07/16/2015  modified teh view name from 'vw_MH_Instance' to 'vw_MH_Instance_monitoring'

Modifications:
--------------

-------------------------------------------------------------------------------------------
*/


CREATE procedure [dbo].[udsp_report_account_device_daily_core]

as

-------------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------------
--MANAGED_HOSTING Accounts and Devices

truncate table	stage_monitoring.dbo.report_account_device_daily_core

insert into		stage_monitoring.dbo.report_account_device_daily_core

--load 2:30 minutes
select
	distinct
	'ACCOUNT_NAME'					as account_name,
	assigned_account_number			as account_number,
	'MANAGED_HOSTING'				as account_type,
	'Salesforce'					as account_source_system_name,
	'TEAM_NAME'						as team_name,
	instance_name					as device_host_name,
	assigned_instance_number		as device_number,
	instance_type					as device_type,
	instance_status					as device_status,
	'MANAGED_HOSTING'				as device_source_system_name,
	getdate()						as etl_date
from
	core_opdb.dbo.vw_MH_Instance_monitoring (nolock)



--UPDATE ALL Account Names	
--45 seconds
update a
	set a.account_name	= x.account_name,
		a.team_name		= x.account_team_name
from
	stage_monitoring.dbo.report_account_device_daily_core a
	
	inner join stage_three_dw.dbo.dim_account x (nolock)
		on	a.account_number				= x.account_number
		and a.account_source_system_name	= x.account_source_system_name
		and x.current_record				= 1
where
	x.current_record = 1
	




GO
/****** Object:  StoredProcedure [dbo].[udsp_report_account_device_daily_core_07162015]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 3/19/2013
-------------------------------------------------------------------------------------------

Description:
--------------
Get current Account and Device combinations

Runs 4 times a day



Modifications:
--------------

-------------------------------------------------------------------------------------------
*/


CREATE procedure [dbo].[udsp_report_account_device_daily_core_07162015]

as

-------------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------------
--MANAGED_HOSTING Accounts and Devices

truncate table	stage_monitoring.dbo.report_account_device_daily_core

insert into		stage_monitoring.dbo.report_account_device_daily_core

--load 2:30 minutes
select
	distinct
	'ACCOUNT_NAME'					as account_name,
	assigned_account_number			as account_number,
	'MANAGED_HOSTING'				as account_type,
	'Salesforce'					as account_source_system_name,
	'TEAM_NAME'						as team_name,
	instance_name					as device_host_name,
	assigned_instance_number		as device_number,
	instance_type					as device_type,
	instance_status					as device_status,
	'MANAGED_HOSTING'				as device_source_system_name,
	getdate()						as etl_date
from
	core_opdb.dbo.vw_MH_Instance (nolock)



--UPDATE ALL Account Names	
--45 seconds
update a
	set a.account_name	= x.account_name,
		a.team_name		= x.account_team_name
from
	stage_monitoring.dbo.report_account_device_daily_core a
	
	inner join stage_three_dw.dbo.dim_account x (nolock)
		on	a.account_number				= x.account_number
		and a.account_source_system_name	= x.account_source_system_name
		and x.current_record				= 1
where
	x.current_record = 1
	



GO
/****** Object:  StoredProcedure [dbo].[udsp_truncate_proxy]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- the truncate stored proc ...
--
CREATE  PROCEDURE [dbo].[udsp_truncate_proxy] 
 @table nvarchar(80)
WITH EXECUTE AS 'truncate_proxy' 
   AS
/*
-- AUTHOR: ATOMASINO
-- DATE:   1/3/2013
-- PURPOSE: called by infa_load login to truncate database tables prior to load
*/

DECLARE @SQLString NVARCHAR(500);

/* Build the SQL string */
SET @SQLString =
     N'TRUNCATE TABLE ' + @table;

/* Execute the string  */
EXECUTE sp_executesql @SQLString;

If @@ERROR <> 0 GoTo ErrorHandler
Set NoCount OFF
Return(0)
  
ErrorHandler:
    Return(@@ERROR)


GO
/****** Object:  UserDefinedFunction [dbo].[udf_TS]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION  [dbo].[udf_TS]--(1234567890)
  ( @TS int )
RETURNS datetime
AS
/*
=========================================================================================================
Created By:  Peter A. Peterson
Created On:  

Description:
------------
Converts a unix_timestamp column from an interger to a datetime data type in CST/CDT timezone.


Modified on		Modified by		Description
-----------		-------------	-------------------------------------------------------------------------
11-09-2010      RV              replaced between with >= and <=
SYNTAX:
-------
SELECT [dbo].[udf_TS](1234567890)



=========================================================================================================
*/


BEGIN
	----------------------------------------------------------------------------------------------------
	DECLARE @YEAR			INT
	DECLARE @CDT_BEGIN		DATETIME
	DECLARE @CDT_END		DATETIME
	DECLARE @TIMEZONE		VARCHAR(3)
	DECLARE @OFFSET			INT
	DECLARE @GMT_DATE		DATETIME
	DECLARE @CONVERTED_DATE	DATETIME
	----------------------------------------------------------------------------------------------------
	SET @YEAR		= year(DATEADD(ss,@TS,'1970-1-1 00:00:00.00'))
	SET @CDT_BEGIN  = (SELECT Begin_Date FROM [Stage_Two_DWMaint].[dbo].[wrk_Daylight_Savings_Time] WHERE Year=@YEAR AND Region='North America')
	SET @CDT_END    = (SELECT End_Date   FROM [Stage_Two_DWMaint].[dbo].[wrk_Daylight_Savings_Time] WHERE Year=@YEAR AND Region='North America')
	SET @TIMEZONE	=
	
	-- DATEADD(ss,@TS,'1970-1-1 00:00:00.00') --updated 2013-07-15 dt with between statement
--		(
--		CASE
--            	WHEN (@CDT_BEGIN>=DATEADD(ss,@TS,'1970-1-1 00:00:00.00') AND @CDT_END<=
--DATEADD(ss,@TS,'1970-1-1 00:00:00.00') )THEN 'CDT'
			
--			ELSE 'CST'
--		END
--		)	

		(
			case
				when DATEADD(ss,@TS,'1970-1-1 00:00:00.00') between @CDT_BEGIN and @CDT_END 
					then 'CDT'
				else
					'CST'
			end		
		)

	SET @OFFSET		=
		(
		SELECT Timezone_From_GMT_Conversion_Factor FROM [Stage_Three_DWMaint].[dbo].[ref_Timezone] WHERE Timezone_Location='North America' AND Timezone_Abbreviation=@TIMEZONE
		) 
	SET @GMT_DATE		=	(SELECT DATEADD(ss,@TS,'1970-1-1 00:00:00.00')) 
	SET @CONVERTED_DATE =	(SELECT DATEADD(hh,@OFFSET,@GMT_DATE))	
	----------------------------------------------------------------------------------------------------	
	--SELECT @YEAR, @CDT_BEGIN, @CDT_END, @TIMEZONE, @OFFSET
	----------------------------------------------------------------------------------------------------
	RETURN @CONVERTED_DATE	
		
END

/*

EXAMPLE:
SELECT dbo.udf_TS(1234567890)
Results - 2009-02-13 17:31:30.000

*/


GO
/****** Object:  Table [BUILTIN\Administrators].[output]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [BUILTIN\Administrators].[output](
	[Directory] [varchar](400) NULL,
	[FilePath] [varchar](400) NULL,
	[SizeInMB] [decimal](13, 2) NULL,
	[SizeInKB] [decimal](13, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hourly_report_load_audit]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hourly_report_load_audit](
	[file_name] [varchar](1024) NULL,
	[start_id] [bigint] NULL,
	[status] [varchar](1024) NULL,
	[end_id] [bigint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[investigate_files]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[investigate_files](
	[file_location] [varchar](900) NULL,
	[file_name_txt] [varchar](900) NULL,
	[file_check_daettime] [datetime] NULL,
	[size_MB] [decimal](36, 2) NULL,
	[size_KB] [decimal](36, 2) NULL,
	[row_count] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[oneDay]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[oneDay](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Time_KEY] [int] NOT NULL,
	[Time_Full_Date] [datetime] NOT NULL,
	[Time_Month_Number] [int] NOT NULL,
	[Time_Month_Desc] [varchar](50) NOT NULL,
	[Time_Month_Abbr] [varchar](10) NOT NULL,
	[Time_Year_Number] [int] NOT NULL,
	[Time_Quarter_Number] [int] NOT NULL,
	[HMS_Military_Hour_Number] [int] NULL,
	[Time_Full_Date_HMS] [datetime] NULL,
	[End_Time_Key] [int] NULL,
	[End_Time_Full_Date] [datetime] NULL,
	[End_Time_Month_Number] [int] NULL,
	[End_Time_Month_Desc] [varchar](50) NULL,
	[End_Time_Month_Abbr] [varchar](50) NULL,
	[End_Time_Year_Number] [int] NULL,
	[End_Time_Quater_Number] [int] NULL,
	[End_Time_Quater_Desc] [varchar](50) NULL,
	[End_HMS_Military_Hour_Number] [int] NULL,
	[End_Time_Full_Date_HMS] [datetime] NULL,
	[Account_Name] [varchar](255) NULL,
	[Account_Number] [bigint] NULL,
	[Account_Type] [varchar](255) NULL,
	[Device_Host_Name] [varchar](255) NULL,
	[Device_Number] [varchar](255) NULL,
	[Device_Status] [varchar](40) NULL,
	[Monitor_Type] [nvarchar](100) NULL,
	[Monitor_Name] [nvarchar](1024) NULL,
	[Monitor_Silo] [nvarchar](100) NULL,
	[Source_System_Name] [varchar](100) NULL,
	[uptimeDuration] [int] NULL,
	[downtimeDurationWithSupression] [int] NULL,
	[downtimeDurationWithoutSupression] [int] NULL,
	[uptimePercentageWithSupression] [decimal](38, 6) NULL,
	[uptimePercentageWithoutSupression] [decimal](38, 6) NULL,
	[row_key] [varchar](512) NOT NULL,
	[Monitor_ID] [varchar](255) NULL,
	[Device_Source] [varchar](255) NULL,
	[Account_Source] [varchar](255) NULL,
	[etl_date] [datetime] NULL,
	[Monitor_Type_Group] [varchar](255) NULL,
	[file_name_txt] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ref_audit_daily_agg]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ref_audit_daily_agg](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[day_to_process] [datetime] NULL,
	[timezone] [varchar](10) NULL,
	[begin_process] [datetime] NULL,
	[step_1_stage_agg] [datetime] NULL,
	[step_2_get_row_keys] [datetime] NULL,
	[atep_3_parse_row_key] [datetime] NULL,
	[step_4_stg_with_attributes] [datetime] NULL,
	[step_5_insert_to_production] [datetime] NULL,
	[duration_1] [int] NULL,
	[duration_2] [int] NULL,
	[duration_3] [int] NULL,
	[duration_4] [int] NULL,
	[duration_5] [int] NULL,
	[total_row_count] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ref_audit_monthly_agg]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ref_audit_monthly_agg](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[day_to_process] [datetime] NULL,
	[timezone] [varchar](10) NULL,
	[begin_process] [datetime] NULL,
	[step_1_stage_agg] [datetime] NULL,
	[step_2_get_row_keys] [datetime] NULL,
	[atep_3_parse_row_key] [datetime] NULL,
	[step_4_stg_with_attributes] [datetime] NULL,
	[step_5_insert_to_production] [datetime] NULL,
	[duration_1] [int] NULL,
	[duration_2] [int] NULL,
	[duration_3] [int] NULL,
	[duration_4] [int] NULL,
	[duration_5] [int] NULL,
	[total_row_count] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ref_current_file_list]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ref_current_file_list](
	[file_location] [varchar](900) NULL,
	[file_name_txt] [varchar](900) NULL,
	[file_check_datetime] [datetime] NULL,
	[size_MB] [decimal](36, 2) NULL,
	[size_KB] [decimal](36, 2) NULL,
	[row_count] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ref_current_file_list_archive]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ref_current_file_list_archive](
	[file_location] [varchar](900) NULL,
	[file_name_txt] [varchar](900) NULL,
	[file_processed_datetime] [datetime] NULL,
	[size_MB] [decimal](36, 2) NULL,
	[size_KB] [decimal](36, 2) NULL,
	[processed] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ref_file_load]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ref_file_load](
	[file_location] [varchar](900) NULL,
	[file_name_txt] [varchar](255) NULL,
	[file_type] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ref_file_purge]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ref_file_purge](
	[file_location] [varchar](900) NULL,
	[file_name_txt] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ref_processed_file_list]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ref_processed_file_list](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[file_type] [varchar](100) NULL,
	[file_location] [varchar](900) NULL,
	[file_name_txt] [varchar](255) NULL,
	[file_row_count] [bigint] NULL,
	[size_MB] [decimal](36, 2) NULL,
	[size_KB] [decimal](36, 2) NULL,
	[process_into_staging] [datetime] NULL,
	[staging_complete] [datetime] NULL,
	[staging_row_count] [int] NULL,
	[staging_duration] [bigint] NULL,
	[process_into_reporting] [datetime] NULL,
	[reporting_row_count] [int] NULL,
	[reporting_duration] [bigint] NULL,
	[iscomplete] [varchar](100) NULL,
	[etl_time] [datetime] NULL,
	[completed_datetime] [datetime] NULL,
 CONSTRAINT [PK_ref_processed_file_list] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ref_row_key]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ref_row_key](
	[row_key] [varchar](900) NULL,
	[Instance_NK] [varchar](255) NULL,
	[Instance_Source_System] [varchar](255) NULL,
	[Monitor_NK] [varchar](255) NULL,
	[Monitor_Type] [varchar](50) NULL,
	[Monitor_Silo] [varchar](50) NULL,
	[Monitor_Source_System] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ref_row_key_hold]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ref_row_key_hold](
	[row_key] [varchar](2000) NULL,
	[row_key_string] [varchar](2000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ref_row_key_hold_NULL]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ref_row_key_hold_NULL](
	[row_key] [varchar](2000) NULL,
	[row_key_string] [varchar](2000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ref_row_key_NULL]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ref_row_key_NULL](
	[row_key] [varchar](900) NULL,
	[Instance_NK] [varchar](255) NULL,
	[Instance_Source_System] [varchar](255) NULL,
	[Monitor_NK] [varchar](255) NULL,
	[Monitor_Type] [varchar](50) NULL,
	[Monitor_Silo] [varchar](50) NULL,
	[Monitor_Source_System] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[report_account_device_daily]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_account_device_daily](
	[Account_Name] [varchar](255) NULL,
	[Account_Number] [varchar](255) NULL,
	[Account_Type] [varchar](255) NULL,
	[Account_Source_System_name] [varchar](255) NULL,
	[team_name] [varchar](255) NULL,
	[Device_Host_Name] [varchar](255) NULL,
	[Device_Number] [varchar](255) NULL,
	[Device_Type] [varchar](100) NULL,
	[Device_Status] [varchar](40) NULL,
	[Device_Source_System_Name] [varchar](225) NULL,
	[etl_date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[report_account_device_daily_cloud]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_account_device_daily_cloud](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Account_Name] [varchar](255) NULL,
	[Account_Number] [varchar](255) NULL,
	[Account_Type] [varchar](255) NULL,
	[Account_Source_System_name] [varchar](255) NULL,
	[team_name] [varchar](255) NULL,
	[Device_Host_Name] [varchar](255) NULL,
	[Device_Number] [varchar](255) NULL,
	[Device_Type] [varchar](100) NULL,
	[Device_Status] [varchar](40) NULL,
	[Device_Source_System_Name] [varchar](225) NULL,
	[etl_date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[report_account_device_daily_core]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_account_device_daily_core](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Account_Name] [varchar](255) NULL,
	[Account_Number] [varchar](255) NULL,
	[Account_Type] [varchar](255) NULL,
	[Account_Source_System_name] [varchar](255) NULL,
	[team_name] [varchar](255) NULL,
	[Device_Host_Name] [varchar](255) NULL,
	[Device_Number] [varchar](255) NULL,
	[Device_Type] [varchar](100) NULL,
	[Device_Status] [varchar](40) NULL,
	[Device_Source_System_Name] [varchar](225) NULL,
	[etl_date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Report_Monitoring_Availability_Daily]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Report_Monitoring_Availability_Daily](
	[ID] [bigint] NOT NULL,
	[Time_KEY] [int] NOT NULL,
	[Time_Full_Date] [datetime2](7) NULL,
	[Time_Month_Number] [int] NOT NULL,
	[Time_Month_Desc] [varchar](50) NOT NULL,
	[Time_Month_Abbr] [varchar](10) NOT NULL,
	[Time_Year_Number] [int] NOT NULL,
	[Time_Quarter_Number] [int] NOT NULL,
	[Time_Full_Date_HMS] [datetime2](7) NULL,
	[Account_Name] [varchar](255) NULL,
	[Account_Number] [bigint] NULL,
	[Account_Type] [varchar](255) NULL,
	[Device_Host_Name] [varchar](255) NULL,
	[Device_Number] [varchar](255) NULL,
	[Device_Status] [varchar](40) NULL,
	[Monitor_Type] [nvarchar](100) NULL,
	[Monitor_Name] [nvarchar](1024) NULL,
	[Monitor_Silo] [nvarchar](100) NULL,
	[Source_System_Name] [varchar](100) NULL,
	[uptimeDuration] [int] NULL,
	[downtimeDurationWithSupression] [int] NULL,
	[downtimeDurationWithoutSupression] [int] NULL,
	[uptimePercentageWithSupression] [decimal](38, 6) NULL,
	[uptimePercentageWithoutSupression] [decimal](38, 6) NULL,
	[row_key] [varchar](512) NOT NULL,
	[Monitor_ID] [varchar](512) NULL,
	[Device_Source] [varchar](255) NULL,
	[Account_Source] [varchar](225) NULL,
	[etl_date] [datetime2](7) NULL,
	[monitor_type_group] [varchar](100) NULL,
 CONSTRAINT [pk_rmad_id] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Report_Monitoring_Availability_Hourly]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Report_Monitoring_Availability_Hourly](
	[ID] [bigint] NOT NULL,
	[Time_KEY] [int] NOT NULL,
	[Time_Full_Date] [datetime2](7) NOT NULL,
	[Time_Month_Number] [int] NOT NULL,
	[Time_Month_Desc] [varchar](100) NOT NULL,
	[Time_Month_Abbr] [varchar](10) NOT NULL,
	[Time_Year_Number] [int] NOT NULL,
	[Time_Quarter_Number] [int] NOT NULL,
	[HMS_Military_Hour_Number] [int] NULL,
	[Time_Full_Date_HMS] [datetime] NULL,
	[End_Time_Key] [int] NULL,
	[End_Time_Full_Date] [datetime] NULL,
	[End_Time_Month_Number] [int] NULL,
	[End_Time_Month_Desc] [varchar](50) NULL,
	[End_Time_Month_Abbr] [varchar](50) NULL,
	[End_Time_Year_Number] [int] NULL,
	[End_Time_Quater_Number] [int] NULL,
	[End_Time_Quater_Desc] [varchar](50) NULL,
	[End_HMS_Military_Hour_Number] [int] NULL,
	[End_Time_Full_Date_HMS] [datetime] NULL,
	[Account_Name] [varchar](255) NULL,
	[Account_Number] [bigint] NULL,
	[Account_Type] [varchar](255) NULL,
	[Device_Host_Name] [varchar](255) NULL,
	[Device_Number] [varchar](255) NULL,
	[Device_Status] [varchar](40) NULL,
	[Monitor_Type] [nvarchar](100) NULL,
	[Monitor_Name] [nvarchar](1024) NULL,
	[Monitor_Silo] [nvarchar](100) NULL,
	[Source_System_Name] [varchar](100) NULL,
	[uptimeDuration] [int] NULL,
	[downtimeDurationWithSupression] [int] NULL,
	[downtimeDurationWithoutSupression] [int] NULL,
	[uptimePercentageWithSupression] [decimal](38, 6) NULL,
	[uptimePercentageWithoutSupression] [decimal](38, 6) NULL,
	[row_key] [varchar](512) NOT NULL,
	[Monitor_ID] [varchar](255) NULL,
	[Device_Source] [varchar](255) NULL,
	[Account_Source] [varchar](255) NULL,
	[etl_date] [datetime] NULL,
	[Monitor_Type_Group] [varchar](255) NULL,
 CONSTRAINT [pk_rmah_id] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Report_Monitoring_Availability_Monthly]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Report_Monitoring_Availability_Monthly](
	[ID] [int] NOT NULL,
	[Time_KEY] [int] NOT NULL,
	[Time_Full_Date] [datetime2](7) NOT NULL,
	[Time_Month_Number] [int] NOT NULL,
	[Time_Month_Desc] [varchar](50) NOT NULL,
	[Time_Month_Abbr] [varchar](10) NOT NULL,
	[Time_Year_Number] [int] NOT NULL,
	[Time_Quarter_Number] [int] NOT NULL,
	[Account_Name] [varchar](255) NULL,
	[Account_Number] [bigint] NULL,
	[Account_Type] [varchar](255) NULL,
	[Device_Host_Name] [varchar](255) NULL,
	[Device_Number] [varchar](255) NULL,
	[Device_Status] [varchar](40) NULL,
	[Monitor_Type] [nvarchar](100) NULL,
	[Monitor_Name] [nvarchar](1024) NULL,
	[Monitor_Silo] [nvarchar](100) NULL,
	[Source_System_Name] [varchar](100) NULL,
	[uptimeDuration] [int] NULL,
	[downtimeDurationWithSupression] [int] NULL,
	[downtimeDurationWithoutSupression] [int] NULL,
	[uptimePercentageWithSupression] [decimal](38, 6) NULL,
	[uptimePercentageWithoutSupression] [decimal](38, 6) NULL,
	[row_key] [varchar](512) NOT NULL,
	[Monitor_ID] [varchar](255) NULL,
	[Device_Source] [varchar](255) NULL,
	[Account_Source] [varchar](225) NULL,
	[etl_date] [datetime2](7) NULL,
	[monitor_type_group] [varchar](100) NULL,
 CONSTRAINT [pk_rmam_id] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stg_investigate_monitoring]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stg_investigate_monitoring](
	[row_key] [varchar](900) NULL,
	[Start_Time_Unix_TS] [int] NULL,
	[Duration] [int] NULL,
	[Total_Down_Time] [int] NULL,
	[Interval_Down_Time] [int] NULL,
	[Aggreed_Up_Time] [int] NULL,
	[Total_Percent] [decimal](38, 8) NULL,
	[Calculated_Percent] [decimal](38, 8) NULL,
	[converted_start_time] [datetime] NULL,
	[file_name_txt] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_MAAS_Active_Monitors]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_MAAS_Active_Monitors](
	[Row_Key] [varchar](255) NULL,
	[Record_Created_Datetime] [datetime] NULL,
	[Record_Created_By] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_MAAS_Alerts]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_MAAS_Alerts](
	[Poll_ID] [varchar](250) NULL,
	[Poll_TimeStamp] [datetime] NULL,
	[Poll_AccountID] [varchar](250) NULL,
	[Poll_TenantID] [varchar](250) NULL,
	[Poll_EntityId] [varchar](250) NULL,
	[Poll_CheckId] [varchar](250) NULL,
	[Poll_Target] [varchar](5000) NULL,
	[Poll_CheckType] [varchar](250) NULL,
	[Poll_MonitoringZone] [varchar](250) NULL,
	[Poll_CollectorId] [varchar](250) NULL,
	[Poll_Available] [varchar](250) NULL,
	[Record_Created_Datetime] [datetime] NULL,
	[Record_Created_By] [varchar](100) NULL,
	[Record_Updated_Datetime] [datetime] NULL,
	[Record_Updated_By] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_MAAS_Config]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_MAAS_Config](
	[ACCOUNT_ID] [varchar](200) NULL,
	[ACCOUNT_EXTERNAL_ID] [varchar](200) NULL,
	[ENTITY_ID] [varchar](200) NULL,
	[ENTITY_LABEL] [varchar](500) NULL,
	[ENTITY_URI] [varchar](5000) NULL,
	[CHECK_ID] [varchar](200) NULL,
	[CHECK_LABEL] [varchar](1000) NULL,
	[CHECK_TYPE] [varchar](500) NULL,
	[CHECK_MONITORING_ZONE] [varchar](500) NULL,
	[CHECK_PORT] [varchar](500) NULL,
	[CHECK_TIMEOUT] [varchar](500) NULL,
	[CHECK_PERIOD] [varchar](500) NULL,
	[CHECK_TGT_HOSTNAME] [varchar](5000) NULL,
	[CHECK_TGT_RESOLVER] [varchar](500) NULL,
	[CHECK_URL] [varchar](5000) NULL,
	[CHECK_DISABLED] [varchar](500) NULL,
	[CHECK_CREATED_AT] [datetime] NULL,
	[CHECK_UPDATED_AT] [datetime] NULL,
	[Record_Created_Datetime] [datetime] NULL,
	[Record_Created_By] [varchar](100) NULL,
	[Record_Updated_Datetime] [datetime] NULL,
	[Record_Updated_By] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_MAAS_Poll_State]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_MAAS_Poll_State](
	[Monitor_ID_NK] [varchar](255) NULL,
	[Poll_Available] [varchar](250) NULL,
	[Start_Time] [datetime] NULL,
	[End_Time] [datetime] NULL,
	[Row_Key] [varchar](255) NULL,
	[Record_Created_Datetime] [datetime] NULL,
	[Record_Created_By] [varchar](100) NULL,
	[Record_Updated_Datetime] [datetime] NULL,
	[Record_Updated_By] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stg_monitoring_daily]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stg_monitoring_daily](
	[row_key] [varchar](900) NULL,
	[Start_Time_Unix_TS] [int] NULL,
	[Duration] [int] NULL,
	[Total_Down_Time] [int] NULL,
	[Interval_Down_Time] [int] NULL,
	[Aggreed_Up_Time] [int] NULL,
	[Total_Percent] [decimal](38, 6) NULL,
	[Calculated_Percent] [decimal](38, 6) NULL,
	[converted_start_time] [datetime] NULL,
	[file_name_txt] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stg_monitoring_daily_central_time]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stg_monitoring_daily_central_time](
	[uptimeDuration] [int] NULL,
	[downtimeDurationWithSupression] [int] NULL,
	[downtimeDurationWithoutSupression] [int] NULL,
	[uptimePercentageWithSupression] [decimal](38, 6) NULL,
	[uptimePercentageWithoutSupression] [decimal](38, 6) NULL,
	[row_key] [varchar](512) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stg_monitoring_daily_universal_time]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stg_monitoring_daily_universal_time](
	[sum_uptimeDuration] [int] NULL,
	[sum_downtimeDurationWithSupression] [int] NULL,
	[sum_downtimeDurationWithoutSupression] [int] NULL,
	[avg_uptimePercentageWithSupression] [decimal](38, 6) NULL,
	[avg_uptimePercentageWithoutSupression] [decimal](38, 6) NULL,
	[row_key] [varchar](512) NOT NULL,
	[device_number] [varchar](255) NULL,
	[device_source] [varchar](255) NULL,
	[Account_Name] [varchar](255) NULL,
	[Account_Number] [bigint] NULL,
	[Account_Type] [varchar](255) NULL,
	[Device_Host_Name] [varchar](255) NULL,
	[Device_Status] [varchar](40) NULL,
	[Monitor_Type] [nvarchar](100) NULL,
	[Monitor_Name] [nvarchar](1024) NULL,
	[Monitor_Silo] [nvarchar](100) NULL,
	[Source_System_Name] [varchar](100) NULL,
	[Monitor_ID] [varchar](255) NULL,
	[Account_Source] [varchar](255) NULL,
	[Monitor_Type_Group] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stg_monitoring_hourly]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stg_monitoring_hourly](
	[row_key] [varchar](900) NULL,
	[Start_Time_Unix_TS] [int] NULL,
	[Duration] [int] NULL,
	[Total_Down_Time] [int] NULL,
	[Interval_Down_Time] [int] NULL,
	[Aggreed_Up_Time] [int] NULL,
	[Total_Percent] [decimal](38, 20) NULL,
	[Calculated_Percent] [decimal](38, 20) NULL,
	[converted_start_time] [datetime] NULL,
	[file_name_txt] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stg_monitoring_monthly]    Script Date: 10/18/2016 1:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stg_monitoring_monthly](
	[row_key] [varchar](900) NULL,
	[Start_Time_Unix_TS] [int] NULL,
	[Duration] [int] NULL,
	[Total_Down_Time] [int] NULL,
	[Interval_Down_Time] [int] NULL,
	[Aggreed_Up_Time] [int] NULL,
	[Total_Percent] [decimal](38, 6) NULL,
	[Calculated_Percent] [decimal](38, 6) NULL,
	[converted_start_time] [datetime] NULL,
	[file_name_txt] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stg_monitoring_monthly_universal_time]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stg_monitoring_monthly_universal_time](
	[sum_uptimeDuration] [int] NULL,
	[sum_downtimeDurationWithSupression] [int] NULL,
	[sum_downtimeDurationWithoutSupression] [int] NULL,
	[avg_uptimePercentageWithSupression] [decimal](38, 6) NULL,
	[avg_uptimePercentageWithoutSupression] [decimal](38, 6) NULL,
	[row_key] [varchar](512) NOT NULL,
	[device_number] [varchar](255) NULL,
	[device_source] [varchar](255) NULL,
	[Account_Name] [varchar](255) NULL,
	[Account_Number] [bigint] NULL,
	[Account_Type] [varchar](255) NULL,
	[Device_Host_Name] [varchar](255) NULL,
	[Device_Status] [varchar](40) NULL,
	[Monitor_Type] [nvarchar](100) NULL,
	[Monitor_Name] [nvarchar](1024) NULL,
	[Monitor_Silo] [nvarchar](100) NULL,
	[Source_System_Name] [varchar](100) NULL,
	[Monitor_ID] [varchar](255) NULL,
	[Account_Source] [varchar](255) NULL,
	[Monitor_Type_Group] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stg_monitoring_monthly_universal_time_old]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stg_monitoring_monthly_universal_time_old](
	[uptimeDuration] [int] NULL,
	[downtimeDurationWithSupression] [int] NULL,
	[downtimeDurationWithoutSupression] [int] NULL,
	[uptimePercentageWithSupression] [decimal](38, 6) NULL,
	[uptimePercentageWithoutSupression] [decimal](38, 6) NULL,
	[row_key] [varchar](512) NULL,
	[device_number] [varchar](255) NULL,
	[device_source] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stg_monitoring_monthly_universal_time_old1]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stg_monitoring_monthly_universal_time_old1](
	[uptimeDuration] [int] NULL,
	[downtimeDurationWithSupression] [int] NULL,
	[downtimeDurationWithoutSupression] [int] NULL,
	[uptimePercentageWithSupression] [decimal](38, 6) NULL,
	[uptimePercentageWithoutSupression] [decimal](38, 6) NULL,
	[row_key] [varchar](512) NULL,
	[device_number] [varchar](255) NULL,
	[device_source] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stg_report_monitoring_availability_daily]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stg_report_monitoring_availability_daily](
	[Time_KEY] [int] NOT NULL,
	[Time_Full_Date] [datetime] NULL,
	[Time_Month_Number] [int] NOT NULL,
	[Time_Month_Desc] [varchar](50) NOT NULL,
	[Time_Month_Abbr] [varchar](10) NOT NULL,
	[Time_Year_Number] [int] NOT NULL,
	[Time_Quarter_Number] [int] NOT NULL,
	[Time_Full_Date_HMS] [datetime] NULL,
	[Account_Name] [varchar](255) NULL,
	[Account_Number] [varchar](150) NULL,
	[Account_Type] [varchar](255) NULL,
	[Device_Host_Name] [varchar](255) NULL,
	[Device_Number] [varchar](255) NULL,
	[Device_Status] [varchar](40) NULL,
	[Monitor_Type] [nvarchar](100) NULL,
	[Monitor_Name] [nvarchar](1024) NULL,
	[Monitor_Silo] [nvarchar](100) NULL,
	[Monitor_Type_Group] [varchar](100) NULL,
	[Source_System_Name] [varchar](100) NULL,
	[uptimeDuration] [int] NULL,
	[downtimeDurationWithSupression] [int] NULL,
	[downtimeDurationWithoutSupression] [int] NULL,
	[uptimePercentageWithSupression] [decimal](38, 6) NULL,
	[uptimePercentageWithoutSupression] [decimal](38, 6) NULL,
	[row_key] [varchar](512) NOT NULL,
	[Monitor_ID] [varchar](512) NULL,
	[Device_Source] [varchar](255) NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[stg_report_monitoring_availability_daily] ADD [Account_Source] [varchar](225) NULL
ALTER TABLE [dbo].[stg_report_monitoring_availability_daily] ADD [etl_date] [datetime] NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[stg_report_monitoring_availability_daily] ADD [file_name_txt] [varchar](255) NULL

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stg_report_monitoring_availability_daily_central_time]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stg_report_monitoring_availability_daily_central_time](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Time_KEY] [int] NOT NULL,
	[Time_Full_Date] [datetime] NULL,
	[Time_Month_Number] [int] NOT NULL,
	[Time_Month_Desc] [varchar](50) NOT NULL,
	[Time_Month_Abbr] [varchar](10) NOT NULL,
	[Time_Year_Number] [int] NOT NULL,
	[Time_Quarter_Number] [int] NOT NULL,
	[Time_Full_Date_HMS] [datetime] NULL,
	[Account_Name] [varchar](255) NULL,
	[Account_Number] [varchar](150) NULL,
	[Account_Type] [varchar](255) NULL,
	[Device_Host_Name] [varchar](255) NULL,
	[Device_Number] [varchar](255) NULL,
	[Device_Status] [varchar](40) NULL,
	[Monitor_Type] [nvarchar](100) NULL,
	[Monitor_Name] [nvarchar](1024) NULL,
	[Monitor_Silo] [nvarchar](100) NULL,
	[Monitor_Type_Group] [varchar](100) NULL,
	[Source_System_Name] [varchar](100) NULL,
	[uptimeDuration] [int] NULL,
	[downtimeDurationWithSupression] [int] NULL,
	[downtimeDurationWithoutSupression] [int] NULL,
	[uptimePercentageWithSupression] [decimal](38, 6) NULL,
	[uptimePercentageWithoutSupression] [decimal](38, 6) NULL,
	[row_key] [varchar](512) NOT NULL,
	[Monitor_ID] [varchar](512) NULL,
	[Device_Source] [varchar](255) NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[stg_report_monitoring_availability_daily_central_time] ADD [Account_Source] [varchar](225) NULL
ALTER TABLE [dbo].[stg_report_monitoring_availability_daily_central_time] ADD [etl_date] [datetime] NULL DEFAULT (getdate())

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stg_report_monitoring_availability_daily_universal_time]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stg_report_monitoring_availability_daily_universal_time](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Time_KEY] [int] NOT NULL,
	[Time_Full_Date] [datetime] NULL,
	[Time_Month_Number] [int] NOT NULL,
	[Time_Month_Desc] [varchar](50) NOT NULL,
	[Time_Month_Abbr] [varchar](10) NOT NULL,
	[Time_Year_Number] [int] NOT NULL,
	[Time_Quarter_Number] [int] NOT NULL,
	[Time_Full_Date_HMS] [datetime] NULL,
	[Account_Name] [varchar](255) NULL,
	[Account_Number] [varchar](150) NULL,
	[Account_Type] [varchar](255) NULL,
	[Device_Host_Name] [varchar](255) NULL,
	[Device_Number] [varchar](255) NULL,
	[Device_Status] [varchar](40) NULL,
	[Monitor_Type] [nvarchar](100) NULL,
	[Monitor_Name] [nvarchar](1024) NULL,
	[Monitor_Silo] [nvarchar](100) NULL,
	[Monitor_Type_Group] [varchar](100) NULL,
	[Source_System_Name] [varchar](100) NULL,
	[uptimeDuration] [int] NULL,
	[downtimeDurationWithSupression] [int] NULL,
	[downtimeDurationWithoutSupression] [int] NULL,
	[uptimePercentageWithSupression] [decimal](38, 6) NULL,
	[uptimePercentageWithoutSupression] [decimal](38, 6) NULL,
	[row_key] [varchar](512) NOT NULL,
	[Monitor_ID] [varchar](512) NULL,
	[Device_Source] [varchar](255) NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[stg_report_monitoring_availability_daily_universal_time] ADD [Account_Source] [varchar](225) NULL
ALTER TABLE [dbo].[stg_report_monitoring_availability_daily_universal_time] ADD [etl_date] [datetime] NULL DEFAULT (getdate())

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stg_report_monitoring_availability_hourly]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stg_report_monitoring_availability_hourly](
	[Time_KEY] [int] NOT NULL,
	[Time_Full_Date] [datetime] NOT NULL,
	[Time_Month_Number] [int] NOT NULL,
	[Time_Month_Desc] [varchar](50) NOT NULL,
	[Time_Month_Abbr] [varchar](10) NOT NULL,
	[Time_Year_Number] [int] NOT NULL,
	[Time_Quarter_Number] [int] NOT NULL,
	[HMS_Military_Hour_Number] [int] NULL,
	[Time_Full_Date_HMS] [datetime] NULL,
	[End_Time_Key] [int] NULL,
	[End_Time_Full_Date] [datetime] NULL,
	[End_Time_Month_Number] [int] NULL,
	[End_Time_Month_Desc] [varchar](50) NULL,
	[End_Time_Month_Abbr] [varchar](50) NULL,
	[End_Time_Year_Number] [int] NULL,
	[End_Time_Quarter_Number] [int] NULL,
	[End_Time_Quarter_Desc] [varchar](50) NULL,
	[End_HMS_Military_Hour_Number] [int] NULL,
	[End_Time_Full_Date_HMS] [datetime] NULL,
	[Account_Name] [varchar](255) NULL,
	[Account_Number] [int] NULL,
	[Account_Type] [varchar](255) NULL,
	[Device_Host_Name] [varchar](255) NULL,
	[Device_Number] [varchar](255) NULL,
	[Device_Status] [varchar](40) NULL,
	[Monitor_Type] [nvarchar](100) NULL,
	[Monitor_Name] [nvarchar](1024) NULL,
	[Monitor_Silo] [nvarchar](100) NULL,
	[Monitor_Type_Group] [varchar](100) NULL,
	[Source_System_Name] [varchar](100) NULL,
	[uptimeDuration] [int] NULL,
	[downtimeDurationWithSupression] [int] NULL,
	[downtimeDurationWithoutSupression] [int] NULL,
	[uptimePercentageWithSupression] [decimal](38, 6) NULL,
	[uptimePercentageWithoutSupression] [decimal](38, 6) NULL,
	[row_key] [varchar](512) NOT NULL,
	[Monitor_ID] [varchar](255) NULL,
	[Device_Source] [varchar](255) NULL,
	[Account_Source] [varchar](255) NULL,
	[etl_date] [datetime] NULL,
	[file_name_txt] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stg_report_monitoring_availability_hourly_NULL_HOLD]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stg_report_monitoring_availability_hourly_NULL_HOLD](
	[Time_KEY] [int] NOT NULL,
	[Time_Full_Date] [datetime] NOT NULL,
	[Time_Month_Number] [int] NOT NULL,
	[Time_Month_Desc] [varchar](50) NOT NULL,
	[Time_Month_Abbr] [varchar](10) NOT NULL,
	[Time_Year_Number] [int] NOT NULL,
	[Time_Quarter_Number] [int] NOT NULL,
	[HMS_Military_Hour_Number] [int] NULL,
	[Time_Full_Date_HMS] [datetime] NULL,
	[End_Time_Key] [int] NULL,
	[End_Time_Full_Date] [datetime] NULL,
	[End_Time_Month_Number] [int] NULL,
	[End_Time_Month_Desc] [varchar](50) NULL,
	[End_Time_Month_Abbr] [varchar](50) NULL,
	[End_Time_Year_Number] [int] NULL,
	[End_Time_Quarter_Number] [int] NULL,
	[End_Time_Quarter_Desc] [varchar](50) NULL,
	[End_HMS_Military_Hour_Number] [int] NULL,
	[End_Time_Full_Date_HMS] [datetime] NULL,
	[Account_Name] [varchar](255) NULL,
	[Account_Number] [varchar](150) NULL,
	[Account_Type] [varchar](255) NULL,
	[Device_Host_Name] [varchar](255) NULL,
	[Device_Number] [varchar](255) NULL,
	[Device_Status] [varchar](40) NULL,
	[Monitor_Type] [nvarchar](100) NULL,
	[Monitor_Name] [nvarchar](1024) NULL,
	[Monitor_Silo] [nvarchar](100) NULL,
	[Monitor_Type_Group] [varchar](1024) NULL,
	[Source_System_Name] [varchar](100) NULL,
	[uptimeDuration] [int] NULL,
	[downtimeDurationWithSupression] [int] NULL,
	[downtimeDurationWithoutSupression] [int] NULL,
	[uptimePercentageWithSupression] [decimal](38, 6) NULL,
	[uptimePercentageWithoutSupression] [decimal](38, 6) NULL,
	[row_key] [varchar](512) NOT NULL,
	[Monitor_ID] [varchar](255) NULL,
	[Device_Source] [varchar](255) NULL,
	[Account_Source] [varchar](255) NULL,
	[etl_date] [datetime] NULL DEFAULT (getdate()),
	[file_name_txt] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stg_report_monitoring_availability_monthly]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stg_report_monitoring_availability_monthly](
	[Time_KEY] [int] NOT NULL,
	[Time_Full_Date] [datetime] NULL,
	[Time_Month_Number] [int] NOT NULL,
	[Time_Month_Desc] [varchar](50) NOT NULL,
	[Time_Month_Abbr] [varchar](10) NOT NULL,
	[Time_Year_Number] [int] NOT NULL,
	[Time_Quarter_Number] [int] NOT NULL,
	[Time_Full_Date_HMS] [datetime] NULL,
	[Account_Name] [varchar](255) NULL,
	[Account_Number] [varchar](150) NULL,
	[Account_Type] [varchar](255) NULL,
	[Device_Host_Name] [varchar](255) NULL,
	[Device_Number] [varchar](255) NULL,
	[Device_Status] [varchar](40) NULL,
	[Monitor_Type] [nvarchar](100) NULL,
	[Monitor_Name] [nvarchar](1024) NULL,
	[Monitor_Silo] [nvarchar](100) NULL,
	[Monitor_Type_Group] [varchar](100) NULL,
	[Source_System_Name] [varchar](100) NULL,
	[uptimeDuration] [int] NULL,
	[downtimeDurationWithSupression] [int] NULL,
	[downtimeDurationWithoutSupression] [int] NULL,
	[uptimePercentageWithSupression] [decimal](38, 6) NULL,
	[uptimePercentageWithoutSupression] [decimal](38, 6) NULL,
	[row_key] [varchar](512) NOT NULL,
	[Monitor_ID] [varchar](512) NULL,
	[Device_Source] [varchar](255) NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[stg_report_monitoring_availability_monthly] ADD [Account_Source] [varchar](225) NULL
ALTER TABLE [dbo].[stg_report_monitoring_availability_monthly] ADD [etl_date] [datetime] NULL

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stg_report_monitoring_availability_monthly_central_time]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stg_report_monitoring_availability_monthly_central_time](
	[Time_KEY] [int] NOT NULL,
	[Time_Full_Date] [datetime] NULL,
	[Time_Month_Number] [int] NOT NULL,
	[Time_Month_Desc] [varchar](50) NOT NULL,
	[Time_Month_Abbr] [varchar](10) NOT NULL,
	[Time_Year_Number] [int] NOT NULL,
	[Time_Quarter_Number] [int] NOT NULL,
	[Time_Full_Date_HMS] [datetime] NULL,
	[Account_Name] [varchar](255) NULL,
	[Account_Number] [varchar](150) NULL,
	[Account_Type] [varchar](255) NULL,
	[Device_Host_Name] [varchar](255) NULL,
	[Device_Number] [varchar](255) NULL,
	[Device_Status] [varchar](40) NULL,
	[Monitor_Type] [nvarchar](100) NULL,
	[Monitor_Name] [nvarchar](1024) NULL,
	[Monitor_Silo] [nvarchar](100) NULL,
	[Monitor_Type_Group] [varchar](100) NULL,
	[Source_System_Name] [varchar](100) NULL,
	[uptimeDuration] [int] NULL,
	[downtimeDurationWithSupression] [int] NULL,
	[downtimeDurationWithoutSupression] [int] NULL,
	[uptimePercentageWithSupression] [decimal](38, 6) NULL,
	[uptimePercentageWithoutSupression] [decimal](38, 6) NULL,
	[row_key] [varchar](512) NOT NULL,
	[Monitor_ID] [varchar](512) NULL,
	[Device_Source] [varchar](255) NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[stg_report_monitoring_availability_monthly_central_time] ADD [Account_Source] [varchar](225) NULL
ALTER TABLE [dbo].[stg_report_monitoring_availability_monthly_central_time] ADD [etl_date] [datetime] NULL

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stg_report_monitoring_availability_monthly_universal_time]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stg_report_monitoring_availability_monthly_universal_time](
	[Time_KEY] [int] NOT NULL,
	[Time_Full_Date] [datetime] NULL,
	[Time_Month_Number] [int] NOT NULL,
	[Time_Month_Desc] [varchar](50) NOT NULL,
	[Time_Month_Abbr] [varchar](10) NOT NULL,
	[Time_Year_Number] [int] NOT NULL,
	[Time_Quarter_Number] [int] NOT NULL,
	[Time_Full_Date_HMS] [datetime] NULL,
	[Account_Name] [varchar](255) NULL,
	[Account_Number] [varchar](150) NULL,
	[Account_Type] [varchar](255) NULL,
	[Device_Host_Name] [varchar](255) NULL,
	[Device_Number] [varchar](255) NULL,
	[Device_Status] [varchar](40) NULL,
	[Monitor_Type] [nvarchar](100) NULL,
	[Monitor_Name] [nvarchar](1024) NULL,
	[Monitor_Silo] [nvarchar](100) NULL,
	[Monitor_Type_Group] [varchar](100) NULL,
	[Source_System_Name] [varchar](100) NULL,
	[uptimeDuration] [int] NULL,
	[downtimeDurationWithSupression] [int] NULL,
	[downtimeDurationWithoutSupression] [int] NULL,
	[uptimePercentageWithSupression] [decimal](38, 6) NULL,
	[uptimePercentageWithoutSupression] [decimal](38, 6) NULL,
	[row_key] [varchar](512) NOT NULL,
	[Monitor_ID] [varchar](512) NULL,
	[Device_Source] [varchar](255) NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[stg_report_monitoring_availability_monthly_universal_time] ADD [Account_Source] [varchar](225) NULL
ALTER TABLE [dbo].[stg_report_monitoring_availability_monthly_universal_time] ADD [etl_date] [datetime] NULL DEFAULT (getdate())

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tally]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tally](
	[N] [bigint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tmp_calc_fix]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_calc_fix](
	[id] [int] NOT NULL,
	[uptimeDuration] [int] NULL,
	[downtimeDurationWithSupression] [int] NULL,
	[downtimeDurationWithoutSupression] [int] NULL,
	[uptimePercentageWithSupression] [decimal](38, 6) NULL,
	[uptimePercentageWithoutSupression] [decimal](38, 6) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tmp_check]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tmp_check](
	[row_key] [varchar](512) NOT NULL,
	[cNum] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WRK_MAAS_Poll_State]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WRK_MAAS_Poll_State](
	[Monitor_ID_NK] [varchar](255) NULL,
	[Poll_Available] [varchar](250) NULL,
	[Start_Time] [datetime] NULL,
	[End_Time] [datetime] NULL,
	[Row_Key] [varchar](255) NULL,
	[Record_Created_Datetime] [datetime] NULL,
	[Record_Created_By] [varchar](100) NULL,
	[Record_Updated_Datetime] [datetime] NULL,
	[Record_Updated_By] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [RACKSPACE\natasha.gajic].[stg_monitoring_daily_universal_time_tmp]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [RACKSPACE\natasha.gajic].[stg_monitoring_daily_universal_time_tmp](
	[sum_uptimeDuration] [int] NULL,
	[sum_downtimeDurationWithSupression] [int] NULL,
	[sum_downtimeDurationWithoutSupression] [int] NULL,
	[sum_uptimePercentageWithSupression] [decimal](38, 6) NULL,
	[sum_uptimePercentageWithoutSupression] [decimal](38, 6) NULL,
	[row_key] [varchar](512) NOT NULL,
	[device_number] [varchar](255) NULL,
	[device_source] [varchar](255) NULL,
	[Account_Name] [varchar](255) NULL,
	[Account_Number] [bigint] NULL,
	[Account_Type] [varchar](255) NULL,
	[Device_Host_Name] [varchar](255) NULL,
	[Device_Status] [varchar](40) NULL,
	[Monitor_Type] [nvarchar](100) NULL,
	[Monitor_Name] [nvarchar](1024) NULL,
	[Monitor_Silo] [nvarchar](100) NULL,
	[Source_System_Name] [varchar](100) NULL,
	[Monitor_ID] [varchar](255) NULL,
	[Account_Source] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [RACKSPACE\natasha.gajic].[tmp_acc_dt]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [RACKSPACE\natasha.gajic].[tmp_acc_dt](
	[monitor_id] [varchar](50) NULL,
	[silo] [varchar](3) NULL,
	[dt] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [RACKSPACE\natasha.gajic].[tmp_all_mon]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [RACKSPACE\natasha.gajic].[tmp_all_mon](
	[monitor_id] [varchar](50) NULL,
	[silo] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [RACKSPACE\natasha.gajic].[tmp_check_id]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [RACKSPACE\natasha.gajic].[tmp_check_id](
	[id] [bigint] NOT NULL,
	[row_key] [varchar](512) NOT NULL,
	[time_full_date_hms] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [RACKSPACE\natasha.gajic].[tmp_check_id1]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [RACKSPACE\natasha.gajic].[tmp_check_id1](
	[id] [bigint] NOT NULL,
	[row_key] [varchar](512) NOT NULL,
	[time_full_date_hms] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [RACKSPACE\natasha.gajic].[tmp_check_min_id]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [RACKSPACE\natasha.gajic].[tmp_check_min_id](
	[min_id] [bigint] NULL,
	[row_key] [varchar](512) NOT NULL,
	[time_full_date_hms] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [RACKSPACE\natasha.gajic].[tmp_down_t]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [RACKSPACE\natasha.gajic].[tmp_down_t](
	[monitor_id] [varchar](50) NULL,
	[silo] [varchar](3) NULL,
	[dt] [int] NULL,
	[dp] [decimal](38, 6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [RACKSPACE\natasha.gajic].[tmp_down_t_dec1]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [RACKSPACE\natasha.gajic].[tmp_down_t_dec1](
	[monitor_id] [varchar](50) NULL,
	[silo] [varchar](3) NULL,
	[dt] [int] NULL,
	[dp] [decimal](38, 6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [RACKSPACE\natasha.gajic].[tmp_id_to_del]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RACKSPACE\natasha.gajic].[tmp_id_to_del](
	[id] [bigint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[vw_check_files_with_production_hourly]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE view [dbo].[vw_check_files_with_production_hourly]

as

SELECT
	A.id,
	a.etl_time,
	A.file_location,
	A.file_name_txt,
	A.file_row_count,
	A.reporting_row_count,
	B.rec_count AS Production_Hourly_Row_count
FROM
	Stage_Monitoring.dbo.ref_processed_file_list A
	
	LEFT JOIN
			(
				SELECT
					file_name_txt,
					COUNT(*) AS rec_count
				FROM
					stage_three_dw.dbo.Report_Monitoring_Availability_Hourly with (nolock)
				WHERE
					file_name_txt IS NOT NULL
				GROUP BY
					file_name_txt
			) B
		ON A.file_name_txt	=	B.file_name_txt
where
	b.rec_count is null






GO
/****** Object:  View [dbo].[vw_check_files_with_production_hourly_on_failure]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE view [dbo].[vw_check_files_with_production_hourly_on_failure]

as

SELECT
	A.id,
	A.file_location,
	A.file_name_txt,
	A.file_row_count,
	B.rec_count AS Production_file_Row_count
FROM
	Stage_Monitoring.dbo.ref_processed_file_list A
	
	LEFT JOIN
			(
				SELECT
					file_name_txt,
					COUNT(*) AS rec_count
				FROM
					stage_three_dw.dbo.Report_Monitoring_Availability_Hourly with (nolock)
				WHERE
					file_name_txt IS NOT NULL
				GROUP BY
					file_name_txt
			) B
		ON A.file_name_txt	=	B.file_name_txt
where
	a.completed_datetime is null







GO
/****** Object:  View [dbo].[vw_checking_missing_records_in_production_hourly]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[vw_checking_missing_records_in_production_hourly]

as

select
	a.file_name_txt,
	x.file_row_count,
	y.total_staging_row_count,
	b.production_hourly_rec_count,
	(x.file_row_count - b.production_hourly_rec_count) as missing_record_in_hourly_production
from
	stage_monitoring.dbo.ref_processed_file_list a
	
	left join
			(
				SELECT
					file_name_txt,
					COUNT(*) AS production_hourly_rec_count
				FROM
					stage_three_dw.dbo.Report_Monitoring_Availability_Hourly with (nolock)
				WHERE
					file_name_txt IS NOT NULL
				GROUP BY
					file_name_txt
			) B
		ON A.file_name_txt	=	B.file_name_txt

	left join 
			(--get file_row_count
			select
				x.file_name_txt,
				x.file_row_count
			from
				stage_monitoring.dbo.ref_processed_file_list x
			where
			--	x.file_name_txt = 'UpTimeCalc_Hourly_RackWatch1374890633.csv'
			--and 
				x.file_location <> 'HOURLY_NULL_CATCH'
			) x
		on a.file_name_txt = x.file_name_txt
		
	left join 
			(
			select
				y.file_name_txt,
				sum(y.reporting_row_count)	as total_staging_row_count
			from
				stage_monitoring.dbo.ref_processed_file_list y
			--where
			--	y.file_name_txt = 'UpTimeCalc_Hourly_RackWatch1374890633.csv'
			group by
				y.file_name_txt
			) y
		on a.file_name_txt = y.file_name_txt
where
	a.id >= 1000
and a.file_location <> 'HOURLY_NULL_CATCH'
--and a.file_name_txt = 'UpTimeCalc_Hourly_RackWatch1374890633.csv'
group by
	a.file_name_txt,
	x.file_row_count,
	y.total_staging_row_count,
	b.production_hourly_rec_count	
having
	(x.file_row_count - b.production_hourly_rec_count) > 0




GO
/****** Object:  View [dbo].[vw_report_account_device_daily]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*
-------------------------------------------------------------------------------------------
Created By: David Teniente
Created On: 3/19/2013
-------------------------------------------------------------------------------------------

Description:
--------------
Get current Account and Device combinations

Runs once daily



Modifications:
--------------

-------------------------------------------------------------------------------------------
*/


create view [dbo].[vw_report_account_device_daily]

as

-------------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------------

select
	account_name,
	account_number,
	account_type,
	account_source_system_name,
	team_name,
	device_host_name,
	device_number,
	device_type,
	device_status,
	device_source_system_name,
	etl_date
from
	Stage_Monitoring.dbo.report_account_device_daily_core
	
UNION

select
	account_name,
	account_number,
	account_type,
	account_source_system_name,
	team_name,
	device_host_name,
	device_number,
	device_type,
	device_status,
	device_source_system_name,
	etl_date
from
	Stage_Monitoring.dbo.report_account_device_daily_cloud

GO
/****** Object:  View [dbo].[vw_row_insert_audit]    Script Date: 10/18/2016 1:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create view [dbo].[vw_row_insert_audit]

as

select 	
	file_name_txt,
	file_row_count,
	staging_row_count,
	reporting_row_count,
	size_MB,
	size_KB,
	etl_time,
	staging_complete,
	process_into_reporting,
	completed_datetime,
	iscomplete
from
	Stage_Monitoring.dbo.ref_processed_file_list
where
	file_row_count <> staging_row_count
--order by
--	completed_datetime DESC
	


GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [NonClusteredIndex-20151020-083520]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20151020-083520] ON [dbo].[oneDay]
(
	[Source_System_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [NonClusteredIndex-20151020-083956]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20151020-083956] ON [dbo].[oneDay]
(
	[Account_Source] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_file_loc]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [idx_file_loc] ON [dbo].[ref_current_file_list]
(
	[file_location] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_file_name]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [idx_file_name] ON [dbo].[ref_current_file_list]
(
	[file_name_txt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_file_loc]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [idx_file_loc] ON [dbo].[ref_current_file_list_archive]
(
	[file_location] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_file_name]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [idx_file_name] ON [dbo].[ref_current_file_list_archive]
(
	[file_name_txt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_etl_date]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [idx_etl_date] ON [dbo].[ref_processed_file_list]
(
	[etl_time] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_iscomplete]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [idx_iscomplete] ON [dbo].[ref_processed_file_list]
(
	[iscomplete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_processed_file_name_txt]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [idx_processed_file_name_txt] ON [dbo].[ref_processed_file_list]
(
	[file_name_txt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_dim_instance]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [idx_dim_instance] ON [dbo].[ref_row_key]
(
	[Instance_NK] ASC,
	[Instance_Source_System] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_dim_monitor]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [idx_dim_monitor] ON [dbo].[ref_row_key]
(
	[Monitor_NK] ASC,
	[Monitor_Type] ASC,
	[Monitor_Silo] ASC,
	[Monitor_Source_System] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_Instance]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [IDX_Instance] ON [dbo].[ref_row_key]
(
	[Instance_NK] ASC,
	[Instance_Source_System] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER INDEX [IDX_Instance] ON [dbo].[ref_row_key] DISABLE
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_RowKey]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [IDX_RowKey] ON [dbo].[ref_row_key]
(
	[row_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER INDEX [IDX_RowKey] ON [dbo].[ref_row_key] DISABLE
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_instance]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [idx_instance] ON [dbo].[ref_row_key_NULL]
(
	[Instance_NK] ASC,
	[Instance_Source_System] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_monitor]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [idx_monitor] ON [dbo].[ref_row_key_NULL]
(
	[Monitor_NK] ASC,
	[Monitor_Type] ASC,
	[Monitor_Silo] ASC,
	[Monitor_Source_System] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_Instance_Number]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [IDX_Instance_Number] ON [dbo].[report_account_device_daily]
(
	[Device_Number] ASC,
	[Device_Source_System_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_device]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [idx_device] ON [dbo].[report_account_device_daily_cloud]
(
	[Device_Number] ASC,
	[Device_Source_System_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_device]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [idx_device] ON [dbo].[report_account_device_daily_core]
(
	[Device_Number] ASC,
	[Device_Source_System_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_ROW_KEY]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IDX_ROW_KEY] ON [dbo].[Report_Monitoring_Availability_Daily]
(
	[row_key] ASC,
	[Time_Full_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Account_Number]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Account_Number] ON [dbo].[Report_Monitoring_Availability_Daily]
(
	[Account_Number] ASC,
	[Account_Type] ASC,
	[Time_Full_Date] ASC
)
INCLUDE ( 	[Device_Number],
	[uptimePercentageWithSupression]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Device_Number]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Device_Number] ON [dbo].[Report_Monitoring_Availability_Daily]
(
	[Device_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Time_Full_Date]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Time_Full_Date] ON [dbo].[Report_Monitoring_Availability_Daily]
(
	[Time_Full_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_ROW_KEY]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IDX_ROW_KEY] ON [dbo].[Report_Monitoring_Availability_Monthly]
(
	[row_key] ASC,
	[Time_Full_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Account_Number]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Account_Number] ON [dbo].[Report_Monitoring_Availability_Monthly]
(
	[Account_Number] ASC,
	[Time_Full_Date] ASC,
	[Account_Type] ASC
)
INCLUDE ( 	[Device_Number],
	[uptimePercentageWithSupression]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Device_Number]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Device_Number] ON [dbo].[Report_Monitoring_Availability_Monthly]
(
	[Device_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Time_Full_Date]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Time_Full_Date] ON [dbo].[Report_Monitoring_Availability_Monthly]
(
	[Time_Full_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Time_Key]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Time_Key] ON [dbo].[Report_Monitoring_Availability_Monthly]
(
	[Time_KEY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_RowKey]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [IDX_RowKey] ON [dbo].[stg_monitoring_hourly]
(
	[row_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER INDEX [IDX_RowKey] ON [dbo].[stg_monitoring_hourly] DISABLE
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_Device]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [IDX_Device] ON [dbo].[stg_monitoring_monthly_universal_time_old1]
(
	[device_number] ASC,
	[device_source] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER INDEX [IDX_Device] ON [dbo].[stg_monitoring_monthly_universal_time_old1] DISABLE
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_Row_Key]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [IDX_Row_Key] ON [dbo].[stg_monitoring_monthly_universal_time_old1]
(
	[row_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER INDEX [IDX_Row_Key] ON [dbo].[stg_monitoring_monthly_universal_time_old1] DISABLE
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_file_name_txt]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [idx_file_name_txt] ON [dbo].[stg_report_monitoring_availability_hourly]
(
	[file_name_txt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_row_key]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [idx_row_key] ON [dbo].[stg_report_monitoring_availability_hourly_NULL_HOLD]
(
	[row_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [NonClusteredIndex-20151015-115432]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20151015-115432] ON [RACKSPACE\natasha.gajic].[tmp_check_id]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [NonClusteredIndex-20151015-140303]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20151015-140303] ON [RACKSPACE\natasha.gajic].[tmp_check_id1]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [NonClusteredIndex-20151015-115544]    Script Date: 10/18/2016 1:41:00 PM ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20151015-115544] ON [RACKSPACE\natasha.gajic].[tmp_check_min_id]
(
	[min_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[stg_report_monitoring_availability_daily] ADD  DEFAULT (getdate()) FOR [etl_date]
GO
ALTER TABLE [dbo].[stg_report_monitoring_availability_hourly] ADD  DEFAULT (getdate()) FOR [etl_date]
GO
ALTER TABLE [dbo].[stg_report_monitoring_availability_monthly] ADD  DEFAULT (getdate()) FOR [etl_date]
GO
ALTER TABLE [dbo].[stg_report_monitoring_availability_monthly_central_time] ADD  DEFAULT (getdate()) FOR [etl_date]
GO
USE [master]
GO
ALTER DATABASE [Stage_Monitoring] SET  READ_WRITE 
GO
