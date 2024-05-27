import 'dart:async';
import '../actions/example_actions.dart';

class ExampleStore {
  int _counter = 0;
  final _controller = StreamController<int>();

  Stream<int> get counter => _controller.stream;

  void dispatch(action) {
    if (action is IncrementAction) {
      _counter++;
      _controller.sink.add(_counter);
    }
  }

  void dispose() {
    _controller.close();
  }
}
