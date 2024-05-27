import '../domain/example_domain.dart';

class ExampleRepository {
  final ExampleEntity _entity = ExampleEntity();

  int get counter => _entity.counter;

  void incrementCounter() {
    _entity.incrementCounter();
  }
}
