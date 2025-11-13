# Provider Demo

A simple Flutter application demonstrating how to use Provider for state management.

## What is Provider?

Provider is a state management solution for Flutter. It allows you to:
- Share data across your widget tree
- Rebuild only the widgets that need to update
- Separate business logic from UI

## How to Use Provider (5 Steps)

### Step 1: Create a Model Class
Create a class that extends `ChangeNotifier`. This class holds your data and business logic.

```dart
class CounterModel extends ChangeNotifier {
  int _count = 0;
  int get count => _count;
  
  void increment() {
    _count++;
    notifyListeners(); // Notify all listeners about the change
  }
}
```

### Step 2: Provide the Model
Wrap your app with `ChangeNotifierProvider` to make the model available.

```dart
ChangeNotifierProvider(
  create: (context) => CounterModel(),
  child: MyApp(),
)
```

### Step 3: Listen to Changes with Consumer
Use `Consumer` to rebuild widgets when data changes.

```dart
Consumer<CounterModel>(
  builder: (context, counter, child) {
    return Text('${counter.count}');
  },
)
```

### Step 4: Access Without Listening
Use `Provider.of(context, listen: false)` or `context.read()` when you don't need to rebuild.

```dart
Provider.of<CounterModel>(context, listen: false).increment();
// or
context.read<CounterModel>().increment();
```

### Step 5: Watch for Changes
Use `context.watch()` as a simple way to access and listen.

```dart
final counter = context.watch<CounterModel>();
```

## Running the App

1. Install dependencies:
```bash
flutter pub get
```

2. Run the app:
```bash
flutter run
```

## Key Concepts

- **ChangeNotifier**: Base class for models that notify listeners
- **notifyListeners()**: Method to trigger UI updates
- **ChangeNotifierProvider**: Widget that provides the model to the tree
- **Consumer**: Widget that rebuilds when data changes
- **context.read()**: Access model without listening (for actions)
- **context.watch()**: Access model with listening (for reading values)

## Project Structure

```
lib/
  ├── main.dart           # Main app and UI
  └── counter_model.dart  # Model class with business logic
```

## Learn More

- Provider Package: https://pub.dev/packages/provider
- Flutter State Management: https://flutter.dev/docs/development/data-and-backend/state-mgmt

