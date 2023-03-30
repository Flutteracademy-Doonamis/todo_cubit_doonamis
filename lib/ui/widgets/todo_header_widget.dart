import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit_doonamis/cubits/todo_list/todo_list_cubit.dart';

class TodoHeaderWidget extends StatelessWidget {
  final int activeTodoCount;
  const TodoHeaderWidget({Key? key, required this.activeTodoCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          "TODO",
          style: TextStyle(fontSize: 40.0),
        ),
        Text("$activeTodoCount Tareas por realizar")
      ],
    );
  }
}
