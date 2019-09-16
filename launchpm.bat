@echo off
@setlocal ENABLEDELAYEDEXPANSION
REM SET PMPATH FIRST
set PMPATH=D:\ProcessMonitor
 
set LOGPATH=%PMPATH%\logs
 
mkdir %LOGPATH% > nul 2>&1
FOR /f "tokens=1-8 delims=:./ " %%G IN ("%date%_%time%") DO (
SET datetime=%%G%%H%%I_%%J_%%K
)
echo %datetime%
 
start %PMPATH%\procmon.exe /BACKINGFILE %LOGPATH%\procmon%datetime% /ACCEPTEULA /QUIET /MINIMIZED
