import 'package:bloc/bloc.dart';
import 'package:bloc_clean_architecture/counter_observer.dart';
import 'package:flutter/widgets.dart';

import 'app.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(const CounterApp());
}
