import 'dart:async';
import '../models/example_model.dart';

class ExampleController {
  final ExampleModel _model = ExampleModel();
  final _counterController = StreamController<int>();

  Stream<int> get counter => _counterController.stream;

  void incrementCounter() {
    _model.incrementCounter();
    _counterController.sink.add(_model.counter);
  }

  void dispose() {
    _counterController.close();
  }
}
