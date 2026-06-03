import 'package:flutter/material.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

class MapView extends StatefulWidget {
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
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  bool _isDone = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(milliseconds: 500),
      () => setState(() {
        _isDone = true;
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: _isDone
            ? Stack(
                children: [
                  MapWidget(
                    onMapCreated: widget.onMapCreated,
                    viewport: CameraViewportState(
                      zoom: 15,
                      center: Point(
                        coordinates: Position(
                          widget.lng ?? 105.79019432684858,
                          widget.lat ?? 21.023962708697628,
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
              )
            : SizedBox(),
      ),
    );
  }
}
