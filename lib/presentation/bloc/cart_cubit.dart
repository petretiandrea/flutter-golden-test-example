import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldentest/domain/entity/cart.dart';
import 'package:goldentest/domain/entity/product.dart';
import 'package:goldentest/presentation/bloc/cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final Random rnd;

  CartCubit({int? seed})
      : rnd = Random(seed ?? 1234),
        super(const CartState.loading());

  load() {
    emit(const CartState.loading());
    emit(CartState(Cart.empty()));
  }

  addRandomProduct() {
    final product = _generateRandomProduct();
    final newState = state.maybeMap(
        (value) => CartState(value.cart.put(product)),
        orElse: () => state);
    emit(newState);
  }

  Product _generateRandomProduct() {
    final num = rnd.nextInt(30);
    return Product('id$num', 'product$num', 'desc$num', num);
  }
}
