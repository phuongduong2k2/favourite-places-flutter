import 'package:favourite_places/screens/new_place.dart';
import 'package:favourite_places/widgets/place_list.dart';
import 'package:flutter/material.dart';

class PlacesScreen extends StatefulWidget {
  const PlacesScreen({super.key});

  @override
  State<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
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
      body: const PlaceList(),
    );
  }
}
