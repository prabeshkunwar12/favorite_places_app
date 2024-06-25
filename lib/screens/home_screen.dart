import 'package:favorite_places_app/providers/favorite_places_provider.dart';
import 'package:favorite_places_app/screens/add_new_places_screen.dart';
import 'package:favorite_places_app/widgets/places_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final places = ref.watch(favoritePlaceProvider);

    void addPlacesScreen() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (ctx) => const AddNewPlacesScreen(),
        ),
      );
    }

    final content = ListView.builder(
      itemCount: places.length,
      itemBuilder: (ctx, index) => PlacesCard(place: places[index]),
    );

    final empty = Center(
      child: Text(
        "No places added yet",
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Favorite Places",
        ),
        actions: [
          IconButton(
              onPressed: addPlacesScreen,
              icon: Icon(
                Icons.add,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              )),
        ],
      ),
      body: places.isEmpty ? empty : content,
    );
  }
}
