import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:goldentest/domain/entity/cart.dart';
import 'package:goldentest/domain/entity/product.dart';
import 'package:goldentest/presentation/bloc/cart_cubit.dart';
import 'package:goldentest/presentation/views/cart_view.dart';

import 'utils/test_utils.dart';

getCartView(CartCubit cubit) {
  return BlocProvider.value(
    value: cubit,
    child: const CartView(),
  );
}

void main() {
  const int seed = 1234;

  setUpAll(() async {
    await TestUtils.loadFonts();
  });

  testGoldens("given a cart page when tap 1 time then add 1 product",
      (WidgetTester tester) async {
    // mock cubit
    final builder = DeviceBuilder()
      ..addScenario(
        name: 'tap 1 time',
        widget: Builder(
          builder: (_) => getCartView(CartCubit(seed: seed)..load()),
        ),
        onCreate: (key) async {
          final finder = findAddButton(key);
          await tester.tap(finder);
        },
      );

    await tester.pumpDeviceBuilder(builder);
    await screenMatchesGolden(tester, 'cart_view_add_1');
  });

  testGoldens('given a cart page when tap 15 times then add 15 products',
      (WidgetTester tester) async {
    final builder = DeviceBuilder()
      ..addScenario(
          name: 'add 15 times',
          widget: Builder(
            builder: (_) => getCartView(CartCubit(seed: seed)..load()),
          ),
          onCreate: (key) async {
            final finder = findAddButton(key);
            for (final _ in List.filled(15, 0)) {
              await tester.tap(finder);
            }
          });
    await tester.pumpDeviceBuilder(builder);
    await screenMatchesGolden(tester, 'cart_view_add_15');
  });
}

Finder findAddButton(Key key) {
  final finder = find.descendant(
    of: find.byKey(key),
    matching: find.byIcon(Icons.add),
  );
  expect(finder, findsOneWidget);
  return finder;
}

Cart _generateRandomCart(int seed, {int howProducts = 30}) {
  final rnd = Random(seed);
  return List.generate(howProducts, (i) {
    final num = rnd.nextInt(howProducts);
    return Product("id$num", 'product$num', 'desc$num', num);
  }).fold(Cart.empty(), (cart, product) => cart.put(product));
}
