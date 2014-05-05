@REM ----------------------------------------------------------
@REM setenv.bat
@REM
@REM This script initializes values for POSTGRESQL database
@REM ----------------------------------------------------------


@REM set database data directory
SET PGDATA=..\data

@REM set postgresql binary home directory
SET PGHOME=..\pgsql

@REM set postgresql log file
SET PGLOG=..\logs

@REM set super user password from a file
SET /P PGPASSWORD=<password.txt

@REM set the port number
SET PGPORT=5432

@REM set super user login
SET PGUSER=postgres

