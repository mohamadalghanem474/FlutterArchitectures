import 'package:flutter/foundation.dart';
import '../data/example_repository.dart';

class ExampleController extends ChangeNotifier {
  final ExampleRepository _repository = ExampleRepository();

  int get counter => _repository.counter;

  void incrementCounter() {
    _repository.incrementCounter();
    notifyListeners();
  }
}
