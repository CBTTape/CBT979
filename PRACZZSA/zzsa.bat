c:
cd\praczzsa
@echo off
:Ask
echo Would you like to use your backup copy of CYL005?(Y/N)
set INPUT=
set /P INPUT=Type input: %=%
If /I "%INPUT%"=="y" goto yes
If /I "%INPUT%"=="n" goto no
echo Incorrect input & goto no
:yes
IF NOT EXIST "cyl005B" goto no
copy cyl005B cyl005
@echo Backup copy of cyl005 will be used.
goto Exitask
:no
@echo Original copy of cyl005 will be used.
copy cyl005O cyl005
:Exitask
@echo.
@echo -------- --- ----- ----- --------- -------- -----------
@echo Starting the Stand Alone Utilities Practice Environment
@echo -------- --- ----- ----- --------- -------- -----------
@echo.
@echo Prepare your TN3270 connection to 127.0.0.1 on port 3270 but do not
@echo connect until after the Hercules System Console is running.
@echo.
@echo After the System Console is active then enter IPL 0A40
@echo.
@echo Once your TN3270 is connected after the IPL, press the Enter Key
@echo on the TN3270 terminal for the Password Prompt, and then
@echo enter the password which is (don't tell anyone) ZZSECRET
@echo.
@echo Once you have exited zzsa with the X command,
@echo type quit on the Hercules console.
@echo This ends the Hercules console, and returns to a command prompt.
@echo.
@echo The batch script, zzsa1.bat refreshes cyl005 with a backup copy.
@echo If you want to use the backup copy this time when you run zzsa,
@echo answer  y  to the prompt at the beginning of zzsa.bat run.
@echo You can also run the batch file zzsabak.bat to create it.
@echo To overlay cyl005 with the original disk, run zzsaorig.bat.
@echo.
pause Press ENTER to go on, or control-C to exit.
@echo.
call zzsa1
pause To start Hercules now, press ENTER.
cd\praczzsa\hyperion-40w
hercules -f c:\praczzsa\praczzsa
pause Press any key to continue when ready
cd\praczzsa
call zzsa1
