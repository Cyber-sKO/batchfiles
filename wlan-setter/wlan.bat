REM created by Cyber_sKO
REM lc 25.03~22.30
REM wt 30m
@echo off
@color 0a
@title ----- Wlan-settings -----

REM --- Setzten ---
:int
:: set wa=
set keyusage=persistent
goto wahl
:wahl
cls
echo.
echo Bitte auswaehlen:
echo.
echo #==============================#
echo #                              #
echo #        1 = set Wlan          #
echo #                              #
echo #        2 = start Wlan        #
echo #                              #
echo #        3 = stop Wlan         #
echo #                              #
echo #          4 = exit            #
echo #                              #
echo #==============================#
echo.
choice /n /c 1234
	if errorlevel 255 goto int1
	if errorlevel 4 exit
	if errorlevel 3 goto stop
	if errorlevel 2 goto start
	if errorlevel 1 goto set
REM --- error ---
goto e1
:e1
cls
echo.
echo die Auswahl ist leider nicht korrekt.
echo bitte versuche es nochmal.
ping /n 2 localhost>nul
goto int
REM --- Möglichkeiten ---	
:set
cls
echo.
echo Hier werden ihre Einstellungen fuer das Wlan festgelegt.
echo kann man immer nach belieben veraendern.
echo bitte alles ausfuellen
:: echo was schon festgelegt wurde was man nicht verändern bitte weiter drücken.
pause>nul
cls
echo.
echo Bitte geben sie ihr Wlan einen Namen:
set /p ssid=
cls
echo.
echo Bitte geben sie ihr Wlan ein Passwort zum verbinden
set /p key=
cls
echo.
echo Söll das Wlan gestartet werden sobald der PC hochfährt?
echo ---- funktion hat noch keine Funktion! ----
echo j/n
set /p as=
cls
:wlanset
:: ============================== Wlan-set´s ==============================
netsh wlan set hostednetwork mode=allow
netsh wlan set hostednetwork ssid=%ssid%
netsh wlan set hostednetwork key=%key% keyUsage=%keyusage%
goto int
:: ------------------------------------------------------------------------
:start
cls
echo.
echo Das Netztwerk wird nun gestarten.
ping /n 2 localhost>nul
netsh wlan start hostednetwork
ping /n 1 localhost>nul
cls
echo.
echo Wlan wurde gestartet.
ping /n 3 localhost>nul
goto int
:stop
cls
echo.
echo Das Netztwerk wird nun beendet.
ping /n 2 localhost>nul
netsh wlan stop hostednetwork
ping /n 1 localhost>nul
cls
echo.
echo Wlan wurde gestopt.
ping /n 3 localhost>nul
goto int