#!/bin/bash
#Montamos el scafoldding de doodba
echo ""
echo "Con este script, se automatiza la instalación de odoo, sus dependencias e instalar una bateria de módulos 'standard'"
echo ""
sleep 1
echo ""
echo "Montando directorio de odoo"
echo ""
sleep 1
cd ..
copier copy gh:Tecnativa/doodba-copier-template ./
echo ""
echo "Instalando dependencias de pipx"
echo ""
sleep 1
sh odoo-install-script/pipx.sh
echo ""
sleep 1
#Llamamos a addons.sh y repos.sh
echo ""
echo "Preparando ficheros *.yaml"
echo ""
sh odoo-install-script/addons.sh
sh odoo-install-script/repos.sh
echo ""
echo "Descargando addons"
echo ""
invoke git-aggregate
odoo_addons="sale,invoice,crm,website,stock,account,sale_management,website_sale,board,contacts,mail,calendar,im_livechat,"
spanish_addons="l10n_es,l10n_es_aeat,l10n_es_aeat_mod111,l10n_es_aeat_mod115,l10n_es_aeat_mod123,l10n_es_aeat_mod303,l10n_es_aeat_mod347,l10n_es_mis_report,l10n_es_partner,l10n_es_toponyms,l10n_es_vat_book,"
default_addons="stock_picking_return_restricted_qty,web_advanced_search,web_tree_many2one_clickable,mis_builder,web_pwa_oca,mass_mailing,account_chart_update,account_tax_balance,base_bank_from_iban,base_gs1_barcode,base_location,base_location_geonames_import,date_range,mail_tracking,mail_tracking_mailgun,mail_tracking_mass_mailing,mass_editing,mass_operation_abstract,mis_builder,partner_autocomplete,product_form_move_waiting_purchase_link,product_form_purchase_link,product_form_sale_link,product_pricelist_margin_base,report_xlsx,sale_order_pricelist_auto_update,sale_order_product_recommendation,stock_available,stock_lock_lot,stock_no_negative,web_company_color,web_decimal_numpad_dot,web_pwa_oca,web_responsive,xtendoo_sale_order_tag,xtendoo_stock_cost_method_last,xtendoo_stock_picking_barcodes,xtendoo_stock_picking_barcodes_qr,xtendoo_stock_picking_product_barcode_report,xtendoo_web_notify,xtendoo_web_widget_digitized_signature"
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
echo "Fin de la instalación de Odoo"
echo ""
