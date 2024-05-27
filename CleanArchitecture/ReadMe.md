### 6. Clean Architecture

**Overview:**

- Separates into layers: Domain, Data, Presentation.
- Focuses on SOLID principles and testability.
- Reduces dependencies and improves maintainability.

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
