// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
import { imageAnimation } from '../components/image_animation';
import { backToTop } from '../components/back_to_top';
import { displayTitle } from '../components/display_title';
import { secretCode } from '../components/secret_code';
// import { initSelect2 } from '../components/init_select2';
document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  $('.carousel').carousel({ interval: 2500, touch: true }); // le carousel démarre sans avoir à recharger la page
  imageAnimation();
  backToTop();
  displayTitle();
  secretCode();
});


// block the Inspect Element with the right click
document.addEventListener("contextmenu",function(e) {
  e.preventDefault();
});

// block the keyboard shortcuts
// document.onkeydown = function(e) {
//   if(e.keyCode == 123) {
//      return false;
//   }
//   if(e.metaKey && e.altKey && e.keyCode == 'I'.charCodeAt(0)) {
//     return false;
//   }
//   if(e.metaKey && e.altKey && e.keyCode == 'C'.charCodeAt(0)) {
//     return false;
//   }
//    if(e.metaKey && e.altKey && e.keyCode == 'J'.charCodeAt(0)) {
//     return false;
//   }
//   if(e.metaKey && e.altKey && e.keyCode == 'U'.charCodeAt(0)) {
//     return false;
//   }
//   if(e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)) {
//     return false;
//   }
//   if(e.ctrlKey && e.shiftKey && e.keyCode == 'C'.charCodeAt(0)) {
//     return false;
//   }
//   if(e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)) {
//     return false;
//   }
//   if(e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)) {
//     return false;
//   }
// }

