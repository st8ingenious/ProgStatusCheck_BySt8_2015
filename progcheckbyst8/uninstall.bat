@echo off
 echo You will uninstall ProgStatusCheck_BySt8_2015!!
 echo Close this window to abort!!
timeout 30
del "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup\ProgStatusCheck_BySt8_2015.bat.lnk"
del "%userprofile%\Desktop\ProgStatusCheck.lnk"
RMDIR /S /Q C:\progcheckbyst8\
