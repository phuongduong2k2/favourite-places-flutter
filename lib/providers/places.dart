import 'package:favourite_places/models/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesProvider extends Notifier<List<Place>> {
  @override
  List<Place> build() {
    return [];
  }

  void add(Place place) {
    state = [...state, place];
  }
}

final placesProvider = NotifierProvider(PlacesProvider.new);
