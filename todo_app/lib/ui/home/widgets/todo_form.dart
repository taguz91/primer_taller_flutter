import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:todo_app/data/local/providers/task_provider.dart';
import 'package:todo_app/models/task.dart';

class TodoForm extends StatefulWidget {
  const TodoForm({Key? key, required this.onSaved}) : super(key: key);

  final Function onSaved;

  @override
  State<TodoForm> createState() => _TodoFormState();
}

class _TodoFormState extends State<TodoForm> {
  final _formKey = GlobalKey<FormBuilderState>();
  final taskProvider = TaskProvider();
  bool _saving = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Agregar nueva tarea',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          FormBuilder(
            key: _formKey,
            child: Column(
              children: [
                FormBuilderTextField(
                  name: 'task',
                  decoration: const InputDecoration(
                    labelText: 'Tarea',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          _save(),
        ],
      ),
    );
  }

  Widget _save() {
    if (_saving) {
      return const LinearProgressIndicator();
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () async {
            setState(() {
              _saving = true;
            });
            _formKey.currentState!.save();

            final data = _formKey.currentState!.value;

            final task = await taskProvider.insert(Task(
              status: false,
              task: data['task'],
            ));

            if (!mounted) return;

            if (task.id != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Guardamos correctamente')),
              );
              widget.onSaved();
            } else {
              setState(() {
                _saving = false;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('No se pudo crear la tarea')),
              );
            }
          },
          icon: const Icon(Icons.save),
        ),
      ],
    );
  }
}
