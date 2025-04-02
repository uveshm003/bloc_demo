import 'package:bloc_demo/todo_list/model/todo_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(String title){
    final todo = Todo(taskName: title, createdAt: DateTime.now());
    state.add(todo);
    emit(state);
  }
}
