# Architectural Patterns

## MVC (Model-View-Controller)

**Overview:**

- **Model:** Manages data and business logic.
- **View:** Displays UI elements based on the model state.
- **Controller:** Mediates between model and view, handles user input.

### Diagram

```
lib/
├── core/
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

## MVVM (Model-View-ViewModel)

**Overview:**

- **Model:** Represents data entities and logic.
- **View:** Renders UI elements and binds to ViewModel.
- **ViewModel:** Mediates between view and model, exposes data.

### Diagram

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

## Bloc (Business Logic Component)

**Overview:**

- Manages state using streams and sinks.
- Separates presentation from business logic.
- Reacts to state changes with StreamBuilder or StreamSubscription.

### Diagram

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

## Redux

**Overview:**

- Implements unidirectional data flow.
- Centralizes state management in a single store.
- Uses reducers to update state based on dispatched actions.

```lib/
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

## Provider (ChangeNotifierProvider, Riverpod, etc.)

**Overview:**

- Implements dependency injection and state management.
- Listens and reacts to changes in data across components.
- Supports different providers for various use cases.

### Diagram

```
lib/
├── core/
│   └── utils.dart                # Contains utility functions, constants, etc.
├── providers/
│   └── example_provider.dart     # Implements dependency injection and state management.
├── views/
│   ├── example_view.dart         # Listens and reacts to changes using Provider.
│   └── components/
│       └── example_component.dart # Reusable UI components.
└── main.dart                      # Entry point of the application.

```

## Clean Architecture

**Overview:**

- Separates into layers: Domain, Data, Presentation.
- Focuses on SOLID principles and testability.
- Reduces dependencies and improves maintainability.

### Diagram

```
lib/
├── core/
│   └── utils.dart                # Contains utility functions, constants, etc.
├── domain/
│   └── example_domain.dart       # Defines domain entities and use cases.
├── data/
│   ├── example_repository.dart   # Implements data sources and repository pattern.
│   └── data_sources/
│       └── example_data_source.dart # Retrieves data from external sources.
├── presentation/
│   ├── example_view.dart         # Implements presentation layer using UI components.
│   └── example_controller.dart   # Orchestrates data flow between layers.
└── main.dart                      # Entry point of the application.

```

## Flux

**Overview:**

- Similar to Redux, with unidirectional data flow.
- Uses stores to manage state and emit change events.
- Provides predictability and maintainability for complex apps.

### Diagram

```
lib/
├── core/
│   └── utils.dart                # Contains utility functions, constants, etc.
├── stores/
│   └── example_store.dart        # Manages application state and emits change events.
├── actions/
│   └── example_actions.dart      # Defines actions that can trigger state changes.
├── views/
│   ├── example_view.dart         # Reacts to state changes using StoreListener.
│   └── components/
│       └── example_component.dart # Reusable UI components.
└── main.dart                      # Entry point of the application.

```

## VIPER (View, Interactor, Presenter, Entity, Router)

**Overview:**

- Structured for larger applications.
- Modularizes and separates concerns clearly.
- Promotes scalability and testability with distinct roles.

### Diagram

```
lib/
├── core/
│   └── utils.dart                # Contains utility functions, constants, etc.
├── views/
│   ├── example_view.dart         # Renders UI elements based on Presenter and interacts with Router.
│   └── components/
│       └── example_component.dart # Reusable UI components.
├── presenters/
│   └── example_presenter.dart    # Mediates between view and interactor, handles logic.
├── interactors/
│   └── example_interactor.dart   # Implements business logic and interacts with entities.
├── entities/
│   └── example_entity.dart       # Represents data entities and business rules.
├── routers/
│   └── example_router.dart       # Handles navigation and routing logic.
└── main.dart                      # Entry point of the application.

```

## MVP (Model-View-Presenter)

**Overview:**

- Focuses on separating concerns like MVC.
- Presenter mediates between model and view.
- Improves testability and code reusability.

### Diagram

```
lib/
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

### Dart's Built-in Observables

**Overview:**

- Uses Dart's Stream and StreamController.
- Implements observer patterns for reactive programming.
- Lightweight for simple state management and events.

### Diagram

```
lib/
├── core/
│   └── utils.dart                # Contains utility functions, constants, etc.
├── models/
│   └── example_model.dart        # Contains data models and business logic.
├── views/
│   ├── example_view.dart         # Reacts to changes in model using StreamBuilder.
│   └── components/
│       └── example_component.dart # Reusable UI components.
├── controllers/
│   └── example_controller.dart   # Handles user interactions and data flow.
└── main.dart                      # Entry point of the application.

```

# License

This project is licensed under the [MIT License](LICENSE).
