#!/usr/bin/env bash
# run from root of repo
cd web/
echo "Dropping DB..."
drupal database:drop -y
cd ../
bash scripts/site-setup.sh
