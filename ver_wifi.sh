#!/bin/bash


# COM ESSE SCRIPT SIMPLES EH POSSIVEL SABER QUAIS SAO AS REDES WIFI QUE EXISTEM PROXIMAS AO HOST
# CASO ESSE POSSUA UMA PLACA DE REDE ATIVA, EH POSSIVEL SABER OS PERFILS SALVOS E SUAS COFIGURACOES.



/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe psexec '\\'$2 net start winrm> /dev/null 2> /dev/null

case "$1" in

-v) /mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe psexec '\\'$2 netsh wlan show networks
;;

-d) /mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe psexec '\\'$2 netsh wlan show networks mode=bssid
;;

-p) /mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe psexec '\\'$2 netsh wlan show profiles

;;

-s) /mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe psexec '\\'$2 netsh wlan show profile name="$3" key=clear

;;

esac