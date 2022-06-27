import 'package:flutter/material.dart';
import 'package:todo_app/data/local/providers/task_provider.dart';
import 'package:todo_app/ui/home/widgets/task_list.dart';

class TaskAll extends StatelessWidget {
  TaskAll({
    Key? key,
  }) : super(key: key);

  final _taskProvider = TaskProvider();

  @override
  Widget build(BuildContext context) {
    return TaskList(query: () {
      return _taskProvider.all();
    });
  }
}
