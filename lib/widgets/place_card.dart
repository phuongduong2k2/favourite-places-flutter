import 'package:favourite_places/models/place.dart';
import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    super.key,
    required this.place,
    required this.onTap,
    required this.onDelete,
  });

  final Place place;
  final Function(Place place) onTap;
  final Function(Place place) onDelete;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(place.id),
      onDismissed: (_) => onDelete(place),
      child: Card(
        margin: EdgeInsets.zero,
        clipBehavior: Clip.hardEdge,
        elevation: 0,
        child: InkWell(
          key: ValueKey(place.id),
          onTap: () => onTap(place),
          child: SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          place.title,
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          place.location.address,
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  AspectRatio(
                    aspectRatio: 100 / (100 - 24),
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.all(
                        Radius.circular(16),
                      ),
                      child: Image.file(
                        place.image,
                        fit: .cover,
                      ),
                    ),
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
