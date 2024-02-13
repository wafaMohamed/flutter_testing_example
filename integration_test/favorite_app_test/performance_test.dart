import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/main.dart' as app;
import 'package:integration_test/integration_test.dart';

void main() {
  group(
    'App Performance Testing',
    () {
      final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
      binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;
      testWidgets('Scrolling Test', (widgetTester) async {
        await widgetTester.pumpWidget(app.MyApp());
        final listFinder = find.byType(ListView);
        // Tracing
        await binding.traceAction(reportKey: 'scroll_key_summary', () async {
          await widgetTester.fling(listFinder, Offset(0, -500), 10000);
          await widgetTester.pumpAndSettle();
          await widgetTester.fling(listFinder, Offset(0, 500), 10000);
          await widgetTester.pumpAndSettle();
        });
      });
    },
  );
}
//  traceAction() function records the actions and generates a timeline summary.
//  Setting framePolicy to fullyLive is good for testing animated code.
