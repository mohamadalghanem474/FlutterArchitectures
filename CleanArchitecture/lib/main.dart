import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'presentation/example_controller.dart';
import 'presentation/example_view.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ExampleController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExampleView(),
    );
  }
}
