import 'package:favorite_places_app/models/place.dart';
import 'package:flutter/material.dart';

class PlacesCard extends StatelessWidget {
  final Place place;
  const PlacesCard({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        place.name,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
