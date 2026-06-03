import 'package:favourite_places/screens/map.dart';
import 'package:favourite_places/widgets/icon_text.dart';
import 'package:favourite_places/widgets/map_view.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart' as geol;
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

class LocationInput extends StatefulWidget {
  const LocationInput({super.key});

  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  Position? _position;
  MapboxMap? mapboxMap;

  void _onMapCreated(MapboxMap mapboxMap) {
    this.mapboxMap = mapboxMap;

    mapboxMap.gestures.updateSettings(
      GesturesSettings(
        doubleTapToZoomInEnabled: false,
        pinchPanEnabled: false,
        pinchToZoomEnabled: false,
        pitchEnabled: false,
        rotateEnabled: false,
        scrollEnabled: false,
      ),
    );
  }

  Future<geol.Position> _determinePosition() async {
    bool serviceEnabled;
    geol.LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await geol.Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await geol.Geolocator.checkPermission();
    if (permission == geol.LocationPermission.denied) {
      permission = await geol.Geolocator.requestPermission();
      if (permission == geol.LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == geol.LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.',
      );
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await geol.Geolocator.getCurrentPosition();
  }

  void _getCurrentPosition() async {
    geol.Position position = await _determinePosition();
    setState(() {
      _position = Position(position.longitude, position.latitude);
    });
  }

  void _selectOnMap() async {
    Position? position = await Navigator.of(context).push<Position>(
      MaterialPageRoute(
        builder: (_) => MapScreen(
          currentPosition: _position,
        ),
      ),
    );

    if (position != null) {
      setState(() {
        _position = position;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            border: BoxBorder.all(
              color: Colors.white.withValues(alpha: 0.2),
            ),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: _position != null
              ? MapView(
                  onMapCreated: _onMapCreated,
                  lat: _position!.lat,
                  lng: _position!.lng,
                )
              : Center(
                  child: const Text("No location chosen"),
                ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: _getCurrentPosition,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: IconText(
                  iconData: Icons.location_pin,
                  label: "Get Current Location",
                ),
              ),
            ),
            InkWell(
              onTap: _selectOnMap,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: IconText(
                  iconData: Icons.map,
                  label: "Select on Map",
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
