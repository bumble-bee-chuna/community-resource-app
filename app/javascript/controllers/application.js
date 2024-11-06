import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application



$(function() {
  const navMenu = $("#nav__menu");
  const navOpenBtn = $("#nav__open-menu-button");
  const navCloseBtn = $("#nav__close-menu-button");
  //Open navigation menu
  navOpenBtn.click(function(){
    navMenu.removeClass("nav__menu--closed-state");
    navMenu.addClass("nav__menu--fade-in");
  });
  //Close navigation menu
  navCloseBtn.click(function(){
    navMenu.addClass("nav__menu--closed-state");
    navMenu.removeClass("nav__menu--fade-in");
  });
});


export { application }
