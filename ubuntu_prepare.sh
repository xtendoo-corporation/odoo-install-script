#!/bin/bash

echo "Preparando ubuntu para instalar odoo"
echo ""
echo "Actualizando paquetes de ubuntu"
echo ""

sleep 1

sudo apt-get update -y || sudo apt-get upgrade -y

echo ""
echo "Instalando git"
echo ""

sleep 1

sudo apt install git-all -y

echo ""
echo "Instalando Docker-Engine"
echo ""

sleep 1

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo apt-get install docker-ce=5:19.03.12~3-0~ubuntu-focal docker-ce-cli=5:19.03.12~3-0~ubuntu-focal containerd.io

echo ""
echo "Comprobando instalación de docker-engine"
echo ""

sleep 1

sudo docker run hello-world

echo ""
echo "Instalando docker-compose"
echo ""

sleep 1

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

sleep 1

#Creamos usuario ubuntu si no esta ya creado

#echo ""
#echo "Creando usuario ubuntu"
#echo ""

#sleep 1

#adduser ubuntu

#echo ""
#echo "Añadiendo usuario al grupo SUDOERS"
#echo ""

#usermod -aG sudo ubuntu

#sleep 1

echo ""
echo "Añadiendo usuario ubuntu al grupo de docker"
echo ""

sleep 1

sudo usermod -aG docker ubuntu

echo ""
echo "Instalando entorno virtual para pipx"
echo ""

sleep 1

sudo apt install python3-venv python3-pip
python3 -m pip install --user pipx
python3 -m pipx ensurepath

#echo ""
#echo "Accediendo al usuario ubuntu"
#echo ""

#sleep 1

#su ubuntu

echo ""
echo "Instalando Pipx"
echo ""

sleep 1

sudo apt-get install pipx

echo ""
echo "Instalando Copier"
echo ""

sleep 1

pipx install copier

echo ""
echo "Instalando invoke"
echo ""

sleep 1

pipx install invoke

echo ""
echo "Instalando pre-commit"
echo ""

sleep 1

pipx install pre-commit

echo "Fin de la preparación del servidor"
echo "*Se tiene que reinicar el terminal para seguir con la instalación, recuerde ejecutar odoo_install.sh para terminar la instalación una vez reiniciada la conexión por ssh"
echo ""

