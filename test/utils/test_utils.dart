import 'package:flutter/services.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:goldentest/config/theme.dart';

class TestUtils {
  static WidgetWrapper defaultAppWrapper() =>
      materialAppWrapper(theme: MyAppTheme.defaultTheme());

  static Future<void> loadFonts(
      {AssetBundle? rootBundle,
      Map<String, List<String>> customFonts = const {}}) async {
    if (customFonts.isNotEmpty && rootBundle != null) {
      final loaders = customFonts.entries
          .map((e) => e.value.fold<FontLoader>(
              FontLoader(e.key),
              (previousValue, element) =>
                  previousValue..addFont(rootBundle.load(element))))
          .toList();

      for (final loader in loaders) {
        await loader.load();
      }
    } else {
      await loadAppFonts();
    }
  }
}
