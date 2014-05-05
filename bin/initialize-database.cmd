@REM ----------------------------------------------------------
@REM initialize-database.cmd
@REM
@REM This script initializes a new database as defined in PGDATA
@REM ----------------------------------------------------------

@ECHO OFF
@REM     If you want to turn on debugging, turn echo on

@REM call environment script
CALL setenv.bat

@REM configure command prompt window, title, color, size, etc...
MODE con cols=120 lines=25
COLOR 47
TITLE PostgreSQL Database Server port=%PGPORT% username="%PGUSER%" password="%PGPASSWORD%"

@REM Initialize database with superuser/password
%PGHOME%\bin\initdb --username=%PGUSER% --pwfile=password.txt --encoding=UTF8

@REM Press ENTER key to continue ...
PAUSE

