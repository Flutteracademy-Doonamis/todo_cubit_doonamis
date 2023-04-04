import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit_doonamis/cubits/filtered_todos/filtered_todos_cubit.dart';
import 'package:todo_cubit_doonamis/cubits/filtered_todos/filtered_todos_state.dart';
import 'package:todo_cubit_doonamis/cubits/todo_filter/todo_filter_cubit.dart';
import 'package:todo_cubit_doonamis/cubits/todo_list/todo_list_cubit.dart';
import 'package:todo_cubit_doonamis/ui/widgets/create_todo_widget.dart';
import 'package:todo_cubit_doonamis/ui/widgets/search_filter_todo_widget.dart';
import 'package:todo_cubit_doonamis/ui/widgets/show_todos_widget.dart';
import 'package:todo_cubit_doonamis/ui/widgets/todo_header_widget.dart';

import 'package:todo_cubit_doonamis/ui/widgets/todo_item_widget.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todosF = context.watch<FilteredTodosCubit>().state.filteredTodos;
    return MultiBlocListener(
      listeners: [
        BlocListener<TodoFilterCubit, TodoFilterState>(
          listener: (context, state) {
            context.read<FilteredTodosCubit>().setFilteredTodos(
                  state.filter,
                  context.read<TodoListCubit>().state.todos,
                );
          },
        ),
        BlocListener<TodoListCubit, TodoListState>(
          listener: (context, state) {
            context.read<FilteredTodosCubit>().setFilteredTodos(
                  context.read<TodoFilterCubit>().state.filter,
                  state.todos,
                );
          },
        ),
      ],
      child: BlocBuilder<TodoListCubit, TodoListState>(
        builder: (context, state) {
          return Scaffold(
              body: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              TodoHeaderWidget(
                activeTodoCount: state.activeTodoCount,
              ),
              SizedBox(
                height: 20,
              ),
              SearchFilterTodoWidget(),
              ShowTodosWidget(
                todos: todosF,
              ),
              CreateTodoWidget(),
            ],
          ));
        },
      ),
    );
  }
}
