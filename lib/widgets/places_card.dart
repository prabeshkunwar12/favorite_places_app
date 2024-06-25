import 'package:favorite_places_app/models/place.dart';
import 'package:favorite_places_app/screens/place_details_screen.dart';
import 'package:flutter/material.dart';

class PlacesCard extends StatelessWidget {
  final Place place;
  const PlacesCard({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        place.name,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => PlaceDetailsScreen(place: place),
          ),
        );
      },
    );
  }
}
