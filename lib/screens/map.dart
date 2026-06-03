import 'package:favourite_places/widgets/map_view.dart';
import 'package:flutter/material.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key, this.currentPosition});

  final Position? currentPosition;

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  MapboxMap? mapboxMap;

  void _onMapCreated(MapboxMap mapboxMap) {
    this.mapboxMap = mapboxMap;

    mapboxMap.location.updateSettings(
      LocationComponentSettings(enabled: true),
    );
  }

  void _getCurrentLocation() async {
    CameraState? cameraState = await mapboxMap?.getCameraState();
    if (cameraState != null && context.mounted) {
      Navigator.of(context).pop(cameraState.center.coordinates);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Map"),
        centerTitle: false,
      ),
      body: Column(
        children: [
          MapView(
            onMapCreated: _onMapCreated,
            lat: widget.currentPosition?.lat,
            lng: widget.currentPosition?.lng,
            height: MediaQuery.of(context).size.height - 400,
          ),
          ElevatedButton(
            onPressed: _getCurrentLocation,
            child: Text("Get current position"),
          ),
        ],
      ),
    );
  }
}
