import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit_doonamis/cubits/todo_filter/todo_filter_cubit.dart';
import 'package:todo_cubit_doonamis/models/todo_model.dart';

class SearchFilterTodoWidget extends StatelessWidget {
  const SearchFilterTodoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(
            labelText: 'Buscar Tareas...',
            border: InputBorder.none,
            filled: true,
            prefixIcon: Icon(Icons.search),
          ),
          onChanged: (String? newSearchTerm) {
            if (newSearchTerm != null) {}
          },
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            filterButton(context, Filter.all),
            filterButton(context, Filter.active),
            filterButton(context, Filter.completed),
          ],
        )
      ],
    );
  }

  Widget filterButton(BuildContext context, Filter filter) {
    return TextButton(
      onPressed: () {
        context.read<TodoFilterCubit>().changeFilter(filter);
      },
      child: Text(
        filter == Filter.all
            ? 'Todos'
            : filter == Filter.active
                ? 'Activos'
                : 'Completados',
        style: TextStyle(fontSize: 20, color: textColor(context, filter)),
      ),
    );
  }

  Color textColor(BuildContext context, Filter filter) {
    final currentFilter = context.watch<TodoFilterCubit>().state.filter;
    return currentFilter == filter ? Colors.blue : Colors.grey;
  }
}
