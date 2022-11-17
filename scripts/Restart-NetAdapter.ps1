# Speichert alle Netzwerkadapter, die zum Zeitpunkt des ausführen den Status "UP" haben, in einer Variable.
$NetAdapters = Get-NetAdapter | Select-Object name, status | Where-Object status -eq ‘up’

# Startet jeden Netzwerkadapter einmal neu.
foreach($NetAdapter in $NetAdapters){
    Restart-NetAdapter -Name $NetAdapter.name
}
