import 'package:flutter/material.dart';
import '../models/example_model.dart';
import '../presenters/example_presenter.dart';

class ExampleView extends StatefulWidget {
  const ExampleView({super.key});

  @override
  ExampleViewState createState() => ExampleViewState();
}

class ExampleViewState extends State<ExampleView> {
  late ExamplePresenter presenter;

  @override
  void initState() {
    super.initState();
    presenter = ExamplePresenter(ExampleModel());
  }

  @override
  void dispose() {
    presenter.counterNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MVP Example')),
      body: Center(
        child: ValueListenableBuilder<int>(
          valueListenable: presenter.counterNotifier,
          builder: (context, value, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('You have pushed the button this many times:'),
                Text(
                  '$value',
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
    );
  }
}
