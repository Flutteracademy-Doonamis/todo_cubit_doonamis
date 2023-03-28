import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit_doonamis/cubits/todo_list/todo_list_cubit.dart';
import 'package:todo_cubit_doonamis/ui/pages/todos_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TodoListCubit>(
      create: (context) => TodoListCubit(),
      child: const MaterialApp(
        title: 'Material App',
        home: TodosPage(),
      ),
    );
  }
}
