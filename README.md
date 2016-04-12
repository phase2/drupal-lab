# Drupal Lab

A Drupal 8 site with a Pattern Lab Twig theme.

## Setup

### Prerequisites

- `composer` installed
- drupal console installed - aliased to `drupal`

### Install dependencies

    composer install

## Usage

### Run Server

Either set up your own Apache server to point towards the `web/` directory, or run `drupal server` in `web/`.

### Credentials

- Username: `admin`
- Password: `admin`

## Configuration

After making changes, run `drush config-export -y` and commit the files. If you just pulled or are deploying, run `drupal config:import -y` to pull configuration changes present in the yaml files in `web/sites/default/config/sync/` into the database. Very similar to Features in Drupal 7.

## Install Drupal Modules

To install a new Drupal module, run this:

    composer require drupal/MODULE_NAME:@8.*

After enabling, do a `drupal config:export -y`.
