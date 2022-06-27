class TaskFeed {
  static const String tableName = 'task';

  static const String columnId = '_id';
  static const String columnTask = 'task';
  static const String columnStatus = 'status';

  static const String sqlDropTable = 'DROP TABLE IF EXISTS $tableName';

  static const String sqlCreateTable = '''
  CREATE TABLE $tableName (
    $columnId INTEGER PRIMARY KEY,
    $columnTask TEXT NOT NULL,
    $columnStatus INTEGER NOT NULL DEFAULT FALSE
  )''';

  static const String sqlWhereId = '$columnId = ?';

  static const String sqlWhereStatus = '$columnStatus = ?';
}
