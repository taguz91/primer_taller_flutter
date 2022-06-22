class TaskFeed {
  static const String tableName = 'task';

  static const String columnTaskId = 'id';
  static const String columnTask = 'task';

  static const String sqlDropTable = 'DROP TABLE IF EXISTS $tableName';

  static const String sqlCreateTable = '''
  CREATE TABLE $tableName (
    $columnTaskId INTEGER NOT NULL,
    $columnTask TEXT NOT NULL
  )''';
}
