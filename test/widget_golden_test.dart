import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:goldentest/main.dart';

import 'test_utils.dart';

void main() {
  setUpAll(() async {
    await TestUtils.loadFonts();
  });

  testGoldens("test main page increment", (WidgetTester tester) async {
    final builder = DeviceBuilder()
      ..addScenario(name: 'Main Page', widget: const MyApp())
      ..addScenario(
          name: 'Incremented by 1',
          widget: const MyApp(),
          onCreate: (key) async {
            final finder = find.descendant(
              of: find.byKey(key),
              matching: find.byIcon(Icons.add),
            );
            expect(finder, findsOneWidget);
            await tester.tap(finder);
          });

    await tester.pumpDeviceBuilder(builder,
        wrapper: TestUtils.defaultAppWrapper());
    await screenMatchesGolden(tester, 'main_page');
  });
}
