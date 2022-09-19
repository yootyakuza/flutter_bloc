import 'package:bloc_clean_architecture/core/features/auth/presentations/bloc/auth_bloc.dart';
import 'package:bloc_clean_architecture/core/features/home/presentations/bloc/home_bloc.dart';
import 'package:bloc_clean_architecture/core/features/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MultiBlocProvider(providers: [
      BlocProvider(create: (_) => AuthBloc()),
      BlocProvider(create: (_) => HomeBloc())
    ], child: const App()));

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: const Text('Flutter Clean Architecture')),
          body: const Welcome()),
    );
  }
}
