import 'package:favorite_places_app/providers/favorite_places_provider.dart';
import 'package:favorite_places_app/screens/add_new_places_screen.dart';
import 'package:favorite_places_app/widgets/places_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  void addPlacesScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => const AddNewPlacesScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final places = ref.watch(favoritePlaceProvider);
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
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (ctx, index) => PlacesCard(place: places[index]),
      ),
    );
  }
}
