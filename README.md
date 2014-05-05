# postgresql-win64

Runnable PostgreSQL database for Win64 platform, including scripts to start database from any directory.


## How to download this project?
- Make sure you have `git` installed locally.
- Use `git clone https://github.com/javaclinic/postgresql-win64.git` to clone the project.

## How to initialize database?
- Run script `bin\initialize-database.cmd`, either from a command prompt window, or just double-click on the script file in windows explorer.
- The script will create new data directory, defined in `bin\setenv.bat` script with `PGDATA` variable. Default value is `..\data`, relative off of `bin` directory where script is run from.
- The `PGDATA` folder needs to be non-existent, or empty when running the initialization script.

## How to start database?
- Run script `bin\start-database-server.cmd`, either from a command prompt window, or just double-click on the script file in windows explorer.
- Script will open a new console window (RED color). You can stop the database using `CTRL+C` or calling the stop script, e.g. `bin\stop-database-server.cmd`
- Window title shows the port number, default superuser, and password for accessing the database.

## How to stop database?
- Run script `bin\stop-database-server.cmd`, either from a command prompt window, or just double-click on the script file in windows explorer.
- Alternatively, you can press CTRL+C in the console window (RED).


## Files and Directories

Directory | Notes
--- | ---
`bin`   | contains all scripts to initialize, configure, manage your database
`data`  | initialized database, created automatically by the initialization script
`pgsql` | binary distribution of PostgreSQL (e.g. postgresql-9.3.4-3-windows-x64-binaries.zip)

