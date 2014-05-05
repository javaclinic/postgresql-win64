@REM ----------------------------------------------------------
@REM start-database-server.cmd
@REM
@REM This script starts database server 
@REM ----------------------------------------------------------

@ECHO OFF
@REM     If you want to turn on debugging, turn echo on

@REM call environment script
CALL setenv.bat

@REM configure command prompt window, title, color, size, etc...
MODE con cols=120 lines=25
COLOR 47
TITLE PostgreSQL Database Server port=%PGPORT% username="%PGUSER%" password="%PGPASSWORD%"

@REM check if the data directory exists
IF NOT EXIST %PGDATA%\pg_hba.conf (
  ECHO.
  ECHO.
  ECHO PGDATA is not configured properly. Please configure PGDATA
  ECHO in "setenv.bat" script and re-run initialization script,
  ECHO.
  ECHO     e.g. initialize-postgres.cmd
  ECHO.
  ECHO.
  PAUSE
  EXIT -100
)

@REM start database instance
%PGHOME%\bin\pg_ctl -D %PGDATA% start

@REM Press ENTER key to continue ...
PAUSE

