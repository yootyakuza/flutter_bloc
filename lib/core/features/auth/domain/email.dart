import 'package:bloc_clean_architecture/core/utils/constain.dart';
import 'package:formz/formz.dart';

enum EmailValidationError { invalid }

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure([String value = '']) : super.pure(value);
  const Email.dirty([String value = '']) : super.dirty(value);

  @override
  EmailValidationError? validator(String? value) {
    return emailRegex.hasMatch(value ?? '')
        ? null
        : EmailValidationError.invalid;
  }
}
