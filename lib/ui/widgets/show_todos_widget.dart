import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit_doonamis/cubits/todo_list/todo_list_cubit.dart';
import 'package:todo_cubit_doonamis/models/todo_model.dart';
import 'package:todo_cubit_doonamis/ui/widgets/todo_item_widget.dart';

class ShowTodosWidget extends StatelessWidget {
  final List<Todo> todos;
  const ShowTodosWidget({Key? key, required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return ListView.builder(
      itemCount: todos.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (contex, index) {
        return Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Dismissible(
              key: ValueKey(todos[index].id),
              background: showBackground(0),
              secondaryBackground: showBackground(1),
              onDismissed: (_) {
                context.read<TodoListCubit>().removeTodo(todos[index]);
              },
              confirmDismiss: (_) {
                return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("¿Estás seguro de querer borrar? "),
                        content: Text("Esta acción es permanente"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context, true);
                            },
                            child: Text("Si"),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context, false);
                            },
                            child: Text("NO"),
                          ),
                        ],
                      );
                    });
              },
              child: TodoItemWidget(
                todo: todos[index],
                // changeTodoValue: () {
                //   context.read<TodoListCubit>().editTodo(
                //         todos[index].id,
                //         textEditingController.text,
                //       );
                // },
                toggleTodo: () {
                  context.read<TodoListCubit>().toggleTodo(todos[index].id);
                },
                textEditingController: textEditingController,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget showBackground(int direction) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      color: direction == 0 ? Colors.red : Colors.yellow,
      alignment: direction == 0 ? Alignment.centerLeft : Alignment.centerRight,
      child: Align(
        alignment:
            direction == 0 ? Alignment.centerLeft : Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(right: 20),
          child: const Icon(
            Icons.delete,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
