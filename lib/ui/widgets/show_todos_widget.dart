import 'package:flutter/material.dart';
import 'package:todo_cubit_doonamis/models/todo_model.dart';
import 'package:todo_cubit_doonamis/ui/widgets/todo_item_widget.dart';

class ShowTodosWidget extends StatelessWidget {
  final List<Todo> todos;
  const ShowTodosWidget({Key? key, required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            TodoItemWidget(
              todo: todos[index],
            ),
          ],
        );
      },
    );
  }
}
