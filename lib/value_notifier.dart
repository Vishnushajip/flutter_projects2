import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final ValueNotifier<int> counter = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Value Notifier Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ValueListenableBuilder<int>(
              valueListenable: counter,
              builder: (context, value, _) {
                return Text(
                  'Counter: $value',
                  style: TextStyle(fontSize: 20),
                );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                counter.value++;
              },
              child: Text('Increment'),
            ),
          ],
        ),
      ),
      // Using WillPopScope to detect back button press
      // and decrement the counter
      bottomNavigationBar: WillPopScope(
        onWillPop: () async {
          counter.value--; // Decrement counter when back button is pressed
          return true;
        },
        child: Container(
          height: 0, // Hide the bottom navigation bar
        ),
      ),
    );
  }
}
