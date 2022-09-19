import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List get props => [];
}

class EmailChanged extends HomeEvent {
  const EmailChanged({required this.email});

  final String email;

  @override
  List get props => [email];
}

class EmailUnfocused extends HomeEvent {}

class PasswordChanged extends HomeEvent {
  const PasswordChanged({required this.password});

  final String password;

  @override
  List get props => [password];
}

class PasswordUnfocused extends HomeEvent {}

class FormSubmitted extends HomeEvent {}
