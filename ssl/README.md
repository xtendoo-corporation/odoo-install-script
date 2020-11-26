# Odoo-SSL  
# Scripts para instalar y configurar ssl con dominio con nginx.    
##IMPORTANTE: Esta carpeta debe pegarse en la ruta antes dle raíz y ejecutarse con el usuario root.  
#Se ha añadido una descarga de cerbot a traves de curl, ya que mediante el ppa daba errores.  
#Se ha añadido un if en cada fichero o carpeta que se elimina para comprobar si existe o no antes de eliminarlo.  
#El email ya no es una variable, siempre cogera manuelcalerosolis@gmail.com.  
#El error de longpulling, se arregla descomentando en nginx la redicreccion de puertos de longpulling.  
#El error de JSON, se debe a una libreria faltante, la añadimos a pip.txt( si no esta ya incluida) -->psycogreen==1.0   

