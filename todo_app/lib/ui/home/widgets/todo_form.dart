import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class TodoForm extends StatefulWidget {
  const TodoForm({Key? key}) : super(key: key);

  @override
  State<TodoForm> createState() => _TodoFormState();
}

class _TodoFormState extends State<TodoForm> {
  final _formKey = GlobalKey<FormBuilderState>();
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
                  name: 'todo',
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
          onPressed: () {
            setState(() {
              _saving = true;
            });
            _formKey.currentState!.save();

            final data = _formKey.currentState!.value;
            Future.delayed(const Duration(milliseconds: 1500), () {
              print('New tas $data');
              Navigator.of(context).pop();
            });
          },
          icon: const Icon(Icons.save),
        ),
      ],
    );
  }
}
