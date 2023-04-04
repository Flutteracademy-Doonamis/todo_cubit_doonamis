// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:todo_cubit_doonamis/cubits/filtered_todos/filtered_todos_state.dart';
import 'package:todo_cubit_doonamis/models/todo_model.dart';

class FilteredTodosCubit extends Cubit<FilteredTodosState> {
  List<Todo> listTodos;
  FilteredTodosCubit({
    required this.listTodos,
  }) : super(const FilteredTodosState()) {
    setFilteredTodos(Filter.all, listTodos);
  }

  void setFilteredTodos(Filter filter, List<Todo> todos) {
    List<Todo> filteredTodos;
    switch (filter) {
      case Filter.active:
        filteredTodos =
            todos.where((element) => element.completed == false).toList();
        break;
      case Filter.completed:
        filteredTodos =
            todos.where((element) => element.completed == true).toList();
        break;
      case Filter.all:
        filteredTodos = todos;
        break;
    }

    emit(state.copyWith(filteredTodos: filteredTodos));
  }
}
