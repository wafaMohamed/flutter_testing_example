//? This example creates a Flutter app with a simple button.
//? When you tap the button, the message displayed on the screen will change.
import 'package:flutter/material.dart';

class InteractiveShowcasePage extends StatefulWidget {
  const InteractiveShowcasePage({super.key});

  @override
  _InteractiveShowcasePageState createState() =>
      _InteractiveShowcasePageState();
}

class _InteractiveShowcasePageState extends State<InteractiveShowcasePage> {
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
