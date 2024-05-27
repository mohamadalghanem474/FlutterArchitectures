import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../presenters/example_presenter.dart';

class ExampleView extends StatelessWidget {
  final ExamplePresenter presenter;

  const ExampleView({super.key, required this.presenter});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ExamplePresenter>(
      create: (_) => presenter,
      child: Scaffold(
        appBar: AppBar(title: const Text('VIPER Example')),
        body: Center(
          child: Consumer<ExamplePresenter>(
            builder: (context, presenter, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('You have pushed the button this many times:'),
                  Text(
                    '${presenter.counter}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: presenter.incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
