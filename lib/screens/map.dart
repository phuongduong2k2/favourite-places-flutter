import 'package:flutter/material.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key, this.position});

  final Position? position;

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  bool _isDone = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500)).then(
      (_) => setState(() {
        _isDone = true;
      }),
    );
  }

  void _onMapCreated(MapboxMap mapboxMap) async {
    if (widget.position != null) {
      CircleAnnotationManager circleAnnotationManager = await mapboxMap
          .annotations
          .createCircleAnnotationManager();
      CircleAnnotationOptions circleAnnotationOptions = CircleAnnotationOptions(
        geometry: Point(coordinates: widget.position!),
        circleColor: Colors.red.toARGB32(),
        circleStrokeWidth: 1,
        circleStrokeColor: Colors.black.toARGB32(),
        circleRadius: 8,
      );

      circleAnnotationManager.create(circleAnnotationOptions);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Map"),
        centerTitle: false,
      ),
      body: _isDone
          ? MapWidget(
              onMapCreated: _onMapCreated,
              viewport: CameraViewportState(
                center: Point(
                  coordinates: Position(
                    widget.position?.lng ?? 0,
                    widget.position?.lat ?? 0,
                  ),
                ),
                zoom: 17,
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
