import 'package:flutter_bloc/flutter_bloc.dart';

/// You will need to manage all the cases if you use switch
sealed class CounterEvent {}

/// Final So that these cannot be Extended or Implemented outside of this file.

final class CounterIncremented extends CounterEvent {}

final class CounterDecremented extends CounterEvent {}

final class MyClass extends CounterIncremented{}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncremented>((event, emit) {
      emit(state + 1);
    });

    on<CounterDecremented>((event, emit) {
      if(state == 0){
        return;
      }
      emit(state - 1);
    });
  }
}
