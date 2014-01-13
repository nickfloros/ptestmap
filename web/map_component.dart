import 'package:polymer/polymer.dart';
import 'dart:html';

import 'package:google_maps/google_maps.dart';
/**
 * A Polymer click counter element.
 */
@CustomTag('map-component')
class MapComponent extends PolymerElement {

  Element _mapCanvas;
  MapOptions _mapOptions;
  GMap _map;
  
  MapComponent.created() : super.created() {
    visualRefresh = true;

    _mapOptions = new MapOptions()
    ..zoom = 8
    ..center = new LatLng(-34.397, 150.644)
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  }

  void enteredView() {
    super.enteredView();
    _mapCanvas = $['map_canvas'];
    _map = new GMap(_mapCanvas, _mapOptions);
  }
}

