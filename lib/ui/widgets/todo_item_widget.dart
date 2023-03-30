import 'package:flutter/material.dart';
import 'package:todo_cubit_doonamis/models/todo_model.dart';

class TodoItemWidget extends StatelessWidget {
  final Todo todo;
  final VoidCallback? changeTodoValue;
  final VoidCallback? toggleTodo;
  final TextEditingController textEditingController;

  const TodoItemWidget({
    Key? key,
    required this.todo,
    this.changeTodoValue,
    required this.textEditingController,
    this.toggleTodo,
  }) : super(key: key);

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
                  controller: textEditingController,
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
                      changeTodoValue ?? changeTodoValue!();
                      textEditingController.clear();
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
      title: Text(todo.desc),
      leading: Checkbox(
        onChanged: (bool? checked) {
          // toggleTodo();
          // print(todo.id);
          // print(checked);

          //if (toggleTodo != null) toggleTodo!();
          toggleTodo?.call();
        },
        value: todo.completed,
      ),
    );
  }
}
