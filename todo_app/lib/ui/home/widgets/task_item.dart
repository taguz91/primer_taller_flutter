import 'package:flutter/material.dart';
import 'package:todo_app/data/local/providers/task_provider.dart';
import 'package:todo_app/models/task.dart';

class TaskItem extends StatelessWidget {
  TaskItem({
    Key? key,
    required this.task,
    required this.onUpdated,
  }) : super(key: key);

  final _taskProvider = TaskProvider();
  final Task task;
  final Function onUpdated;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task.task!),
      trailing: IconButton(
        onPressed: () async {
          task.status = !task.status!;
          await _taskProvider.update(task);
          onUpdated();
        },
        icon: Icon(
          task.status == true ? Icons.check_box : Icons.check_box_outline_blank,
        ),
      ),
    );
  }
}
