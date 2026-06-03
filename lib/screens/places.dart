import 'package:favourite_places/models/place.dart';
import 'package:favourite_places/screens/new_place.dart';
import 'package:favourite_places/screens/place_detail.dart';
import 'package:favourite_places/widgets/place_list.dart';
import 'package:flutter/material.dart';

class PlacesScreen extends StatefulWidget {
  const PlacesScreen({super.key});

  @override
  State<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  void _selectLocation(Place place) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (_) => PlaceDetail(place: place)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Places"),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () => Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (ctx) => NewPlaceScreen())),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: PlaceList(
        onSelectedLocation: _selectLocation,
      ),
    );
  }
}
