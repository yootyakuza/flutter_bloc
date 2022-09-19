import 'package:bloc_clean_architecture/core/features/auth/presentations/bloc/auth_bloc.dart';
import 'package:bloc_clean_architecture/core/features/auth/presentations/bloc/auth_event.dart';
import 'package:bloc_clean_architecture/core/features/auth/presentations/bloc/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return ElevatedButton(
          onPressed: state.status.isValidated
              ? () => context.read<AuthBloc>().add(FormSubmitted())
              : null,
          child: const Text('Auth Submit'),
        );
      },
    );
  }
}
