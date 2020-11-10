#!/bin/bash

##ADOONS

#Eliminamos addons.yaml

rm ../odoo/custom/src/addons.yaml

#Creamos el fichero y lo vamos rellenando
echo ""
echo "Añadiendo modulos al fichero"
echo ""
touch ../odoo/custom/src/addons.yaml

echo '# Spanish Localization' >> ../odoo/custom/src/addons.yaml
echo 'l10n-spain:' >> ../odoo/custom/src/addons.yaml
echo '  - l10n_es_partner' >> ../odoo/custom/src/addons.yaml
echo '---' >> ../odoo/custom/src/addons.yaml
echo '# Custom repositories' >> ../odoo/custom/src/addons.yaml
echo 'ENV:' >> ../odoo/custom/src/addons.yaml
echo '  DEFAULT_REPO_PATTERN: https://github.com/xtendoo-corporation/{}.git' >> ../odoo/custom/src/addons.yaml
echo '  ODOO_VERSION: 12.0' >> ../odoo/custom/src/addons.yaml
echo 'xtendoo: ["*"]' >> ../odoo/custom/src/addons.yaml



---
# Custom repositories
ENV:
  DEFAULT_REPO_PATTERN: https://github.com/xtendoo-corporation/{}.git
  ODOO_VERSION: 12.0
xtendoo: ["*"]


echo ""
echo "Descargando addons"
echo ""

cd ..

invoke git-aggregate

echo ""
echo "Instalando addons"
echo ""

docker-compose run --rm odoo odoo -d devel -i sale,invoice,document_format_bramah --stop-after-init
