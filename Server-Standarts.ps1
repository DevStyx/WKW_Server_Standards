# Erstellen des Ordner WKW2K auf der Festplatte mit dem Betriebsystem auf Root Ebene
New-Item -Path 'C:\WKW2K' -ItemType Directory
# Setzt den Ordner auf erster Ebene auf Versteckt
attrib +h "C:\WKW2K"

# Erstellen innerhalb dieses Ordners weitere Ordner
New-Item -Path 'C:\WKW2K\scripts' -ItemType Directory
New-Item -Path 'C:\WKW2K\utils' -ItemType Directory

Invoke-WebRequest -Uri https://raw.githubusercontent.com/DevStyx/WKW_Server_Standards/main/scripts/Restart-NetAdapter.ps1?token=GHSAT0AAAAAABZQXUGGUNQEFIM7QXPVK2FAY3V6OMQ -OutFile C:\WKW2K\scripts\Restart-NetAdapter.ps1