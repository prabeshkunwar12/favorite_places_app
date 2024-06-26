import 'dart:io';

import 'package:favorite_places_app/models/place.dart';
import 'package:favorite_places_app/providers/favorite_places_provider.dart';
import 'package:favorite_places_app/widgets/image_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddNewPlacesScreen extends ConsumerStatefulWidget {
  const AddNewPlacesScreen({super.key});

  @override
  ConsumerState<AddNewPlacesScreen> createState() => _AddNewPlacesScreenState();
}

class _AddNewPlacesScreenState extends ConsumerState<AddNewPlacesScreen> {
  String? _name;
  File? _selectedImage;
  final _formKey = GlobalKey<FormState>();

  void _savePlace() {
    if (!_formKey.currentState!.validate()) return;
    _formKey.currentState!.save();
    if (_name == null || _selectedImage == null) {
      print("image is null ...... ");
      return;
    }
    setState(() {
      ref
          .read(favoritePlaceProvider.notifier)
          .addPlaces(Place(name: _name!, image: _selectedImage!));
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Place"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: "Name"),
                  initialValue: '',
                  maxLength: 50,
                  validator: (value) {
                    if (value == null ||
                        value.trim().length <= 1 ||
                        value.trim().length > 50) {
                      return "Name should be between 2 to 50 characters long.";
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    _name = newValue;
                  },
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ImageInput(
                  onPickImage: (image) {
                    _selectedImage = image;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // TextButton(
                    //   onPressed: _formKey.currentState!.reset,
                    //   child: const Text("reset"),
                    // ),
                    ElevatedButton(
                      onPressed: _savePlace,
                      child: const Text("Add Place"),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
