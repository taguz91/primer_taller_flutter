import 'package:flutter/material.dart';
import 'package:todo_app/ui/home/widgets/task_all.dart';
import 'package:todo_app/ui/home/widgets/task_status.dart';
import 'package:todo_app/ui/home/widgets/todo_form.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tareas'),
      ),
      body: Center(child: _options().elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Todas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Agregar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box),
            label: 'Completadas',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  List<Widget> _options() {
    return [
      TaskAll(),
      TodoForm(onSaved: () {
        setState(() {
          _selectedIndex = 0;
        });
      }),
      TaskStatus(status: true),
    ];
  }
}
