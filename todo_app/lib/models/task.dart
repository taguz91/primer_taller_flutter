import 'package:todo_app/data/local/datasources/task_feed.dart';

class Task {
  int? id;
  String? task;
  bool? status;

  Task({
    this.id,
    this.task,
    this.status,
  });

  factory Task.fromMap(Map<String, dynamic> json) => Task(
        id: json[TaskFeed.columnId],
        task: json[TaskFeed.columnTask],
        status: json[TaskFeed.columnStatus] == 1,
      );

  Map<String, dynamic> toMap() => id == null
      ? {
          TaskFeed.columnTask: task,
          TaskFeed.columnStatus: status == true ? 1 : 0,
        }
      : {
          TaskFeed.columnId: id,
          TaskFeed.columnTask: task,
          TaskFeed.columnStatus: status == true ? 1 : 0,
        };
}
