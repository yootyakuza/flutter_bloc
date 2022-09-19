import 'package:bloc_clean_architecture/core/features/auth/domain/email.dart';
import 'package:bloc_clean_architecture/core/features/auth/domain/password.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

class AuthState extends Equatable {
  const AuthState({
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.status = FormzStatus.pure,
  });

  final Email email;
  final Password password;
  final FormzStatus status;

  AuthState copyWith({
    Email? email,
    Password? password,
    FormzStatus? status,
  }) {
    return AuthState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
    );
  }

  @override
  List get props => [email, password, status];
}
