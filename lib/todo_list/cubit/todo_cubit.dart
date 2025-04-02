import 'package:bloc_demo/todo_list/model/todo_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(String title){
    if(title.isEmpty){
      addError("Title Cannot Be Empty");
    }
    final todo = Todo(taskName: title, createdAt: DateTime.now());
    emit([...state,todo]);
  }

  @override
  void onChange(Change<List<Todo>> change) {
    super.onChange(change);
    print("TODO CUBIT => $change}");
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print("TODO CUBIT => Error:- $error \nStackTrace:- $stackTrace}");
  }

}
