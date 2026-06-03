import 'dart:io';

import 'package:favourite_places/models/place.dart';
import 'package:favourite_places/providers/places.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlaceList extends ConsumerStatefulWidget {
  const PlaceList({super.key, required this.onSelectedLocation});

  final Function(Place place) onSelectedLocation;

  @override
  ConsumerState<PlaceList> createState() => _PlaceListState();
}

class _PlaceListState extends ConsumerState<PlaceList> {
  @override
  Widget build(BuildContext context) {
    final List<Place> places = ref.watch(placesProvider);
    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (context, index) => Card(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          key: ValueKey(places[index].id),
          onTap: () => widget.onSelectedLocation(places[index]),
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
                          places[index].title,
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          places[index].location.address,
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 100 / (100 - 24),
                    child: Image.file(File(places[index].imagePath)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
