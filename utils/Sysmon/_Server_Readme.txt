Event-Logs mit "Powershell" leeren: 
wevtutil el | Foreach-Object {wevtutil cl „$_“} 
wevtutil cl application 
wevtutil cl system 
wevtutil cl security
Clear-EventLog -LogName (GEt-EventLog -List).log

FlashPlayer mit "CMD" entfernen:
DISM /Online /Remove-Package /PackagePath:"C:\Windows\servicing\Packages\Adobe-Flash-For-Windows-Package~31bf3856ad364e35~amd64~~10.0.17763.1.mum"

Windows OS WinSxS mit "CMD" leeren:
dism /online /cleanup-image /StartComponentCleanup /ResetBase

Standby Modus mit "CMD" deaktivieren:
powercfg -h off

Windows OS Startmanager von 30 Sekunden auf 5 Sekunden mit "CMD" modifizieren:
bcdedit /timeout 5

Mit Defproof das Standardprofil mit "CMD" erstellen:
defprof your_account_name

Windows OS Desktopsymboleinstellungen mit "Ausführen" modifizieren:
%Systemroot%\system32\rundll32.exe shell32.dll,Control_RunDLL desk.cpl,,0
