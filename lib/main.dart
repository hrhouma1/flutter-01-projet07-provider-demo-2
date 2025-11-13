import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Step 2: Wrap your app with ChangeNotifierProvider
    // This makes CounterModel available to all widgets below it
    return ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: MaterialApp(
        title: 'Provider Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter Value:',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            
            // Step 3: Use Consumer to listen to changes
            // The widget rebuilds only when CounterModel notifies listeners
            Consumer<CounterModel>(
              builder: (context, counter, child) {
                return Text(
                  '${counter.count}',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                );
              },
            ),
            
            SizedBox(height: 40),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Decrement button
                ElevatedButton(
                  onPressed: () {
                    // Step 4: Access the model using Provider.of or context.read
                    // Use listen: false when you don't need to rebuild this widget
                    Provider.of<CounterModel>(context, listen: false).decrement();
                  },
                  child: Icon(Icons.remove),
                ),
                
                SizedBox(width: 20),
                
                // Increment button
                ElevatedButton(
                  onPressed: () {
                    // Alternative way: context.read<CounterModel>()
                    context.read<CounterModel>().increment();
                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),
            
            SizedBox(height: 20),
            
            // Reset button
            ElevatedButton(
              onPressed: () {
                context.read<CounterModel>().reset();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Text('Reset'),
            ),
            
            SizedBox(height: 40),
            
            // Another widget demonstrating Provider access
            AnotherWidget(),
          ],
        ),
      ),
    );
  }
}

// This widget demonstrates that any widget in the tree can access the Provider
class AnotherWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Step 5: Use context.watch to listen to changes
    // This is the simplest way to access and listen to a Provider
    final counter = context.watch<CounterModel>();
    
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        'Count from another widget: ${counter.count}',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

