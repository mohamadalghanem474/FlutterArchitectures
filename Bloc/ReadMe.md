### 3. Bloc (Business Logic Component)

**Overview:**

- Manages state using streams and sinks.
- Separates presentation from business logic.
- Reacts to state changes with StreamBuilder or StreamSubscription.

```
lib/
├── core/
│   └── utils.dart                # Contains utility functions, constants, etc.
├── bloc/
│   ├── example_bloc.dart         # Manages state using streams and sinks.
│   ├── example_event.dart        # Defines events that can trigger state changes.
│   └── example_state.dart        # Represents different states of the UI.
├── views/
│   ├── example_view.dart         # Reacts to state changes using BlocBuilder or StreamSubscription.
│   └── components/
│       └── example_component.dart # Reusable UI components.
└── main.dart                      # Entry point of the application.

```
