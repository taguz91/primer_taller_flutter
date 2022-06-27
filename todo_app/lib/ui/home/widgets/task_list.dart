import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/ui/home/widgets/task_item.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key, required this.query}) : super(key: key);

  final Future<List<Task>> Function() query;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.query(),
      builder: (BuildContext context, AsyncSnapshot<List<Task>> snapshot) {
        if (snapshot.hasData) {
          final tasks = snapshot.data!;
          return ListView.separated(
            itemBuilder: (context, index) {
              return TaskItem(
                task: tasks[index],
                onUpdated: () {
                  setState(() {});
                },
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 15);
            },
            itemCount: tasks.length,
          );
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
