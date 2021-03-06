# postgresql-win64

Runnable PostgreSQL database for Win64 platform, including scripts to start database from any directory.

## What do I do with this project?
- This project will help you create a local PostgreSQL server that will work out of the box, with no installation files. As a developer, it is useful to have a local copy of a PostgreSQL server to play with.
- Here's a short summary for impatient:
  - Download project, place it in directory of your choice.
  - Initialize database by running the initialization script.
  - Start database by running the startup script.
  - Now that database is running, start using it. Default port is `5432`, default username is `postgres`, default password is `password`.
  - You can start `PSQL` command prompt by running the script.
  - You can start `PGADMIN` program to administer your postgres database in visual environment (GUI).

## How to download this project?
- You can download this project as a zip, e.g. https://github.com/javaclinic/postgresql-win64/archive/master.zip
- You can download this project using `git` with HTTPS, e.g. `git clone https://github.com/javaclinic/postgresql-win64.git`
- You can download this project using `git` with SSH, e.g. `git clone https://github.com/javaclinic/postgresql-win64.git`
- You can download this project using `svn`, e.g. `svn checkout https://github.com/javaclinic/postgresql-win64`

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

## How to start PSQL command prompt?
- Run script `bin\start-psql-prompt.cmd`, either from a command prompt window, or just double-click on the script file in windows explorer.
- To exit PSQL command prompt, type in `\q`.
- To get additional HELP, type in `\?`
- To get additional usage on various commands, type in `\help`


## Files and Directories

Directory | Notes
--- | ---
`bin`   | contains all scripts to initialize, configure, manage your database
`data`  | initialized database, created automatically by the initialization script
`pgsql` | binary distribution of PostgreSQL (e.g. postgresql-9.3.4-3-windows-x64-binaries.zip)

