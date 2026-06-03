import 'package:favourite_places/models/place.dart';
import 'package:flutter/material.dart';

class PlaceDetail extends StatelessWidget {
  const PlaceDetail({super.key, required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.file(
              place.image,
              height: 200,
              width: double.infinity,
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
