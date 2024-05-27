import 'package:flutter/material.dart';
import 'routers/example_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExampleRouter().buildExampleView(),
    );
  }
}
