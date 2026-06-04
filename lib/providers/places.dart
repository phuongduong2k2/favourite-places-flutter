import 'dart:io';

import 'package:favourite_places/models/place.dart';
import 'package:favourite_places/utils/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:sqflite/sqlite_api.dart';

var _logger = Logger();

final String table = "places";
final String idColumn = "_id";
final String titleColumn = "title";
final String imageNameColumn = "image";
final String longitudeColumn = "longitude";
final String latitudeColumn = 'latitude';
final String addressColumn = 'address';

Future<Database> _getDatabase() async {
  final dbPath = await sql.getDatabasesPath();
  final db = await sql.openDatabase(
    join(dbPath, "places.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''
          CREATE TABLE $table (
            $idColumn TEXT PRIMARY KEY, 
            $titleColumn TEXT NOT NULL,
            $imageNameColumn TEXT NOT NULL,
            $longitudeColumn TEXT NOT NULL,
            $latitudeColumn TEXT NOT NULL,
            $addressColumn TEXT NOT NULL
          )
        ''');
    },
  );
  return db;
}

class PlacesProvider extends Notifier<List<Place>> {
  @override
  List<Place> build() {
    return [];
  }

  Future<void> loadPlaces() async {
    try {
      final db = await _getDatabase();
      final data = await db.query(table);
      final appDir = await getApplicationDocumentsDirectory();
      final places = data
          .map((row) => Place.fromMap(row, appDir.path))
          .toList();
      state = [...places];
    } catch (error) {
      _logger.e(error);
    }
  }

  Future<bool> add(String title, File image, PlaceLocation location) async {
    try {
      final copiedImage = await copyFile(file: image, isRandomName: true);

      final newPlace = Place(
        title: title,
        image: copiedImage,
        location: location,
      );

      final db = await _getDatabase();
      await db.insert(table, newPlace.toMap());
      state = [...state, newPlace];
      return true;
    } catch (error) {
      _logger.e(error);
      return false;
    }
  }

  Future<void> delete(Place place) async {
    final db = await _getDatabase();
    await db.execute("DELETE FROM $table WHERE _id='${place.id}'");
    final newState = state.where((element) => element.id != place.id).toList();
    state = newState;
  }

  Future<void> dropTable() async {
    final db = await _getDatabase();
    await db.execute("DROP TABLE IF EXISTS $table");
  }
}

final placesProvider = NotifierProvider(PlacesProvider.new);
