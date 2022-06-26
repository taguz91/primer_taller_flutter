import 'package:todo_app/data/local/datasources/task_feed.dart';
import 'package:todo_app/data/local/local_db_helper.dart';
import 'package:todo_app/models/task.dart';

class TaskProvider {
  final LocalDBHelper _db = LocalDBHelper();

  static final _instance = TaskProvider._();

  TaskProvider._();

  factory TaskProvider() {
    return _instance;
  }

  Future<Task> insert(Task task) async {
    final db = await _db.database;
    task.id = await db.insert(TaskFeed.tableName, task.toMap());
    return task;
  }

  Future<Task> update(Task task) async {
    final db = await _db.database;
    task.id = await db.update(
      TaskFeed.tableName,
      task.toMap(),
      where: TaskFeed.sqlWhereId,
      whereArgs: [task.id],
    );
    return task;
  }

  Future<bool> delete(int id) async {
    final db = await _db.database;
    int deleteds = await db.delete(
      TaskFeed.tableName,
      where: TaskFeed.sqlWhereId,
      whereArgs: [id],
    );
    return deleteds > 0;
  }

  Future<List<Task>> all() async {
    final db = await _db.database;
    final res = await db.query(TaskFeed.tableName);
    return res.map((row) => Task.fromMap(row)).toList();
  }

  Future<List<Task>> byStatus(bool status) async {
    final db = await _db.database;
    final res = await db.query(
      TaskFeed.tableName,
      where: TaskFeed.sqlWhereStatus,
      whereArgs: [status == true ? 1 : 0],
    );
    return res.map((row) => Task.fromMap(row)).toList();
  }
}
