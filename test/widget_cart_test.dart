import 'dart:math';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:goldentest/domain/entity/cart.dart';
import 'package:goldentest/domain/entity/product.dart';
import 'package:goldentest/presentation/bloc/cart_cubit.dart';
import 'package:goldentest/presentation/bloc/cart_state.dart';
import 'package:goldentest/presentation/widgets/cart_widget.dart';

import 'utils/test_utils.dart';

class MockCartCubit extends MockCubit<CartState> implements CartCubit {}

getCartWidget(CartCubit cubit) {
  return BlocProvider.value(
    value: cubit,
    child: const CartWidget(),
  );
}

void main() {
  setUpAll(() async {
    await TestUtils.loadFonts();
  });

  testGoldens("given a cart shows", (WidgetTester tester) async {
    // mock cubit
    final cubit = MockCartCubit()..load();
    final builder = DeviceBuilder()
      ..addScenario(
        name: 'loading when loading products',
        widget: Builder(
          builder: (_) {
            whenListen(
              cubit,
              Stream.fromIterable([const CartState.loading()]),
              initialState: const CartState.loading(),
            );
            return getCartWidget(cubit);
          },
        ),
      )
      ..addScenario(
          name: 'products when loaded',
          widget: Builder(
            builder: (_) {
              whenListen(
                cubit,
                Stream.fromIterable([
                  const CartState.loading(),
                  CartState(_generateRandomCart(1234)),
                ]),
                initialState: const CartState.loading(),
              );
              return getCartWidget(cubit);
            },
          ));

    await tester.pumpDeviceBuilder(builder);
    await screenMatchesGolden(tester, 'cart_widget_states',
        customPump: (widget) => widget.pump(const Duration(seconds: 2)));
  });
}

Cart _generateRandomCart(int seed) {
  final rnd = Random(seed);
  return List.generate(30, (i) {
    final num = rnd.nextInt(30);
    return Product("id$num", 'product$num', 'desc$num', num);
  }).fold(Cart.empty(), (cart, product) => cart.put(product));
}
