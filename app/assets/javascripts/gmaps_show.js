function gmap_form(park) {
  handler = Gmaps.build('Google');    // map init
  handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
    if (pakr && park.latitude && park.longitude) {    // statement check - new or edit view
      markers = handler.addMarkers([    // print existent marker
        {
          "lat": park.latitude,
          "lng": park.longitude,
          "picture": {
            "url": 'http://www.planet-action.org/img/2009/interieur/icons/orange-dot.png',
            "width":  32,
            "height": 32
          },
          "infowindow": "<b>" + park.name + "</b> " + park.address + ", " + park.city + " " + park.state
        }
      ]);
      handler.bounds.extendWith(markers);
      handler.fitMapToBounds();
      handler.getMap().setZoom(12);
    }
    else {    // show the empty map
      handler.fitMapToBounds();
      handler.map.centerOn([52.10, 19.30]);
      handler.getMap().setZoom(6);
    }
  });

  var markerOnMap;

  function placeMarker(location) {    // simply method for put new marker on map
    if (markerOnMap) {
      markerOnMap.setPosition(location);
    }
    else {
      markerOnMap = new google.maps.Marker({
        position: location,
        map: handler.getMap()
      });
    }
  }

  google.maps.event.addListener(handler.getMap(), 'click', function(event) {    // event for click-put marker on map and pass coordinates to hidden fields in form
    placeMarker(event.latLng);
    document.getElementById("map_lat").value = event.latLng.lat();
    document.getElementById("map_lng").value = event.latLng.lng();
  });
}