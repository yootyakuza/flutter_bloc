import 'package:bloc_clean_architecture/view/my_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/form/my_form_bloc.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Form Validation')),
        body: BlocProvider(
          create: (_) => MyFormBloc(),
          child: const MyForm(),
        ),
      ),
    );
  }
}
