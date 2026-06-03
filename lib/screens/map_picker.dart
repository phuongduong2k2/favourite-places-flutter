import 'package:favourite_places/widgets/map_view.dart';
import 'package:flutter/material.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

class MapPickerScreen extends StatefulWidget {
  const MapPickerScreen({super.key, this.currentPosition});

  final Position? currentPosition;

  @override
  State<MapPickerScreen> createState() => _MapPickerScreenState();
}

class _MapPickerScreenState extends State<MapPickerScreen> {
  MapboxMap? _mapboxMap;

  void _onMapCreated(MapboxMap mapboxMap) {
    _mapboxMap = mapboxMap;

    mapboxMap.location.updateSettings(
      LocationComponentSettings(enabled: true),
    );
  }

  void _getCurrentLocation() async {
    CameraState? cameraState = await _mapboxMap?.getCameraState();
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
            child: Text("Select Position"),
          ),
        ],
      ),
    );
  }
}
