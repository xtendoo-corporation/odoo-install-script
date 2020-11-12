#!bin/bash

#eliminamos el archivo de dependencias de pip.txt

rm ../odoo/custom/dependencies/pip.txt

#Creamos el fichero y le añadimos contenido

echo "Añadiendo dependencias..."
echo ""
touch ../odoo/custom/dependencies/pip.txt

sleep 1

echo "git+https://github.com/OCA/openupgradelib.git@master" >> ../odoo/custom/dependencies/pip.txt
echo "unicodecsv" >> ../odoo/custom/dependencies/pip.txt
echo "unidecode" >> ../odoo/custom/dependencies/pip.txt
echo "pysftp==0.2.8" >> ../odoo/custom/dependencies/pip.txt
echo "xlsxwriter" >> ../odoo/custom/dependencies/pip.txt
echo "xlrd" >> ../odoo/custom/dependencies/pip.txt
echo "pyOpenSSL" >> ../odoo/custom/dependencies/pip.txt
echo "zeep" >> ../odoo/custom/dependencies/pip.txt
echo "python-barcode" >> ../odoo/custom/dependencies/pip.txt
echo "qrcode[pil]" >> ../odoo/custom/dependencies/pip.txt

#instalamos las librerias
echo "Instalando librerías"
echo ""

sleep 1

cd ..
invoke img-build --pull

echo ""
echo "Librerías instaladas correctamente"

