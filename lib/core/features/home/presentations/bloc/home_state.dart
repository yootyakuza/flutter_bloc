import 'package:bloc_clean_architecture/core/features/home/domain/email.dart';
import 'package:bloc_clean_architecture/core/features/home/domain/password.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

class HomeState extends Equatable {
  const HomeState({
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.status = FormzStatus.pure,
  });

  final Email email;
  final Password password;
  final FormzStatus status;

  HomeState copyWith({
    Email? email,
    Password? password,
    FormzStatus? status,
  }) {
    return HomeState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
    );
  }

  @override
  List get props => [email, password, status];
}
