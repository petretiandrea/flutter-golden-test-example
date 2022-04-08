import 'package:goldentest/domain/entity/product.dart';

class Cart {
  final Map<Product, num> products;
  final num totalPrice;

  Cart(this.products, this.totalPrice);

  factory Cart.empty() => Cart({}, 0);

  factory Cart.fromProducts(Map<Product, num> products) {
    final totalAmount = products.entries
        .map((e) => e.key.price * e.value)
        .fold<num>(0.0, (prev, current) => prev + current);
    return Cart(products, totalAmount);
  }

  Cart put(Product product, {num amount = 1}) => Cart.fromProducts(products
    ..update(product, (value) => value + amount, ifAbsent: () => amount));
}
