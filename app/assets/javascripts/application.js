// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

fetch(`https://maps.googleapis.com/maps/api/geocode/json?address=1 rue de Vendee Bouffere France`)
    .then(response => response.json())
    .then((data) => {
      const map = document.getElementById("map");
      const lat = data.results[0].geometry.location.lat;
      const lng = data.results[0].geometry.location.lng;
      map.insertAdjacentHTML("beforeend", `<h4>${lat}</h4>`);
      map.insertAdjacentHTML("beforeend", `<h4>${lng}</h4>`);
      const marker = { lat: `${lat}`, lng: `${lng}` };
      console.log(marker);
      const map = new GMaps({
        el: '#map',
        lat,
        lng,
        zoom: 14 });
      map.addMarkers([marker]);
    });
