c:
cd\praczzsa
@echo Creating cyl005 from the backup.
@echo off
IF EXIST "cyl005B" goto ISBACK
IF NOT EXIST "cyl005" goto NOCYL
@echo No cyl005B backup exists--making copy.
copy cyl005  cyl005B
@echo
goto BACKOUT
:ISBACK
@echo Copying cyl005 from backup copy.
@echo
copy cyl005B  cyl005
goto BACKOUT
:NOCYL
@echo No cyl005 backup exists--copying original.
@echo
copy cyl005O cyl005
:BACKOUT
cd\praczzsa
