import 'package:bloc_demo/login_form_demo/bloc/bloc/auth_event.dart';
import 'package:bloc_demo/login_form_demo/bloc/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthLoginRequested>((event, emit) async {
      final email = event.email;
      final password = event.password;
      if (password.length < 6) {
        return emit(
          AuthFailure(errorMessage: 'Password must be 6 Character Long'),
        );
      }

      Future.delayed(Duration(seconds: 1), () {
        return emit(AuthSuccess(uid: '$email$password'));
      });
    });
  }
}
