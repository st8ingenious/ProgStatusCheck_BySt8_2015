 @echo off
 xcopy /s "C:\progcheckbyst8\ProgStatusCheck_BySt8_2015.bat.lnk" "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup"
 xcopy /s "C:\progcheckbyst8\ProgStatusCheck.lnk" "%userprofile%\Desktop"
 cls
 echo -----------------------------------------------------------
 echo ProgStatusCheck_BySt8_2015 will start on boot!
 echo A shortcut created on the desktop.
 echo Open "running" inside the folder and check the running progress of the sript.
 echo Open "log" to see the log file.
 echo Click "force-exit" to terminate the program.
 echo -----------------------------------------------------------
 echo You may now close this window and restart windows
 pause