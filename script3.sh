#!/bin/bash

while : 
do
    T=0
    QTD=60
    while [ $T -le $QTD ]; do
        echo "Criando Containers"
        docker create mysql
        docker create owncloud
        docker create mysql
        docker create owncloud
        docker create mysql
        docker create owncloud
        docker create mysql
        docker create owncloud
        docker create mysql
        docker create owncloud
        docker create mysql
        docker create owncloud
        docker create mysql
        docker create owncloud
        docker create mysql
        docker create owncloud
        let T=T+2
        sleep 10
    done
    echo "Parando os Containers"
    docker container stop $(docker container ls -aq)
    echo "Removendo Containers"
    docker container rm $(docker container ls -aq)

    sleep 50
done 
