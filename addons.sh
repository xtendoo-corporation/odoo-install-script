#!/bin/bash

##ADOONS

#Eliminamos addons.yaml

rm ../odoo/custom/src/addons.yaml

#Creamos el fichero y lo vamos rellenando
echo ""
echo "Añadiendo modulos al fichero"
echo ""
touch ../odoo/custom/src/addons.yaml

echo 'account-financial-reporting: ["*"]' >> ../odoo/custom/src/addons.yaml
echo 'account-invoice-reporting: ["*"]' >> ../odoo/custom/src/addons.yaml
echo 'account-invoicing: ["*"]' >> ../odoo/custom/src/addons.yaml
echo 'bank-payment: ["*"]' >> ../odoo/custom/src/addons.yaml
echo 'community-data-files: ["*"]' >> ../odoo/custom/src/addons.yaml
echo 'e-commerce: ["*"]' >> ../odoo/custom/src/addons.yaml
echo 'l10n-spain: ["*"]' >> ../odoo/custom/src/addons.yaml
echo 'mis-builder: ["*"]' >> ../odoo/custom/src/addons.yaml
echo 'partner-contact: ["*"]' >> ../odoo/custom/src/addons.yaml
echo 'product-attribute: ["*"]' >> ../odoo/custom/src/addons.yaml
echo 'project: ["*"]' >> ../odoo/custom/src/addons.yaml
echo 'reporting-engine: ["*"]' >> ../odoo/custom/src/addons.yaml
echo 'sale-workflow: ["*"]' >> ../odoo/custom/src/addons.yaml
echo 'server-backend: ["*"]' >> ../odoo/custom/src/addons.yaml
echo 'server-ux: ["*"]' >> ../odoo/custom/src/addons.yaml
echo 'social: ["*"]' >> ../odoo/custom/src/addons.yaml
echo 'stock-logistics-barcode: ["*"]' >> ../odoo/custom/src/addons.yaml
echo 'stock-logistics-warehouse: ["*"]' >> ../odoo/custom/src/addons.yaml
echo 'stock-logistics-workflow: ["*"]' >> ../odoo/custom/src/addons.yaml
echo 'web: ["*"]' >> ../odoo/custom/src/addons.yaml
echo 'website: ["*"]' >> ../odoo/custom/src/addons.yaml
echo 'account-financial-tools: ["*"]' >> ../odoo/custom/src/addons.yaml
echo '---' >> ../odoo/custom/src/addons.yaml
echo '# Custom repositories' >> ../odoo/custom/src/addons.yaml
echo 'ENV:' >> ../odoo/custom/src/addons.yaml
echo '  DEFAULT_REPO_PATTERN: https://github.com/xtendoo-corporation/{}.git' >> ../odoo/custom/src/addons.yaml
echo '  ODOO_VERSION: 13.0' >> ../odoo/custom/src/addons.yaml
echo 'xtendoo: ["*"]' >> ../odoo/custom/src/addons.yaml
echo 'custom-dji: ["*"]' >> ../odoo/custom/src/addons.yaml

echo ""
echo "Descargando addons"
echo ""

cd ..

invoke git-aggregate

odoo_addons="sale,invoice,crm,website,stock,account,sale_management,website_sale,board,contacts,mail,calendar,im_livechat,"
spanish_addons="l10n_es,l10n_es_aeat,l10n_es_aeat_mod111,l10n_es_aeat_mod115,l10n_es_aeat_mod123,l10n_es_aeat_mod303,l10n_es_aeat_mod347,l10n_es_mis_report,l10n_es_partner,l10n_es_toponyms,l10n_es_vat_book,"
default_addons="web_tree_many2one_clickable,mis_builder,web_pwa_oca,mass_mailing,account_chart_update,account_tax_balance,base_bank_from_iban,base_gs1_barcode,base_location,base_location_geonames_import,date_range,mail_tracking,mail_tracking_mailgun,mail_tracking_mass_mailing,mass_editing,mass_operation_abstract,mis_builder,partner_autocomplete,product_form_move_waiting_purchase_link,product_form_purchase_link,product_form_sale_link,product_pricelist_margin_base,report_xlsx,sale_order_pricelist_auto_update,sale_order_product_recommendation,stock_available,stock_lock_lot,stock_no_negative,web_company_color,web_decimal_numpad_dot,web_pwa_oca,web_responsive,xtendoo_sale_order_tag,xtendoo_stock_cost_method_last,xtendoo_stock_picking_barcodes,xtendoo_stock_picking_barcodes_qr,xtendoo_stock_picking_product_barcode_report,xtendoo_web_notify,xtendoo_web_widget_digitized_signature"
custom_addons="dji_administration,document_format_dji"
echo ""
echo "Instalando addons de ODOO"
echo ""

docker-compose run --rm odoo odoo -d devel -i $odoo_addons --stop-after-init --without-demo=all

echo ""
echo "Instalando addons de L10n_es"
echo ""

docker-compose run --rm odoo odoo -d devel -i $spanish_addons --stop-after-init --without-demo=all

echo ""
echo "Instalando addons DEFAULT"
echo ""

docker-compose run --rm odoo odoo -d devel -i $default_addons --stop-after-init --without-demo=all

echo ""
echo "Instalando addons CUSTOM"
echo ""

docker-compose run --rm odoo odoo -d devel -i $custom_addons --stop-after-init --without-demo=all

echo ""
echo "Fin del SCRIPT"
echo ""

