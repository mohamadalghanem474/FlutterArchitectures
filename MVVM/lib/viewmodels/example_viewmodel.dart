import 'package:flutter/foundation.dart';
import '../models/example_model.dart';

class ExampleViewModel extends ChangeNotifier {
  final ExampleModel _model = ExampleModel();

  int get counter => _model.counter;

  void incrementCounter() {
    _model.incrementCounter();
    notifyListeners();
  }
}
