@echo off
echo You have to edit the main script and replace "myprogram.exe" in line 4 with your program
echo Main script will open now in notepad.
timeout 15
call notepad "C:\progcheckbyst8\main.bat"
start "" cmd /c "echo Setup completed please restart windows for these settings to take effect!&echo(&pause"
