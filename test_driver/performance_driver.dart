// Capture the performance timeline results by driver

import 'package:flutter_driver/flutter_driver.dart' as driver;
import 'package:integration_test/integration_test_driver.dart';

Future<void> main() async {
  return integrationDriver(
    responseDataCallback: (Map<String, dynamic>? data) async {
      if (data != null) {
        final timeline = driver.Timeline.fromJson(
            data['scroll_key_summary'] as Map<String, dynamic>);
        // summarize the time line -> pass the timeline from json data -  driver to timeline summary
        final summary = driver.TimelineSummary.summarize(timeline);
        // write it
        await summary.writeTimelineToFile(
          'scroll_key_summary',
          includeSummary: true,
          pretty: true,
        );
      }
    },
  );
}
