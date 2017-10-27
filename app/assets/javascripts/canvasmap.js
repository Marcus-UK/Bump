function initMap() {
  var map;

  var mapOptions = {
    zoom: 15,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  map = new google.maps.Map(
    document.getElementById("google_canvas"),
    mapOptions
  );

  navigator.geolocation.watchPosition(function(position) {
    var geolocate = new google.maps.LatLng(
      position.coords.latitude,
      position.coords.longitude
    );

    var infowindow = new google.maps.InfoWindow({
      map: map,
      position: geolocate,
      content:
        "<h1>Location pinned from HTML5 Geolocation!</h1>" +
        "<h2>Latitude: " +
        position.coords.latitude +
        "</h2>" +
        "<h2>Longitude: " +
        position.coords.longitude +
        "</h2>"
    });

    map.setCenter(geolocate);
  });
}
initMap();
