#!/bin/bash

##ADOONS

#Eliminamos addons.yaml

rm ./odoo/custom/src/addons.yaml

#Creamos el fichero y lo vamos rellenando
echo ""
echo "Añadiendo modulos al fichero addons.yaml"
echo ""
touch ./odoo/custom/src/addons.yaml

sleep 1

echo 'account-financial-reporting: ["*"]' >> ./odoo/custom/src/addons.yaml
echo 'account-invoice-reporting: ["*"]' >> ./odoo/custom/src/addons.yaml
echo 'account-invoicing: ["*"]' >> ./odoo/custom/src/addons.yaml
echo 'bank-payment: ["*"]' >> ./odoo/custom/src/addons.yaml
echo 'community-data-files: ["*"]' >> ./odoo/custom/src/addons.yaml
echo 'e-commerce: ["*"]' >> ./odoo/custom/src/addons.yaml
echo 'l10n-spain: ["*"]' >> ./odoo/custom/src/addons.yaml
echo 'mis-builder: ["*"]' >> ./odoo/custom/src/addons.yaml
echo 'partner-contact: ["*"]' >> ./odoo/custom/src/addons.yaml
echo 'product-attribute: ["*"]' >> ./odoo/custom/src/addons.yaml
echo 'project: ["*"]' >> ./odoo/custom/src/addons.yaml
echo 'reporting-engine: ["*"]' >> ./odoo/custom/src/addons.yaml
echo 'sale-workflow: ["*"]' >> ./odoo/custom/src/addons.yaml
echo 'server-backend: ["*"]' >> ./odoo/custom/src/addons.yaml
echo 'server-ux: ["*"]' >> ./odoo/custom/src/addons.yaml
echo 'social: ["*"]' >> ./odoo/custom/src/addons.yaml
echo 'stock-logistics-barcode: ["*"]' >> ./odoo/custom/src/addons.yaml
echo 'stock-logistics-warehouse: ["*"]' >> ./odoo/custom/src/addons.yaml
echo 'stock-logistics-workflow: ["*"]' >> ./odoo/custom/src/addons.yaml
echo 'web: ["*"]' >> ./odoo/custom/src/addons.yaml
echo 'website: ["*"]' >> ./odoo/custom/src/addons.yaml
echo 'account-financial-tools: ["*"]' >> ./odoo/custom/src/addons.yaml
echo '---' >> ./odoo/custom/src/addons.yaml
echo '# Custom repositories' >> ./odoo/custom/src/addons.yaml
echo 'ENV:' >> ./odoo/custom/src/addons.yaml
echo '  DEFAULT_REPO_PATTERN: https://github.com/xtendoo-corporation/{}.git' >> ./odoo/custom/src/addons.yaml
echo '  ODOO_VERSION: 13.0' >> ./odoo/custom/src/addons.yaml
echo 'xtendoo: ["*"]' >> ./odoo/custom/src/addons.yaml
echo 'custom-dji: ["*"]' >> ./odoo/custom/src/addons.yaml

