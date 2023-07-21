import 'package:sqflite/sqflite.dart' as sql;

class SQHelper {
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE data (
          id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
          title TEXT,
          desc TEXT,
          createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        )""");
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase("database_name.db");
  }
}
