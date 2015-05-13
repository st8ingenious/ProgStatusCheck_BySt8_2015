ProgStatusCheck_BySt8_2015
Check If a program is running and if not sound an alarm!

The story behind:
Recently my antivirus program keeps crashing randomly.
So I wrote this script in batch files (and a little bit of vbs) to check every few minutes if the antivirus is alive.
I also created an SFX rar archive to automatically install the files.

SETUP:
RUN progcheckbyst8.exe to intall the scripts

OR 

do it manually by following these steps:

>>Open "ProgStatusCheck_BySt8_2015.bat" with notepad.exe and replace "myprogram.exe" in line 4, with the name 
of the program you want to check.

>>Copy-Paste "progcheckbyst8" folder in C:\

>>Run "ProgStatusCheck_BySt8_2015.bat" to manually start the program
OR
>>Run "start-everytime.bat" to make the program run every time Windows boot and 
create a shortcut on the desktop.
Than you can:  
  Open "running" inside the folder and check the running progress of the sript.
  Open "log" to see the log file.
  Click "force-exit" to terminate the program.

Uninstall:
1. Click "force-exit" to terminate the program.
2. Click uninstall.bat


Made by Efstathios Kladis 5/2015