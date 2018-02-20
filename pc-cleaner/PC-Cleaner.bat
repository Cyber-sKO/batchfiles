:: Cyber_sKO
:: Version 0.2
:: Last Change 20.2.18
@ echo off
@ color 0a

:Welcome
cls.
echo.
echo.
echo PC-Cleaner
echo Beta Version 0.2
ping /n 3 localhost>nul
:menu 
cls
echo.
echo.
echo ============================================
echo #                PC-Cleaner                #
echo ============================================
echo.
echo Cleaner Tools
echo ======
echo.
echo [1] Browser Cleaner
echo [2] Laufwerksbereinigung
echo [3] Beenden
choice /n /c 123
	if errorlevel 255 goto menu
	if errorlevel 3 goto exit
	if errorlevel 2 goto Laufwerksbereinigung
	if errorlevel 1 goto Browser
goto error
:: Error
:error
cls
echo.
echo Ihre auswahlt wurde nicht gefunden
echo Bitte versuchen sie es erneut!
ping /n 2 localhost>nul
goto int

:: 					Tools
:Browser
cls
echo.
echo ============================================
echo #             Browser-Cleaner              #
echo ============================================
echo.
echo Internet Explorer wird bereinigt...
ping /n 4 localhost>nul
del /f /q "%userprofile%\Cookies\*.*"
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
cls
echo.
echo ============================================
echo #             Browser-Cleaner              #
echo ============================================
echo.
echo Internet Explorer wurde bereinigt.
ping /n 5 localhost>nul
goto menu
:Laufwerksbereinigung
cls
echo.
echo ============================================
echo #            Laufwerksbereinigung          #
echo ============================================
echo.
echo Raume das Laufwerk auf....
ping /n 4 localhost>nul
if exist "C:\WINDOWS\temp" del /f /q "C:WINDOWS\temp\*.*"
if exist "C:\WINDOWS\tmp" del /f /q "C:\WINDOWS\tmp\*.*"
if exist "C:\tmp" del /f /q "C:\tmp\*.*"
if exist "C:\temp" del /f /q "C:\temp\*.*"
if exist "%temp%" del /f /q "%temp%\*.*"
if exist "%tmp%" del /f /q "%tmp%\*.*"
if not exist "C:\WINDOWS\Users\*.*" goto 1st
:1st
if not exist C:\WINDOWS\Users\Users\*.* goto 2nd /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.zip del C:\WINDOWS\Users\Users\*.zip /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.exe del C:\WINDOWS\Users\Users\*.exe /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.gif del C:\WINDOWS\Users\Users\*.gif /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.jpg del C:\WINDOWS\Users\Users\*.jpg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.png del C:\WINDOWS\Users\Users\*.png /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.bmp del C:\WINDOWS\Users\Users\*.bmp /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.avi del C:\WINDOWS\Users\Users\*.avi /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mpg del C:\WINDOWS\Users\Users\*.mpg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mpeg del C:\WINDOWS\Users\Users\*.mpeg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.ra del C:\WINDOWS\Users\Users\*.ra /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.ram del C:\WINDOWS\Users\Users\*.ram /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mp3 del C:\WINDOWS\Users\Users\*.mp3 /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.asf del C:\WINDOWS\Users\Users\*.asf /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.qt del C:\WINDOWS\Users\Users\*.qt /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mov del C:\WINDOWS\Users\Users\*.mov /f /q
:2nd
if exist "C:\WINDOWS\ff*.tmp" del C:\WINDOWS\ff*.tmp /f /q
if exist C:\WINDOWS\ShellIconCache del /f /q "C:\WINDOWS\ShellI~1\*.*"
cls
echo.
echo ============================================
echo #            Laufwerksbereinigung          #
echo ============================================
echo.
echo Laufwerk wurde bereinigt.
ping /n 5 localhost>nul
goto menu
:exit
exit