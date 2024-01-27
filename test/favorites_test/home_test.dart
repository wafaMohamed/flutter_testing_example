import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/models/favorites.dart';
import 'package:flutter_testing/view/pages/codelab_flutter/home.dart';
import 'package:provider/provider.dart';
// Widget Testing

void main() {
  group('Widget Testing For Home Page', () {
    // Test 1
    testWidgets('Testing if ListView shows up', (tester) async {
      await tester.pumpWidget(simulateHomeScreen());
      expect(find.byType(ListView), findsOneWidget);
    });
    // Test 2
    testWidgets('Scroll Testing', (WidgetTester widgetTester) async {
      await widgetTester.pumpWidget(simulateHomeScreen());
      expect(find.text('Item: 0'), findsOneWidget);
      await widgetTester.fling(find.byType(ListView), Offset(0, -200), 3000);
      await widgetTester.pumpAndSettle();
      expect(find.text('Item: 0'), findsNothing);
    });
    // Test 3
    testWidgets('Find Fav Icon', (widgetTester) async {
      await widgetTester.pumpWidget(simulateHomeScreen());
      expect(find.byIcon(Icons.favorite), findsNothing);
      await widgetTester.tap(find.byIcon(Icons.favorite_border).first);
      await widgetTester.pumpAndSettle(Duration(seconds: 1));
      expect(find.text('Added to favorites.'), findsOneWidget);
      expect(find.byIcon(Icons.favorite), findsWidgets);
      await widgetTester.tap(find.byIcon(Icons.favorite).first);
      await widgetTester.pumpAndSettle(const Duration(seconds: 1));
      expect(find.text('Removed from favorites.'), findsOneWidget);
      expect(find.byIcon(Icons.favorite), findsNothing);
    });
  });
}

Widget simulateHomeScreen() {
  return ChangeNotifierProvider<FavoritesProvider>(
    create: (context) => FavoritesProvider(),
    child: MaterialApp(
      home: HomePage(),
    ),
  );
}
