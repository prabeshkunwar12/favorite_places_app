import 'package:favorite_places_app/models/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoritePlacesNotifier extends StateNotifier<List<Place>> {
  FavoritePlacesNotifier() : super(const []);

  void addPlaces(Place place) {
    state = [...state, place];
  }
}

final favoritePlaceProvider =
    StateNotifierProvider<FavoritePlacesNotifier, List<Place>>(
  (ref) => FavoritePlacesNotifier(),
);
