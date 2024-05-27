import 'package:flutter/material.dart';
import 'controllers/example_controller.dart';
import 'views/example_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ExampleController controller = ExampleController();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExampleView(controller: controller),
    );
  }
}
