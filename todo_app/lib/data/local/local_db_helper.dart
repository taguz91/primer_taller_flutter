import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_app/data/local/datasources/task_feed.dart';
import 'package:todo_app/data/local/db_constants.dart';

class LocalDBHelper {
  static Database? _database;

  static final LocalDBHelper _instance = LocalDBHelper._();

  LocalDBHelper._();

  factory LocalDBHelper() {
    return _instance;
  }

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _init();
    return _database!;
  }

  Future<Database> _init() async {
    String docsDir = await getDatabasesPath();
    final path = join(docsDir, DBConstants.dbName);

    return await openDatabase(
      path,
      version: DBConstants.dbVersion,
      onCreate: (Database db, int version) async {
        await db.execute(TaskFeed.sqlCreateTable);
      },
      onUpgrade: (Database db, int oldVersion, int newVersion) async {
        await db.execute(TaskFeed.sqlDropTable);
      },
    );
  }
}
