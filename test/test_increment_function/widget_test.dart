import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/view/pages/increment_function_page_example/increment_function.dart';

void main() {
  testWidgets("Test Widget for increment text", (WidgetTester tester) async {
    // Build our widget inside a MaterialApp and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        home: IncrementFunctionPage(),
      ),
    );

    // * Verify that the initial text is displayed.
    final finder = find.text("Hello");
    expect(finder, findsOneWidget);

    // * Tap the button and trigger a frame.
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump(); // after tap we need to wait for execution of one frame

    // * Verify that the text has changed.
    expect(finder, findsNothing);
    // after the previous  tapped it will be removed and find new text
    final finderNextWord = find.text("testing");
    expect(finderNextWord, findsOneWidget);
  });
}
