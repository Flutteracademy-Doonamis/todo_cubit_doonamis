import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_cubit_doonamis/models/todo_model.dart';
part 'filtered_todos_state.freezed.dart';

@freezed
class FilteredTodosState with _$FilteredTodosState {
  // final List<Todo> filteredTodos;

  // FilteredTodosState({required this.filteredTodos});
  const factory FilteredTodosState({
    @Default([]) List<Todo> filteredTodos,
    @Default([]) List<Todo> favTodos,
    @Default(false) bool newVale,
  }) = _FilteredTodosState;
}
