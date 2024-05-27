import '../presenters/example_presenter.dart';
import '../views/example_view.dart';

class ExampleRouter {
  ExampleView buildExampleView() {
    final presenter = ExamplePresenter();
    return ExampleView(presenter: presenter);
  }
}
