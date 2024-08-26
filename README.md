# get_weather

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter  clean architecture weather application.

## Project Structure

The project follows the Clean Architecture principles, which separates the application into three main layers:

1. **Presentation Layer**: This layer is responsible for the user interface and user interactions. It uses the `flutter_bloc` package for state management.
2. **Core Layer**: This layer defines the business logic and core entities of the application. It uses the `dartz` package for functional programming and the `freezed` package for data classes,.
3. **Data Layer**: This layer is responsible for data retrieval and storage. It uses the `dio` package for network requests,  `built_value`  for immutable classes, and the `hydrated_bloc` package for state persistence.

The project also utilizes the `get_it` and `injectable` packages for dependency injection, which helps to decouple the different layers of the application.

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
