#!/bin/bash

##REPOS

#Eliminamos repos.yaml

rm ../odoo/custom/src/repos.yaml

#Creamos el fichero y lo vamos rellenando
echo ""
echo "Añadiendo PRs al fichero repos.yaml"
echo ""
touch ../odoo/custom/src/repos.yaml

echo '# See https://github.com/Tecnativa/doodba#optodoocustomsrcreposyaml' >> ../odoo/custom/src/repos.yaml
echo './odoo:' >> ../odoo/custom/src/repos.yaml
echo '  defaults:' >> ../odoo/custom/src/repos.yaml
echo '    depth: $DEPTH_DEFAULT'  >> ../odoo/custom/src/repos.yaml
echo '  remotes:' >> ../odoo/custom/src/repos.yaml
echo '    ocb: https://github.com/OCA/OCB.git' >> ../odoo/custom/src/repos.yaml
echo '    odoo: https://github.com/odoo/odoo.git' >> ../odoo/custom/src/repos.yaml
echo '    openupgrade: https://github.com/OCA/OpenUpgrade.git' >> ../odoo/custom/src/repos.yaml
echo '  target: ocb $ODOO_VERSION' >> ../odoo/custom/src/repos.yaml
echo '  merges:' >> ../odoo/custom/src/repos.yaml
echo '    - ocb $ODOO_VERSION' >> ../odoo/custom/src/repos.yaml

