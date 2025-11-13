import 'package:flutter/foundation.dart';

// Step 1: Create a model class that extends ChangeNotifier
// This class holds the data and notifies listeners when data changes
class CounterModel extends ChangeNotifier {
  int _count = 0;

  // Getter to access the count value
  int get count => _count;

  // Method to increment the counter
  void increment() {
    _count++;
    // This notifies all listeners that the data has changed
    notifyListeners();
  }

  // Method to decrement the counter
  void decrement() {
    _count--;
    notifyListeners();
  }

  // Method to reset the counter
  void reset() {
    _count = 0;
    notifyListeners();
  }
}

