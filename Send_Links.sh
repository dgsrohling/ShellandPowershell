#!/bin/bash

#No WSL vi como necessário apontar o executável do PowerShell para executar as funções dele dentro do terminal Linux.

powershell='/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe'
amarelo='\033[0;33m'
verde='\033[0;32m'
vermelho='\033[0;31m'
NC='\033[0m'

# ENVIAR LINKS SEPARADOS POR OPÇÕES!

case "$1" in

-t) $powershell Copy-Item -Path .pmm/elotech/TRIBUTARIO.lnk -Destination '\\'$2'\c$\Users\Public\Desktop\TRIBUTARIO.lnk'
    echo -e "[OK] ENVIADO ATALHO DO ${amarelo}TRIBUTARIO${NC} PARA A DESKTOP DO HOST: ${verde}$2${NC}!"
;;

-p) $powershell Copy-Item -Path .pmm/elotech/PROTOCOLO.lnk -Destination '\\'$2'\c$\Users\Public\Desktop\PROTOCOLO.lnk'
    echo -e "[OK] ENVIADO ATALHO DO ${amarelo}PROTOCOLO${NC} PARA A DESKTOP DO HOST: ${verde}$2${NC}!"
;;

-c) $powershell Copy-Item -Path .pmm/elotech/COMPRAS.lnk -Destination '\\'$2'\c$\Users\Public\Desktop\COMPRAS.lnk'
    echo -e "[OK] ENVIADO ATALHO DO ${amarelo}COMPRAS${NC} PARA A DESKTOP DO HOST: ${verde}$2${NC}!"
;;

-s) $powershell Copy-Item -Path .pmm/elotech/Sistemas_Elotech.lnk -Destination '\\'$2'\c$\Users\Public\Desktop\Sistemas_Elotech.lnk'
    echo -e "[OK] ENVIADO ATALHO DO ${amarelo}SISTEMAS ELOTECH${NC} PARA A DESKTOP DO HOST: ${verde}$2${NC}!"
;;

# ENVIAR TODOS OS LINKS.

-all)

    $powershell Copy-Item -Path .pmm/elotech/TRIBUTARIO.lnk -Destination '\\'$2'\c$\Users\Public\Desktop\TRIBUTARIO.lnk'
    $powershell Copy-Item -Path .pmm/elotech/PROTOCOLO.lnk -Destination '\\'$2'\c$\Users\Public\Desktop\PROTOCOLO.lnk'
    $powershell Copy-Item -Path .pmm/elotech/COMPRAS.lnk -Destination '\\'$2'\c$\Users\Public\Desktop\COMPRAS.lnk'
    $powershell Copy-Item -Path .pmm/elotech/LOGIN.lnk -Destination '\\'$2'\c$\Users\Public\Desktop\LOGIN.lnk'
    echo -e "[OK] ENVIADO ATALHOS ${amarelo}LOGIN/TRIBUTARIO/PROTOCOLO/COMPRAS${NC} PARA A DESKTOP DO HOST: ${verde}$2${NC}!"
;;

esac
