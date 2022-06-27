import 'package:flutter/material.dart';
import 'package:todo_app/data/local/providers/task_provider.dart';
import 'package:todo_app/ui/home/widgets/task_list.dart';

class TaskStatus extends StatelessWidget {
  TaskStatus({
    Key? key,
    required this.status,
  }) : super(key: key);

  final bool status;
  final _taskProvider = TaskProvider();

  @override
  Widget build(BuildContext context) {
    return TaskList(query: () {
      return _taskProvider.byStatus(status);
    });
  }
}
