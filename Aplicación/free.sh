#!/bin/bash

# Convertir de MB a GB 
function convertir_a_gb 
{
	local memoria_mb=$1
	if (( memoria_mb > 1000 )); then
		echo "$(bc <<< "scale=2; $memoria_mb / 1024") GB"
	else
		echo "$memoria_mb MB"
	fi
}

# Obtener información de la memoria
memTotal=$(sysctl -n hw.memsize)
pageSize=$(sysctl -n hw.pagesize)

# Obtener información de vm_stat
vm_stat=$(vm_stat)

# Calcular memoria usada y libre
wired=$(echo "$vm_stat" | grep 'Pages wired down:' | awk '{print $4}' | sed 's/\.//')
active=$(echo "$vm_stat" | grep 'Pages active:' | awk '{print $3}' | sed 's/\.//')
memUsed=$((($wired + $active) * pageSize / 1024 / 1024))
memTotalMB=$((memTotal / 1024 / 1024))
memFreeMB=$((memTotalMB - memUsed))

# Convertir a GB si es necesario
memTotalStr=$(convertir_a_gb $memTotalMB)
memFreeStr=$(convertir_a_gb $memFreeMB)
memUsedStr=$(convertir_a_gb $memUsed)

# Mostrar información de la memoria
echo "-----------------------"
echo "Command Free para MAC ⌘"
echo "-----------------------"
echo "Memoria Total: $memTotalStr"
echo "Memoria Libre: $memFreeStr"
echo "Memoria Usada: $memUsedStr"

# Copiar la memoria usada al portapapeles
echo "$memUsedStr" | pbcopy

# Mostrar mensaje de éxito
echo ""
echo "[*] Memoria Usada copiada al portapapeles"

