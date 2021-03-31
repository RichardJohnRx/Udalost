import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatefulWidget {
  MapWidget({this.lat,this.lon, this.isDetail = false});
  final double lat;
  final double lon;
  final bool isDetail;

  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  GoogleMapController _controller;
  Set<Marker> markers = Set();
  double latActual = 48.6944952;
  double lonActual = 6.1471303;

  void _getMarkers(){
    markers.add(
      Marker(
        markerId: MarkerId('Lieu de l\'événement'),
        position: LatLng(widget.lat,widget.lon),
      )
    );
    markers.add(
      Marker(
        markerId: MarkerId('Position Actuelle'),
        position: LatLng(latActual,lonActual),
      )
    );
  }

  void _onMapCreated(GoogleMapController controller){
    _controller = controller;
    _centerView();
  }

  _centerView() async {
    if(widget.isDetail){
      await _controller.getVisibleRegion();
      var bounds = LatLngBounds(
        southwest: LatLng(min(widget.lat,latActual),min(widget.lon,lonActual)),
        northeast: LatLng(max(widget.lat,latActual),max(widget.lon,lonActual)),
      );
      _controller.animateCamera(CameraUpdate.newLatLngBounds(bounds, 50));
    }
  }

  @override
  void initState() {
    super.initState();
    _getMarkers();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      markers: markers,
      zoomControlsEnabled: false,
      initialCameraPosition: CameraPosition(
        target: LatLng(widget.lat,widget.lon),
        zoom: 12,
      ),
      onMapCreated: _onMapCreated,
    );
  }
}