import 'package:favourite_places/models/place.dart';
import 'package:favourite_places/widgets/place_card.dart';
import 'package:flutter/material.dart';

class PlaceList extends StatefulWidget {
  const PlaceList({
    super.key,
    required this.places,
    required this.onTapPlace,
    required this.onDelete,
  });

  final List<Place> places;
  final Function(Place place) onTapPlace;
  final Function(Place place) onDelete;

  @override
  State<PlaceList> createState() => _PlaceListState();
}

class _PlaceListState extends State<PlaceList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.places.isEmpty) {
      return Center(
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: const Text("Add Place"),
        ),
      );
    }

    return ListView.separated(
      itemCount: widget.places.length,
      padding: EdgeInsets.all(16),
      separatorBuilder: (_, _) => SizedBox(height: 16),
      itemBuilder: (context, index) => PlaceCard(
        place: widget.places[index],
        onTap: widget.onTapPlace,
        onDelete: widget.onDelete,
      ),
    );
  }
}
