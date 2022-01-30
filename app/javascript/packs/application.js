// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import $ from 'jquery';
import jQuery from 'jquery';
//import "@fortawesome/fontawesome-free/css/all"
import "@fortawesome/fontawesome-free/js/all";
import '../css/main.scss'
window.jQuery = $;
window.$ = $;

require('jquery')

Rails.start()
Turbolinks.start()
ActiveStorage.start()
import 'bootstrap/dist/js/bootstrap'
import 'bootstrap/dist/css/bootstrap'
import 'navbar/navbar'
import 'about/about'


import AOS from 'aos';
import 'aos/dist/aos.css'; // You can also use <link> for styles
// ..
$(function() {
  AOS.init();
});


require("trix")
require("@rails/actiontext")
