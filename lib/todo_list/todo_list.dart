import 'package:bloc_demo/todo_list/cubit/todo_cubit.dart';
import 'package:bloc_demo/todo_list/cubit/todo_cubit.dart';
import 'package:bloc_demo/todo_list/model/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: BlocBuilder<TodoCubit, Todo>(
        builder: (context, state) {
          return ListView.builder(itemBuilder:);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add-todo');
        },
        tooltip: 'Add Todo',
        child: const Icon(Icons.add),
      ),
    );
  }
}