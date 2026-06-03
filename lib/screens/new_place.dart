import 'dart:io';

import 'package:favourite_places/models/place.dart';
import 'package:favourite_places/providers/places.dart';
import 'package:favourite_places/utils/utils.dart';
import 'package:favourite_places/widgets/image_input.dart';
import 'package:favourite_places/widgets/location_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

class NewPlaceScreen extends ConsumerStatefulWidget {
  const NewPlaceScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _NewPlaceScreenState();
  }
}

class _NewPlaceScreenState extends ConsumerState<NewPlaceScreen> {
  final TextEditingController _titleController = TextEditingController();
  File? _imageFile;
  Position? _position;

  void _handleSubmit() async {
    if (_titleController.text.isNotEmpty &&
        _imageFile != null &&
        _position != null) {
      String address = await getLocationAddress(
        latitude: _position!.lat,
        longitude: _position!.lng,
      );
      final place = Place(
        title: _titleController.text,
        image: _imageFile!,
        location: PlaceLocation(position: _position!, address: address),
      );
      ref.read(placesProvider.notifier).add(place);

      if (context.mounted) {
        Navigator.of(context).pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Place"),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          spacing: 8,
          children: [
            TextField(
              decoration: InputDecoration(label: const Text("Title")),
              style: TextStyle(color: Colors.white),
              controller: _titleController,
              textCapitalization: TextCapitalization.sentences,
            ),

            ImageInput(
              onPickedImage: (file) => _imageFile = file,
            ),
            LocationInput(
              onSelectedLocation: (position) => _position = position,
            ),
            ElevatedButton.icon(
              onPressed: _handleSubmit,
              icon: const Icon(Icons.add),
              label: const Text("Add Place"),
            ),
          ],
        ),
      ),
    );
  }
}
