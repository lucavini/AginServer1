#!/bin/bash

# echo "Quanto tempo vai executar (segundos): "
# read timeExe
# end=$((SECONDS+$timeExe))

echo "tempo,       mem, livreMem, swap, livreSwap, cpu, disponivel, dockerdCPU, dockerdMEM" > dados.csv

while : 
do
    
    # hora=$(date +"%T")
    
    mem=$(free --mega| grep Mem | cut -c28-32)
    livreMem=$(free --mega| grep Mem | cut -c40-44)
    swap=$(free --mega| grep Swap| cut -c29-34)
    livreSwap=$(free --mega| grep Swap| cut -c40-44)
    cpu=$(mpstat | grep all | cut -c21-27 | tr ',' '.')
    disponivel=$(free --mega| grep Mem | cut -c76-80)

    top -n 1 -b | grep dockerd > dockerd.txt
    sleep 1

    dockerdCPU=$(cat dockerd.txt| grep dockerd| cut -c50-53| tr ',' '.')
    dockerdMEM=$(cat dockerd.txt| grep dockerd| cut -c56-60| tr ',' '.')
    
    echo "$SECONDS,   $mem, $livreMem, $swap, $livreSwap, $cpu, $disponivel, $dockerdCPU, $dockerdMEM" >> dados.csv
    
    sleep 10
    
done