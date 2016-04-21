# Drupal Lab

A Drupal 8 site with a Pattern Lab Twig theme.

**All commands starting with `bash` are ran from root of repo; all that start with `drupal` are ran from `web/`**

## Setup

### Prerequisites

- `composer` installed
- `npm` installed

### Site Install

		bash scripts/site-setup.sh

When it asks if you want to merge or replace stuff, select merge.

## Usage

### Run Drupal Server

- Run `../vendor/bin/drupal server` in `web/` OR:
- Set up your own Apache server to point towards the `web/` directory.

### Credentials

- Username: `admin`
- Password: `admin`

### Rebuild

		bash scripts/site-reinstall.sh

### Theme & Pattern Lab

All commands ran from root of theme in `web/themes/dashing/`. An `npm install` was ran in `site-setup.sh` script, run `npm install` if you don't see `node_modules/` or have errors.

To compile theme (CSS & Pattern Lab):

		npm run compile

To execute watches on Scss and Pattern Lab along with a server for Pattern Lab, run:

		npm start

## Configuration

After making changes, run `../vendor/bin/drupal config:export -y` and commit the files. If you just pulled or are deploying, run `../vendor/bin/drupal config:import -y` to pull configuration changes present in the yaml files in `web/sites/default/config/sync/` into the database. Very similar to Features in Drupal 7.

## Install Drupal Modules

To install a new Drupal module, run this:

    composer require drupal/MODULE_NAME:8.*

After enabling, do a `../vendor/bin/drupal config:export -y`.
