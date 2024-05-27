import 'package:flutter/foundation.dart';
import '../models/example_model.dart';

class ExampleController {
  final ExampleModel model = ExampleModel();
  ValueNotifier<int> counterNotifier = ValueNotifier<int>(0);

  void incrementCounter() {
    model.incrementCounter();
    counterNotifier.value = model.counter;
  }
}
