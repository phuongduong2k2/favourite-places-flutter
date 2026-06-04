import 'dart:io';

import 'package:favourite_places/models/place.dart';
import 'package:favourite_places/providers/places.dart';
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
  File? _image;
  Position? _position;
  String _address = "";

  void _handleSubmit() async {
    if (_titleController.text.isNotEmpty &&
        _image != null &&
        _position != null &&
        _address.isNotEmpty) {
      bool isSuccess = await ref
          .read(placesProvider.notifier)
          .add(
            _titleController.text,
            _image!,
            PlaceLocation(
              latitude: _position!.lat,
              longitude: _position!.lng,
              address: _address,
            ),
          );

      if (context.mounted && isSuccess) {
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
              onPickedImage: (file) => _image = file,
            ),
            LocationInput(
              onSelectedLocation: ({required address, required position}) {
                _position = position;
                _address = address;
              },
            ),
            ElevatedButton.icon(
              onPressed: _handleSubmit,
              icon: const Icon(Icons.add),
              label: const Text("Add Place"),
            ),
            // ElevatedButton(
            //   onPressed: ref.read(placesProvider.notifier).dropTable,
            //   child: const Text("Drop table"),
            // ),
          ],
        ),
      ),
    );
  }
}
