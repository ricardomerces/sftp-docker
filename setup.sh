#!/bin/bash

#Criando o usuário de sftp
PASSWORD=$(echo -n $2 | docker run -i --rm atmoz/makepasswd --crypt-md5 --clearfrom=- | cut  -d " " -f4)
echo "$1:$PASSWORD:e:1001:1001:upload" > files/users.conf 
echo -e "\nUsuario $1 CRIADO.\n"

#Criando a imagem docker
docker build -t sftp .
echo -e "\nImagem CRIADA."

#Excluindo a versão anterior do container
docker rm -f sftp > /dev/null

#Criando o container
docker run --name sftp -d -p 22:22 sftp
echo -e "\nContainer SFTP Criado."
docker ps -l

#Como conectar no sftp
echo -e "\nComo se conectar: sftp usuario@host"