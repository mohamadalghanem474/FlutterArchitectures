### 9. MVP (Model-View-Presenter)

**Overview:**

- Focuses on separating concerns like MVC.
- Presenter mediates between model and view.
- Improves testability and code reusability.

```lib/
├── core/
│   └── utils.dart                # Contains utility functions, constants, etc.
├── models/
│   └── example_model.dart        # Contains data models and business logic.
├── views/
│   ├── example_view.dart         # Renders UI elements based on the Presenter.
│   └── components/
│       └── example_component.dart # Reusable UI components.
├── presenters/
│   └── example_presenter.dart    # Mediates between view and model, handles logic.
└── main.dart                      # Entry point of the application.

```
