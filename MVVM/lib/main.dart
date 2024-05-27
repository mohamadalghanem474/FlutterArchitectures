import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodels/example_viewmodel.dart';
import 'views/example_view.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ExampleViewModel(),
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
