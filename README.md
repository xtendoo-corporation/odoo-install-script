# odoo-install-script  
# Repositorio con todo lo necesario para levantar odoo V13:  
##IMPORTANTE: Antes de descargar este repositorio, debemos crear la carpeta que contendra odoo, p.e: "xtendoo" y descargarlo dentro del mismo, para que todo funcione correctamente.  
#Scripts:  
#ubuntu_prepair.sh -> Script que realiza toda la instalación de aplicaciones básicas (docker, copier, etc) para comenzar a instalar odoo.  
#odoo_install.sh -> Script de instalación de Odoo, el cual ejecuta pipx.sh, addons.sh y repos.sh y finaliza la instalación de Odoo instalando todos los modulos indicados.  
#pipx.sh --> Rellena el fichero de dependecias pip.txt y ejecuta el "invoke img-pull".  
#addons.sh -> Rellena el fichero addons.yaml.  
#repos.sh -> Rellena el fichero repos.yaml.  

