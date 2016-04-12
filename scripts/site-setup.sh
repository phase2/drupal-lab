#!/usr/bin/env bash
# run from root of repo
composer install
cd web/
echo "Installing site..."
drupal chain --file=../scripts/site-install.yml
echo "Creating content..."
drupal chain --file=../scripts/create-content.yml
echo "Importing configuration..."
drupal config:import -y
echo "All done; fire off 'drupal server' for a server. Login is 'admin:admin'."