import "dart:convert";

import "package:favourite_places/models/location_address.dart";
import "package:flutter_dotenv/flutter_dotenv.dart";
import "package:http/http.dart" as http;

String getLocationImage({
  num? longitude = 0,
  num? latitude = 0,
  num? zoom = 17,
  num? bearing = 0,
  num? pitch = 0,
  num? width = 600,
  num? height = 600,
}) {
  final String accessToken = dotenv.get("ACCESS_TOKEN");
  return "https://api.mapbox.com/styles/v1/mapbox/streets-v12/static/$longitude,$latitude,$zoom,$bearing,$pitch/${height}x$width?access_token=$accessToken";
}

Future<String> getLocationAddress({
  required num longitude,
  required num latitude,
}) async {
  final String accessToken = dotenv.get("ACCESS_TOKEN");
  final uri = Uri.https("api.mapbox.com", "/search/geocode/v6/reverse", {
    "longitude": longitude.toString(),
    "latitude": latitude.toString(),
    "access_token": accessToken,
  });
  try {
    final response = await http.get(uri);
    if (response.statusCode == 200 && response.body.isNotEmpty) {
      final Map<String, dynamic> decodedResponse = json.decode(response.body);

      final locationAddress = LocationAddressResponse.fromJson(decodedResponse);
      return locationAddress.features[0].properties.fullAddress ?? "";
    } else {
      throw Exception(response.body);
    }
  } catch (error) {
    print("getLocationAddress: $error");
    return "";
  }
}
