// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import "@popperjs/core";
import "bootstrap";

document.addEventListener("turbo:load", function () {
  // This code is copied from Bootstrap's docs. See link below.
  var tooltipTriggerList = [].slice.call(
    document.querySelectorAll('[data-bs-toggle="tooltip"]')
  );
  var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
    return new bootstrap.Tooltip(tooltipTriggerEl);
  });
});

//= require jquery
//= require jquery_ujs
//= require bootstrap.min 
//= require bootstrap-sprockets
//= require turbolinks

//= require_tree .

$(function() {

  //Open navigation menu
  $("#open-nav-menu").click(function(){
    $("#nav-menu").removeClass("nav-closed-state");
    $("#nav-menu").addClass("fade-in-div");
  });

  //Close navigation menu
  $("#close-nav-menu").click(function(){
    $("#nav-menu").addClass("nav-closed-state");
    $("#nav-menu").removeClass("fade-in-div");
  });
});