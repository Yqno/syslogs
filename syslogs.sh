#!/bin/bash

# Name des Log-Files angeben
logfile="/var/log/syslog"

# Muster angeben, nach dem gesucht werden soll
pattern="error"

# Schleife für kontinuierliches Überwachen des Logs
while true
do
    # Zeilen mit dem angegebenen Muster suchen und ausgeben
    grep -i "$pattern" $logfile
    
    # 5 Sekunden warten
    sleep 5
done
