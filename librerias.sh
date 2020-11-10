#!bin/bash

#eliminamos el archivo de dependencias de pip.txt

rm ../odoo/custom/dependencies/pip.txt

#Creamos el fichero y le añadimos contenido

touch ../odoo/custom/dependencies/pip.txt

echo "git+https://github.com/OCA/openupgradelib.git@master" >> ../odoo/custom/dependencies/pip.txt
echo "unicodecsv" >> ../odoo/custom/dependencies/pip.txt
echo "unidecode" >> ../odoo/custom/dependencies/pip.txt
echo "pysftp==0.2.8" >> ../odoo/custom/dependencies/pip.txt
echo "xlsxwriter" >> ../odoo/custom/dependencies/pip.txt
echo "xlrd" >> ../odoo/custom/dependencies/pip.txt
echo "pyOpenSSL" >> ../odoo/custom/dependencies/pip.txt
echo "zeep" >> ../odoo/custom/dependencies/pip.txt

