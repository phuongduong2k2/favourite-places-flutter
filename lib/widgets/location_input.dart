import 'package:favourite_places/screens/map_picker.dart';
import 'package:favourite_places/utils/utils.dart';
import 'package:favourite_places/widgets/icon_text.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart' as geol;
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:transparent_image/transparent_image.dart';

class LocationInput extends StatefulWidget {
  const LocationInput({super.key, required this.onSelectedLocation});

  final Function({required Position position, required String address})
  onSelectedLocation;

  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  Position? _position;
  MapboxMap? mapboxMap;
  String _address = "";
  bool _isLoading = false;

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
    setState(() {
      _isLoading = true;
    });
    geol.Position geolPosition = await _determinePosition();
    final Position position = Position(
      geolPosition.longitude,
      geolPosition.latitude,
    );
    String address = await getLocationAddress(
      longitude: geolPosition.longitude,
      latitude: geolPosition.latitude,
    );
    setState(() {
      _isLoading = false;
    });
    if (address.isEmpty) {
      return;
    }
    widget.onSelectedLocation(position: position, address: address);
    setState(() {
      _position = position;
      _address = address;
    });
  }

  void _selectOnMap() async {
    if (!context.mounted) {
      return;
    }
    Position? position = await Navigator.of(context).push<Position>(
      MaterialPageRoute(
        builder: (_) => MapPickerScreen(
          currentPosition: _position,
        ),
      ),
    );
    setState(() {
      _isLoading = true;
    });
    if (position != null) {
      String address = await getLocationAddress(
        latitude: position.lat,
        longitude: position.lng,
      );
      if (address.isNotEmpty) {
        widget.onSelectedLocation(position: position, address: address);
        setState(() {
          _position = position;
          _address = address;
        });
      }
    }
    setState(() {
      _isLoading = false;
    });
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
          child: _position != null && _address.isNotEmpty
              ? Column(
                  children: [
                    Expanded(
                      child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image: getLocationImage(
                          latitude: _position!.lat,
                          longitude: _position!.lng,
                          width: (MediaQuery.of(context).size.width - 24)
                              .toInt(),
                        ),
                      ),
                    ),
                    Text(
                      _address,
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
              : Center(
                  child: _isLoading
                      ? CircularProgressIndicator()
                      : const Text("No location chosen"),
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
