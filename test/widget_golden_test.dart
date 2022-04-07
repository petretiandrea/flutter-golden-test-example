import 'package:flutter_test/flutter_test.dart';
import 'package:goldentest/main.dart';

void main() {
  testWidgets("test golend", (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await expectLater(find.byType(MyApp), matchesGoldenFile('main.png'));
  });
}
