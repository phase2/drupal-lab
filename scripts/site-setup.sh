#!/usr/bin/env bash
# run from root of repo
composer install
cd web/

echo "Installing site..."
drush site-install --account-name=admin --account-pass=admin  -y
echo ""

echo "Creating content..."
drupal chain --file=../scripts/create-content.yml
echo ""

echo "Importing configuration..."
drupal config:import -y
echo ""

echo "Rebuilding cache..."
drupal cache:rebuild all
echo ""

echo "Setting up Pattern Lab..."
cd themes/dashing/pattern-lab
composer install
echo ""

echo "Setting up theme tools..."
cd ..
npm install
echo ""

echo "Compiling..."
npm run compile
echo "All done; login is 'admin:admin'."
echo "Drupal Server: run 'drupal server' in 'web/' "
echo "Pattern Lab Server: run 'npm start' in 'web/themes/dashing/' "
