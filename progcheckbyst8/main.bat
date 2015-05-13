@echo off
setlocal enableextensions enabledelayedexpansion
chcp 1250
set checkexe=myprogram.exe
echo ---------------------------------------------------------------------------------- >> C:\progcheckbyst8\log.txt
echo ---------------------------------------------------------------------------------- >> C:\progcheckbyst8\log.txt
set Today=%Date:~4,2%/%Date:~7,2%/%Date:~10,4%
set _time=%TIME:~0,2%:%TIME:~3,2%:%TIME:~6,2%
echo Program Status Check By St8 Started %_time% %Today% >> C:\progcheckbyst8\log.txt
set /a xxxx=0
set /a ffirst=0
:loop
tasklist /FI "IMAGENAME eq %checkexe%" 2>NUL | find /I /N "%checkexe%" >NUL
if "%ERRORLEVEL%"=="0" (
echo Program is running. 
if "!xxxx!"=="15" (
set Today=%Date:~4,2%/%Date:~7,2%/%Date:~10,4%
set _time=%TIME:~0,2%:%TIME:~3,2%:%TIME:~6,2%
echo Checked - All OK !_time! !Today! >> C:\progcheckbyst8\log.txt
set /a xxxx=0
)
set /a xxxx+=1
) else (
echo Program STOPPED. 
set Today=%Date:~4,2%/%Date:~7,2%/%Date:~10,4%
set _time=%TIME:~0,2%:%TIME:~3,2%:%TIME:~6,2%
echo ######################################################################################## >> C:\progcheckbyst8\log.txt
echo ALERT Program stopped !_time! !Today! >> C:\progcheckbyst8\log.txt
echo ######################################################################################## >> C:\progcheckbyst8\log.txt
start /min C:\progcheckbyst8\alert.mp3
start C:\progcheckbyst8\alert.txt
msg "%username%" ALERT!!!! PROGRAM STOPPED
)
timeout /t 120 /NOBREAK
goto :loop
endlocal
