import 'dart:io';

import 'package:favourite_places/widgets/icon_text.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key, required this.onPickedImage});

  final Function(File file) onPickedImage;

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File? imageFile;

  void _pickImage() async {
    final picker = ImagePicker();
    try {
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        setState(() {
          imageFile = File(image.path);
        });
        widget.onPickedImage(File(image.path));
      }
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        border: BoxBorder.all(
          color: Colors.white.withValues(alpha: 0.2),
        ),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: InkWell(
        onTap: _pickImage,
        child: imageFile != null
            ? Image.file(
                imageFile!,
                height: 200,
                width: double.infinity,
              )
            : Center(
                child: const IconText(
                  iconData: Icons.camera,
                  label: "Take Picture",
                ),
              ),
      ),
    );
  }
}
