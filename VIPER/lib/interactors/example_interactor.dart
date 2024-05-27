import '../entities/example_entity.dart';

class ExampleInteractor {
  final ExampleEntity _entity = ExampleEntity();

  int get counter => _entity.counter;

  void incrementCounter() {
    _entity.incrementCounter();
  }
}
