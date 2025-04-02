import 'package:bloc_demo/counter_demo/counter_bloc.dart';
import 'package:bloc_demo/counter_demo/counter_cubit.dart';
import 'package:bloc_demo/counter_demo/home_page.dart';
import 'package:bloc_demo/todo_list/add_todo_page.dart';
import 'package:bloc_demo/todo_list/cubit/todo_cubit.dart';
import 'package:bloc_demo/todo_list/todo_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const TodoMyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterCubit()),
        BlocProvider(create: (_) => CounterBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class TodoMyApp extends StatelessWidget {
  const TodoMyApp({super.key});

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


