# Drupal Lab

A Drupal 8 site with a Pattern Lab Twig theme.

**All commands starting with `bash` are ran from root of repo; all that start with `drupal` are ran from `web/`**

## Setup

### Prerequisites

- `composer` installed
- `drush` installed`
- drupal console installed - aliased to `drupal`

### Install dependencies

    composer install

### Site Install

		bash scripts/site-setup.sh

## Usage

### Run Server

- Run `drupal server` in `web/` OR:
- Set up your own Apache server to point towards the `web/` directory.

### Credentials

- Username: `admin`
- Password: `admin`

### Rebuild

		bash scripts/site-reinstall.sh

## Configuration

After making changes, run `drush config-export -y` and commit the files. If you just pulled or are deploying, run `drupal config:import -y` to pull configuration changes present in the yaml files in `web/sites/default/config/sync/` into the database. Very similar to Features in Drupal 7.

## Install Drupal Modules

To install a new Drupal module, run this:

    composer require drupal/MODULE_NAME:@8.*

After enabling, do a `drupal config:export -y`.
