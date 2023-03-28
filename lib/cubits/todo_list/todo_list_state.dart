part of 'todo_list_cubit.dart';

List<Todo> todosUser = [
  Todo(
    desc: "Hacer la cama",
  ),
  Todo(
    desc: "Limpiar la cocina",
  ),
  Todo(
    desc: "Estudiar Inglés",
  ),
];

class TodoListState {
  final List<Todo> todos;
  final int activeTodoCount;

  TodoListState({
    required this.todos,
    required this.activeTodoCount,
  });

  factory TodoListState.initial() {
    return TodoListState(
      todos: todosUser,
      activeTodoCount: 0,
    );
  }

  TodoListState copyWith({
    List<Todo>? todos,
    int? activeTodoCount,
  }) {
    return TodoListState(
      todos: todos ?? this.todos,
      activeTodoCount: activeTodoCount ?? this.activeTodoCount,
    );
  }
}
