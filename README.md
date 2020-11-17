# odoo-install-script  
# Repositorio con todo lo necesario para levantar odoo V13:  
##IMPORTANTE: Antes de descargar este repositorio, debemos crear la carpeta que contendra odoo, p.e: "xtendoo" y descargarlo dentro del mismo, para que todo funcione correctamente.  
#Scripts:  
#ubuntu_prepair.sh -> Script que realiza toda la instalación de aplicaciones básicas (docker, copier, etc) para comenzar a instalar odoo.  
#odoo_install.sh -> Script de instalación de Odoo, el cual ejecuta pipx.sh, addons.sh y repos.sh y finaliza la instalación de Odoo instalando todos los modulos indicados.  
#pipx.sh --> Rellena el fichero de dependecias pip.txt y ejecuta el "invoke img-pull".  
#addons.sh -> Rellena el fichero addons.yaml.  
#repos.sh -> Rellena el fichero repos.yaml.  
####IMPORTANTE####  
#Para la comenzar la instalación, primero debemos instalar git en el servidor, crear la carpeta que contendra odoo y realizar el git clone de este repositorio, debemos usar los siguientes comandos.  
#Instalamos git:    
#sudo apt install git-all -y  
##Una vez instalado git, creamos la carpeta, sustituimos nombre_carpeta, por el nombre que vayamos a usar:  
# mkdir nombre_carpeta  
##Una vez creada, accedemos a ella con:  
# cd nombre_carpeta  
##Descargamos el repositorio dentro de dicgha carpeta:  
#git-clone https://github.com/xtendoo-corporation/odoo-install-script.git --branch=13.0  
##Una vez realizados estos pasos, debemos ejecutar el script ubuntu_prepare.sh, para preparar la maquina servidor, instalar docker,pipx, etc.  
##Una vez ejecutado ubuntu_prepare.sh, cerramos el terminal y la conexión ssh, solo nos queda volver a conextarnos con el servidor y ejecutar el script odoo_install, con el cuál, ya finalziamos la instalación de Odoo. 

