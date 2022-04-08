import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goldentest/domain/entity/cart.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState(Cart cart) = _CartLoaded;
  const factory CartState.loading() = _CartLoading;
  const factory CartState.error(String? error) = _CartError;
}
