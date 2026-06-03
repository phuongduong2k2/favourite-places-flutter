import 'dart:io';

import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

class PlaceLocation {
  const PlaceLocation({
    required this.position,
    required this.address,
  });

  final Position position;
  final String address;
}

class Place {
  Place({required this.title, required this.image, required this.location})
    : id = uuid.v4();

  final String id;
  final String title;
  final File image;
  final PlaceLocation location;
}
