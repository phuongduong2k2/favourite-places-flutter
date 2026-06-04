import 'dart:io';

import 'package:favourite_places/utils/utils.dart';
import 'package:path/path.dart';

class PlaceLocation {
  const PlaceLocation({
    required this.latitude,
    required this.longitude,
    required this.address,
  });

  final num latitude;
  final num longitude;
  final String address;
}

class Place {
  Place({
    required this.title,
    required this.image,
    required this.location,
    String? id,
  }) : id = id ?? getRandomUuid();

  final String id;
  final String title;
  final File image;
  final PlaceLocation location;

  Map<String, Object> toMap() {
    final imageName = basename(image.path);
    var map = <String, Object>{
      "_id": id,
      "title": title,
      "image": imageName,
      "longitude": location.longitude.toString(),
      "latitude": location.latitude.toString(),
      "address": location.address,
    };
    return map;
  }

  factory Place.fromMap(Map<dynamic, dynamic> map, String appDirPath) {
    final imagePath = "$appDirPath/${map['image']}";
    return Place(
      id: map['_id'],
      title: map['title'],
      image: File(imagePath),
      location: PlaceLocation(
        latitude: num.parse(map['latitude']),
        longitude: num.parse(map['longitude']),
        address: map['address'],
      ),
    );
  }
}
