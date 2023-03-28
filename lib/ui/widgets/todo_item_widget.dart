import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit_doonamis/cubits/todo_list/todo_list_cubit.dart';
import 'package:todo_cubit_doonamis/models/todo_model.dart';

class TodoItemWidget extends StatefulWidget {
  final Todo todo;

  const TodoItemWidget({
    Key? key,
    required this.todo,
  }) : super(key: key);

  @override
  State<TodoItemWidget> createState() => _TodoItemWidgetState();
}

class _TodoItemWidgetState extends State<TodoItemWidget> {
  late final TextEditingController editTodoController;
  @override
  void initState() {
    editTodoController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    editTodoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              // bool err = false;
              return AlertDialog(
                title: Text("Editar Tarea"),
                content: TextField(
                  controller: editTodoController,
                  autofocus: true,
                  // decoration: InputDecoration(
                  //   errorText:
                  //       (err = true) ? "El valor no puede estar vacio" : null,
                  // ),
                  onChanged: (value) {},
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      //CAMBIAR EL VALOR
                      context.read<TodoListCubit>().editTodo(
                            widget.todo.id,
                            editTodoController.text,
                          );

                      editTodoController.clear();
                      Navigator.pop(context);
                    },
                    child: Text("ACEPTAR"),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text("CANCELAR"),
                  ),
                ],
              );
            });
      },
      title: Text(widget.todo.desc),
      leading: Checkbox(
        onChanged: (bool? checked) {
          // toggleTodo();
          print(widget.todo.id);
          print(checked);
          context.read<TodoListCubit>().toggleTodo(widget.todo.id);
        },
        value: widget.todo.completed,
      ),
    );
  }
}
