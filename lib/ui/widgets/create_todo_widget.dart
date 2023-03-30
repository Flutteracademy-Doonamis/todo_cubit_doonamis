import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit_doonamis/cubits/todo_list/todo_list_cubit.dart';

class CreateTodoWidget extends StatefulWidget {
  const CreateTodoWidget({Key? key}) : super(key: key);

  @override
  State<CreateTodoWidget> createState() => _CreateTodoWidgetState();
}

class _CreateTodoWidgetState extends State<CreateTodoWidget> {
  late TextEditingController createTodoController;

  @override
  void initState() {
    createTodoController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    createTodoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: createTodoController,
      decoration: const InputDecoration(label: Text("¿Qué quieres hacer?")),
      onSubmitted: (String? todoDesc) {
        if (todoDesc != null) {
          context.read<TodoListCubit>().addTodo(todoDesc);

          createTodoController.clear();
        }
      },
    );
  }
}
