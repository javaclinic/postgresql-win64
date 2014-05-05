@REM ----------------------------------------------------------
@REM stop-database-server.cmd
@REM
@REM This script stops database server 
@REM ----------------------------------------------------------

@ECHO OFF
@REM     If you want to turn on debugging, turn echo on

@REM call environment script
CALL setenv.bat

@REM configure command prompt window, title, color, size, etc... 
MODE con cols=132 lines=50
COLOR 47
TITLE Stopping PostgreSQL Database Server port=%PGPORT% username="%PGUSER%" password="%PGPASSWORD%"

@REM shutdown database system
%PGHOME%\bin\pg_ctl -D %PGDATA% stop

@REM Press ENTER key to continue ...
PAUSE

