### 1. MVC (Model-View-Controller)

**Overview:**

- **Model:** Manages data and business logic.
- **View:** Displays UI elements based on the model state.
- **Controller:** Mediates between model and view, handles user input.

```
lib/
├── core/                         # Core functionality or utilities.
│   └── utils.dart                # Contains utility functions, constants, etc.
├── models/
│   └── example_model.dart        # Contains data models and business logic.
├── views/
│   ├── example_view.dart         # Renders UI elements based on the model.
│   └── components/
│       └── example_component.dart # Reusable UI components.
├── controllers/
│   └── example_controller.dart   # Handles user interactions and data flow.
└── main.dart                      # Entry point of the application.

```
