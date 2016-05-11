#!/usr/bin/env bash
# Ensure whole script fails if any step fails
set -e

# Ensuring correct version of composer is installed. v1.1.0 breaks builds until [this PR](https://github.com/pattern-lab/unified-asset-installer/pull/1) is merged. 
composer self-update 1.0.3

# run from root of repo
composer install
cd web/

echo "Installing site..."
../vendor/bin/drush site-install --account-name=admin --account-pass=admin  -y
echo ""

echo "Creating content..."
../vendor/bin/drupal chain --file=../scripts/create-content.yml
echo ""

echo "Importing configuration..."
../vendor/bin/drupal config:import -y
echo ""

echo "Rebuilding cache..."
../vendor/bin/drupal cache:rebuild all
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
echo "Drupal Server: run '../vendor/bin/drupal server' in 'web/' "
echo "Pattern Lab Server: run 'npm start' in 'web/themes/dashing/' "
