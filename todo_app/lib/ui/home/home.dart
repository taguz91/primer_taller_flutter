import 'package:flutter/material.dart';
import 'package:todo_app/ui/home/widgets/todo_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tareas'),
      ),
      body: ListView(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return const TodoForm();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
