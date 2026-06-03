import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

final String table = "places";
final String idColumn = "_id";
final String titleColumn = "title";

class DatabaseService {
  static final DatabaseService instance = DatabaseService._constructor();

  DatabaseService._constructor();

  Future<Database> openDB() async {
    final databaseDirPath = await getDatabasesPath();
    final databasePath = join(databaseDirPath, "places_db.db");
    final database = openDatabase(
      databasePath,
      onCreate: (db, version) {
        db.execute('''
          CREATE TABLE $table (
            $idColumn INTEGER PRIMARY KEY,
            $titleColumn TEXT NOT NULL,
            
          )
        ''');
      },
    );
    return database;
  }
}
