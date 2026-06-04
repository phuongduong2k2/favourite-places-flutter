import 'package:favourite_places/models/place.dart';
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
    return ListView.builder(
      itemCount: widget.places.length,
      itemBuilder: (context, index) => Dismissible(
        key: ValueKey(widget.places[index].id),
        onDismissed: (_) => widget.onDelete(widget.places[index]),
        child: Card(
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            key: ValueKey(widget.places[index].id),
            onTap: () => widget.onTapPlace(widget.places[index]),
            child: SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.places[index].title,
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            widget.places[index].location.address,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 100 / (100 - 24),
                      child: Image.file(widget.places[index].image),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
