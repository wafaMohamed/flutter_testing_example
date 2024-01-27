//? This example creates a Flutter app with a simple button.
//? When you tap the button, the message displayed on the screen will change.
import 'package:flutter/material.dart';

class IncrementFunctionPage extends StatefulWidget {
  const IncrementFunctionPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _IncrementFunctionPageState createState() => _IncrementFunctionPageState();
}

class _IncrementFunctionPageState extends State<IncrementFunctionPage> {
  List<String> listOfStrings = [
    'Hello',
    'testing',
    'widget testing',
    'integration testing',
    'unit testing',
    'Flutter',
    'Community',
    'Welcome',
    'Dart',
    'Programming',
  ];
  int currentIndex = 0;

  void incrementFunction() {
    // Increment each string in the list
    setState(() {
      currentIndex = (currentIndex + 1) % listOfStrings.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        centerTitle: true,
        title: const Text('Flutter Testing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              listOfStrings[currentIndex],
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: incrementFunction,
              child: const Text('Tap Me!'),
            ),
          ],
        ),
      ),
    );
  }
}
