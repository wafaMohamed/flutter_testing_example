import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/main.dart' as app;
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group("end to end test", () {
    testWidgets("increment function test", (WidgetTester tester) async {
      app.main();

      // Wait for the app to finish its initial frame
      await tester.pumpAndSettle();

      // Find the initial text
      final initialTextFinder = find.text('Hello');
      expect(initialTextFinder, findsOneWidget);

      // Find the elevated button and tap it
      final elevatedButtonFinder = find.byType(ElevatedButton);
      await tester.tap(elevatedButtonFinder);

      // Wait for the animation to complete
      await tester.pumpAndSettle();

      // Check if the text has changed
      final updatedTextFinder = find.text('testing');
      expect(updatedTextFinder, findsOneWidget);
    });

    // testWidgets("multiple taps test", (WidgetTester tester) async {
    //   app.main();
    //
    //   // Wait for the app to finish its initial frame
    //   await tester.pumpAndSettle();
    //
    //   // Find the initial text
    //   final initialTextFinder = find.text('Hello');
    //   expect(initialTextFinder, findsOneWidget);
    //
    //   // Find the elevated button and tap it multiple times
    //   final elevatedButtonFinder = find.byType(ElevatedButton);
    //   await tester.tap(elevatedButtonFinder);
    //   await tester.pumpAndSettle();
    //   await tester.tap(elevatedButtonFinder);
    //   await tester.pumpAndSettle();
    //   await tester.tap(elevatedButtonFinder);
    //
    //   // Wait for the animation to complete
    //   await tester.pumpAndSettle();
    //
    //   // Check if the text has changed to the expected value after multiple taps
    //   final updatedTextFinder = find.text('Flutter');
    //   expect(updatedTextFinder, findsOneWidget);
    // });
  });
}
