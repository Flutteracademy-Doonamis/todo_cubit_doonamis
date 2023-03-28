import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit_doonamis/models/todo_model.dart';

part 'todo_list_state.dart';

class TodoListCubit extends Cubit<TodoListState> {
  TodoListCubit() : super(TodoListState.initial()) {
    _calculateActiveCount();
  }

  void init() {
    print("Hola mundo");
  }

  void editTodo(String id, String todoDesc) {
    final newTodos = state.todos.map((Todo todo) {
      if (todo.id == id) {
        return Todo(
          id: id,
          desc: todoDesc,
          completed: todo.completed,
        );
      }
      return todo;
    }).toList();
    emit(state.copyWith(todos: newTodos));
  }

  void toggleTodo(String id) {
    final newTodos = state.todos.map((Todo todo) {
      if (todo.id == id) {
        return Todo(
          id: id,
          desc: todo.desc,
          completed: !todo.completed,
        );
      }
      return todo;
    }).toList();
    emit(state.copyWith(todos: newTodos));
    _calculateActiveCount();
  }

  void _calculateActiveCount() {
    final int activeTodoCount =
        state.todos.where((Todo element) => !element.completed).toList().length;
    emit(
      state.copyWith(activeTodoCount: activeTodoCount),
    );
  }
}
