import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:goldentest/main.dart';

import 'utils/test_utils.dart';

void main() {
  setUpAll(() async {
    await TestUtils.loadFonts();
  });

  testGoldens("test main page increment", (WidgetTester tester) async {
    final builder = DeviceBuilder()
      // ..overrideDevicesForAllScenarios(devices: [Device(size: size, name: name)])
      ..addScenario(name: 'initial main page', widget: const MyApp())
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
        },
      );

    await tester.pumpDeviceBuilder(builder);
    await screenMatchesGolden(tester, 'main_page');
  });

  // testGoldens('simple widget should keep theme color',
  //     (WidgetTester tester) async {
  //   final builder = GoldenBuilder.column()
  //     ..addScenario('simple widget', const SimpleWidget())
  //     ..addTextScaleScenario('simple widget font size 2x', const SimpleWidget(),
  //         textScaleFactor: 2);
  //
  //   await tester.pumpWidgetBuilder(builder.build(),
  //       wrapper: TestUtils.defaultAppWrapper());
  //   await screenMatchesGolden(tester, 'simple_widget');
  // });
}
