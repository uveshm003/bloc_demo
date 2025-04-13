import 'package:bloc_demo/counter_demo/counter_bloc.dart';
import 'package:bloc_demo/counter_demo/counter_cubit.dart';
import 'package:bloc_demo/counter_demo/home_page.dart';
import 'package:bloc_demo/todo_list/my_todo_list_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyTodoListApp());
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
