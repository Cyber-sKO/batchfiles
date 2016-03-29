:: Cyber_sKO
:: lc 29.3~0.10
@ echo off
@ color 0a

:int 
set auswahl=
goto menu

:menu 
cls
echo.
echo.
echo ============================================
echo   PC Cleaner
echo ============================================
echo.
echo Tool´s
echo ======
echo.
echo [1] Internet Cookies
echo [2] Temp Internet Datein
echo [3] Laufwerksbereinigung
echo [4] -- noch nicht verfuegbar
echo [5] exit
choice /n /c 12345
	if errorlevel 255 goto int1
	if errorlevel 5 goto exit
	if errorlevel 4 goto error
	if errorlevel 3 goto DC
	if errorlevel 2 goto TI
	if errorlevel 1 goto IC
goto error
:: Error
:error
cls
echo.
echo Ihre auswahlt wurde nicht gefunden
echo Bitte versuchen sie es erneut!
ping /n 2 localhost>nul
goto int

:: tools
:IC
cls
echo.
echo ============================================
echo   Internet-Cookies
echo ============================================
echo.
echo Cookies werden Geloescht...
ping /n 3 localhost>nul
del /f /q "%userprofile%\Cookies\*.*"
cls
echo.
echo ============================================
echo   Internet-Cookies
echo ============================================
echo.
echo Internet Cookies wurden geloescht.
ping /n 3 localhost>nul
goto int
:TI
cls
echo.
echo ============================================
echo   Temp Internet Datein
echo ============================================
echo.
echo Internet Temp wird Geloescht...
ping /n 3 localhost>nul
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
cls
echo.
echo ============================================
echo   Temp Internet Datein
echo ============================================
echo.
echo Internet Temp wurde Geloescht.
ping /n 3 localhost>nul
goto int
:DC
cls
echo.
echo ============================================
echo   Laufwerksbereinigung
echo ============================================
echo.
echo Raume das Laufwerk auf....
ping /n 3 localhost>nul
if exist "C:\WINDOWS\temp" del /f /q "C:WINDOWS\temp\*.*"
if exist "C:\WINDOWS\tmp" del /f /q "C:\WINDOWS\tmp\*.*"
if exist "C:\tmp" del /f /q "C:\tmp\*.*"
if exist "C:\temp" del /f /q "C:\temp\*.*"
if exist "%temp%" del /f /q "%temp%\*.*"
if exist "%tmp%" del /f /q "%tmp%\*.*"
if not exist "C:\WINDOWS\Users\*.*" goto 1
:: if exist "C:\WINDOWS\Users\*.zip" del "C:\WINDOWS\Users\*.zip" /f /q
:: if exist "C:\WINDOWS\Users\*.exe" del "C:\WINDOWS\Users\*.exe" /f /q
:: if exist "C:\WINDOWS\Users\*.gif" del "C:\WINDOWS\Users\*.gif" /f /q
:: if exist "C:\WINDOWS\Users\*.jpg" del "C:\WINDOWS\Users\*.jpg" /f /q
:: if exist "C:\WINDOWS\Users\*.png" del "C:\WINDOWS\Users\*.png" /f /q
:: if exist "C:\WINDOWS\Users\*.bmp" del "C:\WINDOWS\Users\*.bmp" /f /q
:: if exist "C:\WINDOWS\Users\*.avi" del "C:\WINDOWS\Users\*.avi" /f /q
:: if exist "C:\WINDOWS\Users\*.mpg" del "C:\WINDOWS\Users\*.mpg" /f /q
:: if exist "C:\WINDOWS\Users\*.mpeg" del "C:\WINDOWS\Users\*.mpeg" /f /q
:: if exist "C:\WINDOWS\Users\*.ra" del "C:\WINDOWS\Users\*.ra" /f /q
:: if exist "C:\WINDOWS\Users\*.ram" del "C:\WINDOWS\Users\*.ram"/f /q
:: if exist "C:\WINDOWS\Users\*.mp3" del "C:\WINDOWS\Users\*.mp3" /f /q
:: if exist "C:\WINDOWS\Users\*.mov" del "C:\WINDOWS\Users\*.mov" /f /q
:: if exist "C:\WINDOWS\Users\*.qt" del "C:\WINDOWS\Users\*.qt" /f /q
:: if exist "C:\WINDOWS\Users\*.asf" del "C:\WINDOWS\Users\*.asf" /f /q
:1
if not exist C:\WINDOWS\Users\Users\*.* goto 2 /f /q
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
:2
if exist "C:\WINDOWS\ff*.tmp" del C:\WINDOWS\ff*.tmp /f /q
if exist C:\WINDOWS\ShellIconCache del /f /q "C:\WINDOWS\ShellI~1\*.*"
cls
echo.
echo ============================================
echo   Laufwerksbereinigung
echo ============================================
echo Laufwerksbereinigung erfolgrich beendet.
ping /n 3 localhost>nul
goto int