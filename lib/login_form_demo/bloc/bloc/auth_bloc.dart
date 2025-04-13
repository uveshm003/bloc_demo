import 'package:bloc_demo/login_form_demo/bloc/bloc/auth_event.dart';
import 'package:bloc_demo/login_form_demo/bloc/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {});
  }
}
