import 'package:flutter/material.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

class MapView extends StatelessWidget {
  const MapView({
    super.key,
    required this.onMapCreated,
    this.lat,
    this.lng,
    this.height,
    this.width,
  });

  final Function(MapboxMap mapboxMap) onMapCreated;
  final num? lat;
  final num? lng;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            MapWidget(
              onMapCreated: onMapCreated,
              viewport: CameraViewportState(
                zoom: 15,
                center: Point(
                  coordinates: Position(
                    lng ?? 105.79019432684858,
                    lat ?? 21.023962708697628,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 25 / 2,
              top: 0,
              left: 0,
              right: 0,
              child: IgnorePointer(
                child: IconButton(
                  onPressed: () {},
                  iconSize: 25,
                  icon: Icon(Icons.location_on_outlined),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
