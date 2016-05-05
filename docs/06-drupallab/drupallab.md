---
#DrupalLab
---

DrupalLab is a proof of concept and demonstration tool for using Drupal 8 and Pattern Lab within a theme to enable parallel development of front-end assets (the view) and backend structure (the model). The glue that ties them together is the presentation layer and DrupalLab is a working example of that.

There are very few assets other than twig templates in DrupalLab due to the primary goal of getting Twig to seamlessly integrate between platforms. Styling is done via Bootstrap CSS/JS with very minimal custom Sass.

The method used is known as MVP (model + view + presentation), where the data model is Drupal 8, the view is provided by Pattern Lab, and Twig templates in the theme are the presentation layer. This enables abstraction during the prototyping phase enabling it to occur simultaneously as the backend in Drupal 8 develops, even without a completely defined content model.

What you end up with is a library or store of components that you can continue to shop from as features and needs develop, all while keeping with the original defined patterns and merely changing where the data comes from through the provided variables.

1. [Drupal 8 Twig](drupal-8-twig.md)
2. [Twig](twig.md)
3. [Usage](usage.md)
