import 'package:favourite_places/models/place.dart';
import 'package:favourite_places/providers/places.dart';
import 'package:favourite_places/screens/new_place.dart';
import 'package:favourite_places/screens/place_detail.dart';
import 'package:favourite_places/widgets/place_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesScreen extends ConsumerStatefulWidget {
  const PlacesScreen({super.key});

  @override
  ConsumerState<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends ConsumerState<PlacesScreen> {
  late Future<void> _placesFuture;

  @override
  void initState() {
    super.initState();
    _placesFuture = ref.read(placesProvider.notifier).loadPlaces();
  }

  void _selectPlace(Place place) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (_) => PlaceDetail(place: place)));
  }

  void _deletePlace(Place place) {
    ref.read(placesProvider.notifier).delete(place);
  }

  @override
  Widget build(BuildContext context) {
    final places = ref.watch(placesProvider);

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
      body: FutureBuilder(
        future: _placesFuture,
        builder: (ctx, snapshot) =>
            snapshot.connectionState == ConnectionState.waiting
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : PlaceList(
                places: places,
                onTapPlace: _selectPlace,
                onDelete: _deletePlace,
              ),
      ),
    );
  }
}
