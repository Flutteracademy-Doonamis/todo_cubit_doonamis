import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit_doonamis/cubits/todo_list/todo_list_cubit.dart';
import 'package:todo_cubit_doonamis/ui/widgets/show_todos_widget.dart';
import 'package:todo_cubit_doonamis/ui/widgets/todo_header_widget.dart';

import 'package:todo_cubit_doonamis/ui/widgets/todo_item_widget.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoListCubit, TodoListState>(
      builder: (context, state) {
        return Scaffold(
            body: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            TodoHeaderWidget(),
            ShowTodosWidget(
              todos: state.todos,
            ),
          ],
        ));
      },
    );
  }
}
