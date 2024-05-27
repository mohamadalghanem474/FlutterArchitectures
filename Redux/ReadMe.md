### 4. Redux

**Overview:**

- Implements unidirectional data flow.
- Centralizes state management in a single store.
- Uses reducers to update state based on dispatched actions.

```
├── core/
│   └── utils.dart                # Contains utility functions, constants, etc.
├── redux/
│   ├── actions/
│   │   └── example_actions.dart  # Defines actions that trigger state changes.
│   ├── reducers/
│   │   └── example_reducer.dart  # Updates state based on dispatched actions.
│   └── store/
│       └── example_store.dart    # Centralizes state management in a single store.
├── views/
│   ├── example_view.dart         # Reacts to state changes using StoreConnector.
│   └── components/
│       └── example_component.dart # Reusable UI components.
└── main.dart                      # Entry point of the application.

```
