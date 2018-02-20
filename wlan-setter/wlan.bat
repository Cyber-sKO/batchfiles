:: created by Cyber_sKO
:: Last Chance 20.2.18
@echo off
@color 0a
@title --- Hotspot-Konfigurator ---

:set
set keyusage=persistent
goto menu
:menu
cls
echo.
echo Bitte auswaehlen:
echo.
echo *=================================*
echo #                                 #
echo #     1 = Hotspot Einstellen      #
echo #                                 #
echo #   2 = Hotspot Starten/Stoppen   #
echo #                                 #
echo #          3 = Verlassen          #
echo #                                 #
echo *=================================*
echo.
choice /n /c 123
	if errorlevel 255 goto set
	if errorlevel 3 goto exit
	if errorlevel 2 goto startstop
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

:exist
cls.
echo.
echo Datei wurde schonmal erstellt,
echo bitte immer nachdenken.
ping /n 2 localhost>nul
goto int
REM --- Möglichkeiten ---	
:set
cls
echo.
echo Hier werden ihre Einstellungen fuer den Hotspot festgelegt.
echo kann man immer nach belieben veraendern.
echo.
echo ALLES AUSFUELLEN!
ping /n 4 localhost>nul
cls
echo.
echo Wie soll der Hotspot heissen?
set /p ssid=
cls
echo.
echo Welches Passwort soll der Hotspot haben?
set /p key=
cls
echo.
:wlanset
:: --- Wlan set´s mit Bedingungen
netsh wlan set hostednetwork mode=allow
netsh wlan set hostednetwork ssid=%ssid%
netsh wlan set hostednetwork key=%key% keyUsage=%keyusage%
cls
echo.
echo Hotspot konfiguriert.
ping /n 3 localhost>nul
goto set
:: ------------------------------------------------------------------------
:startstop
cls
echo.
echo *============================*
echo #                            #
echo #          1 = Start         #
echo #                            #
echo #          2 = Stop          #    
echo #                            #
echo *============================*
choice /n /c 12
	if errorlevel 255 goto startstop
	if errorlevel 2 goto stop
	if errorlevel 1 goto start
goto e1
		:start
		cls
		echo.
		echo Hotspot wird gestartet.
		ping /n 2 localhost>nul
			netsh wlan start hostednetwork
		cls
		echo.
		echo Hotspot wurde gestartet.
		ping /n 3 localhost>nul
		goto set
		:stop
		cls
		echo.
		echo Hotspot wird gestopt.
		ping /n 2 localhost>nul
			netsh wlan stop hostednetwork
		cls
		echo.
		echo Hotspot wurde gestopt.
		ping /n 3 localhost>nul
		goto set	
:exit
cls
echo.
echo Danke fuer das Benutzen des CMD Skript von Cyber_sKO
ping /n 3 localhost>nul
exit