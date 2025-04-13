import 'package:bloc_demo/todo_list/add_todo_page.dart';
import 'package:bloc_demo/todo_list/cubit/todo_cubit.dart';
import 'package:bloc_demo/todo_list/todo_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyTodoListApp extends StatelessWidget {
  const MyTodoListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (_) => const TodoList(),
          '/add-todo': (_) => const AddTodoPage(),
        },
      ),
    );
  }
}
