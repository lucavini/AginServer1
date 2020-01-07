#!/bin/bash
echo "Parando os Containers"
docker container stop $(docker container ls -aq)
echo "Removendo Containers"
docker container rm $(docker container ls -aq)
echo "Limpando"
docker volume rm $(docker volume ls -qf dangling=true)