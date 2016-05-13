(function($, Drupal) {
  'use strict';

  // A demo Drupal behavior
  Drupal.behaviors.customBehavior = {
    attach: function(context, settings) {
      console.log('Drupal behavior from js/dashing.js');
    }
  };
  
})(jQuery, Drupal);

