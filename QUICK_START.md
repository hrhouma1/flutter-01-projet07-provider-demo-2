# Quick Start Guide

## Prerequisites

Make sure you have Flutter installed. Check with:
```bash
flutter --version
```

## Setup and Run

1. Open terminal in the project folder

2. Get dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## What You'll See

A simple counter app with:
- A number display that updates automatically
- Plus button to increment
- Minus button to decrement
- Reset button to set back to zero
- Another widget showing the same count (demonstrates data sharing)

## Try This

1. Press the plus button - notice how BOTH text displays update
2. Press the minus button - both displays update again
3. Press reset - everything goes back to zero

This demonstrates how Provider shares data between different widgets without passing it through constructors.

## Files to Study

Study the files in this order:

1. **lib/counter_model.dart** - The data and logic
2. **lib/main.dart** - How to use Provider in UI
3. **CONCEPTS.md** - Detailed explanation
4. **README.md** - Complete reference

## Next Steps

Try modifying the app:
- Add a multiply or divide button
- Add a second counter
- Display if the number is even or odd
- Add a TextField to set the counter to a specific value

