import 'package:flutter/material.dart';
import 'stores/example_store.dart';
import 'views/example_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ExampleStore store = ExampleStore();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExampleView(store: store),
    );
  }
}
