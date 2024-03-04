import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LiveLocationMap extends StatefulWidget {
  @override
  _LiveLocationMapState createState() => _LiveLocationMapState();
}

class _LiveLocationMapState extends State<LiveLocationMap> {
  late GoogleMapController _mapController;

  LatLng _liveLocation = LatLng(21.1750912, 79.0608519);
  List<LatLng> _pathPoints = [];

  @override
  void initState() {
    super.initState();
  }

  void _updateMap() {
    _mapController.animateCamera(CameraUpdate.newLatLng(_liveLocation));
  }

  void _addMarker(LatLng point) {
    setState(() {
      _pathPoints.add(point);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Live Vehicle Location"),
        backgroundColor:
            Colors.purple[200], // Light purple color for the app bar
      ),
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: (controller) {
              _mapController = controller;
            },
            onTap: (point) {
              _addMarker(point);
            },
            initialCameraPosition: CameraPosition(
              target: _liveLocation,
              zoom: 15.0,
            ),
            markers: {
              Marker(
                markerId: MarkerId('vehicle_marker'),
                position: _liveLocation,
                icon: BitmapDescriptor.defaultMarker,
              ),
              ..._pathPoints.map((point) => Marker(
                    markerId: MarkerId(point.toString()),
                    position: point,
                    icon: BitmapDescriptor.defaultMarkerWithHue(
                        _pathPoints.indexOf(point) *
                            60.0), // Different hue for each marker
                  )),
            },
            polylines: {
              Polyline(
                polylineId: PolylineId('path'),
                points: _pathPoints,
                color: Colors.purple
                    .withOpacity(0.5), // Light purple color for the polyline
                width: 5,
              ),
            },
          ),
        ],
      ),
    );
  }
}
