REM 
REM
@echo off

:: make sure to change the settings from line 4-9
set dbUser=root
set dbPassword=""
set backupDir="%USERPROFILE%\Documents"
set mysqldump="C:\xampp\mysql\bin\mysqldump.exe"
set mysqlDataDir="C:\xampp\mysql\data"
set zip="C:\Program Files\7-Zip\7z.exe"

	%mysqldump% --host="localhost" --user=%dbUser% --password=%dbPassword% --single-transaction --add-drop-table --databases genesis > genesis.sql
%zip% a -tgzip genesis.sql.gz genesis.sql
DEL genesis.sql
popd