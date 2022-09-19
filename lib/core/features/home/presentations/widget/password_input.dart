import 'package:bloc_clean_architecture/core/features/home/presentations/bloc/home_bloc.dart';
import 'package:bloc_clean_architecture/core/features/home/presentations/bloc/home_event.dart';
import 'package:bloc_clean_architecture/core/features/home/presentations/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key, required this.focusNode}) : super(key: key);

  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: state.password.value,
          focusNode: focusNode,
          decoration: InputDecoration(
            icon: const Icon(Icons.lock),
            helperText:
                '''Password should be at least 8 characters with at least one letter and number''',
            helperMaxLines: 2,
            labelText: 'Password',
            errorMaxLines: 2,
            errorText: state.password.invalid
                ? '''Password must be at least 8 characters and contain at least one letter and number'''
                : null,
          ),
          obscureText: true,
          textInputAction: TextInputAction.done,
          onChanged: (value) {
            context.read<HomeBloc>().add(PasswordChanged(password: value));
          },
        );
      },
    );
  }
}