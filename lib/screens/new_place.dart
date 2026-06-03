import 'dart:io';

import 'package:favourite_places/widgets/image_input.dart';
import 'package:favourite_places/widgets/location_input.dart';
import 'package:flutter/material.dart';

class NewPlaceScreen extends StatefulWidget {
  const NewPlaceScreen({super.key});

  @override
  State<NewPlaceScreen> createState() => _NewPlaceScreenState();
}

class _NewPlaceScreenState extends State<NewPlaceScreen> {
  final TextEditingController _titleController = TextEditingController();
  File? imageFile;

  void _handleSubmit() {}

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
              controller: _titleController,
            ),

            ImageInput(
              onPickedImage: (file) => imageFile = file,
            ),
            LocationInput(),
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
