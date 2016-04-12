#!/usr/bin/env bash
# run from root of repo
composer install
cd web/
echo "Installing site..."
drush site-install --account-name=admin --account-pass=admin  -y
echo "Creating content..."
drupal chain --file=../scripts/create-content.yml
echo "Importing configuration..."
drupal config:import -y
echo "All done; fire off 'drupal server' for a server. Login is 'admin:admin'."