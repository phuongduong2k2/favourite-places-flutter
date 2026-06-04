import 'package:favourite_places/models/place.dart';
import 'package:favourite_places/screens/map.dart';
import 'package:flutter/material.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

class PlaceDetail extends StatelessWidget {
  const PlaceDetail({super.key, required this.place});

  final Place place;

  void _openMap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => MapScreen(
          position: Position(place.location.longitude, place.location.latitude),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 16,
          children: [
            Image.file(
              place.image,
              height: 200,
              width: double.infinity,
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
            Text(
              "Location: ${place.location.address}",
              textAlign: TextAlign.center,
            ),
            ElevatedButton.icon(
              onPressed: () => _openMap(context),
              label: const Text("Open Map"),
            ),
          ],
        ),
      ),
    );
  }
}
