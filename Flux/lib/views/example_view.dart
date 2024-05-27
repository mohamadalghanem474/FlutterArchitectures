import 'package:flutter/material.dart';
import '../stores/example_store.dart';
import '../actions/example_actions.dart';

class ExampleView extends StatelessWidget {
  final ExampleStore store;

  const ExampleView({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flux Example')),
      body: Center(
        child: StreamBuilder<int>(
          stream: store.counter,
          initialData: 0,
          builder: (context, snapshot) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('You have pushed the button this many times:'),
                Text(
                  '${snapshot.data}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          store.dispatch(IncrementAction());
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
