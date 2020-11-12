# odoo-install-script  
# Repositorio con todo lo necesario para levantar odoo V13 con todo lo necesario:  
#Scripts:  
#run.sh -> Script que ejecuta el resto de script del repositorio en el orden correcto para comenzar la instalación.  
#ubuntu_prepair.sh -> Script que realiza toda la instalación de aplicaciones básicas (docker, copier, etc) para comenzar a instalar odoo.  
#odoo_install.sh -> Script de instalación de Odoo.  
#pipx.sh --> Rellena el fichero de dependecias pip.txt y ejecuta el "inboke img-pull".  
#addons.sh -> Rellena el fichero addons.yaml.  
#repos.sh -> Rellena el fichero repos.yaml.  
#install_addons --> Ejecuta addons.sh y repos.sh, ejecuta el "invoke git-aggregate" e instala todos los módulos indicados. 

