#!/usr/bin/env bash
# Ensure whole script fails if any step fails
set -e

# run from root of repo
composer install
#cd web/

echo "Installing site..."
composer exec drupal -- chain --file=../scripts/drupal-install.yml --root=web
#../vendor/bin/drush site-install --account-name=admin --account-pass=admin  -y
echo ""

echo "Importing configuration..."
composer exec drupal -- config:import -y --root=web
#../vendor/bin/drupal config:import -y
echo ""

echo "Creating content..."
composer exec drupal -- chain --file=../scripts/create-content.yml --root=web
#../vendor/bin/drupal chain --file=../scripts/create-content.yml
echo ""

echo "Rebuilding cache..."
composer exec drupal -- cache:rebuild all --root=web
#../vendor/bin/drupal cache:rebuild all
echo ""

echo "Setting up Pattern Lab..."
cd web/themes/dashing/pattern-lab
#cd themes/dashing/pattern-lab
composer install
echo ""

echo "Setting up theme tools..."
cd ..
npm install
echo ""

echo "Compiling..."
npm run compile
echo "All done; login is 'admin:admin'."
echo "Drupal Server: run 'composer run-script server'"
echo "Pattern Lab Server: run 'npm start' in 'web/themes/dashing/' "
