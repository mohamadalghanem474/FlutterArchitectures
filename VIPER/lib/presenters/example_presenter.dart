import 'package:flutter/foundation.dart';
import '../interactors/example_interactor.dart';

class ExamplePresenter extends ChangeNotifier {
  final ExampleInteractor _interactor = ExampleInteractor();

  int get counter => _interactor.counter;

  void incrementCounter() {
    _interactor.incrementCounter();
    notifyListeners();
  }
}
