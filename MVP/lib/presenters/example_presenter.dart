import 'package:flutter/material.dart';
import '../models/example_model.dart';

class ExamplePresenter {
  final ExampleModel model;
  final ValueNotifier<int> counterNotifier = ValueNotifier<int>(0);

  ExamplePresenter(this.model);

  void incrementCounter() {
    model.incrementCounter();
    counterNotifier.value = model.counter;
  }
}
