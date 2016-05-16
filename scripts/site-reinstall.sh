#!/usr/bin/env bash
# run from root of repo
#cd web/
echo "Dropping DB..."
#composer exec drupal -- database:drop -y --root=web
rm web/sites/default/files/.ht.sqlite
rm web/sites/default/settings.php
#../vendor/bin/drupal database:drop -y
#cd ../
bash scripts/site-setup.sh
