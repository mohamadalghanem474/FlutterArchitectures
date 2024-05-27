### 2. MVVM (Model-View-ViewModel)

**Overview:**

- **Model:** Represents data entities and logic.
- **View:** Renders UI elements and binds to ViewModel.
- **ViewModel:** Mediates between view and model, exposes data.

```
lib/
├── core/
│   └── utils.dart                # Contains utility functions, constants, etc.
├── models/
│   └── example_model.dart        # Contains data models and business logic.
├── views/
│   ├── example_view.dart         # Renders UI elements based on the ViewModel.
│   └── components/
│       └── example_component.dart # Reusable UI components.
├── viewmodels/
│   └── example_viewmodel.dart    # Mediates between view and model, exposes data.
└── main.dart                      # Entry point of the application.

```
