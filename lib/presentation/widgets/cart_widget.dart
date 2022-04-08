import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldentest/domain/entity/cart.dart';
import 'package:goldentest/domain/entity/product.dart';
import 'package:goldentest/presentation/bloc/cart_cubit.dart';
import 'package:goldentest/presentation/bloc/cart_state.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) => state.map(
        (value) => _buildCart(value.cart),
        loading: (_) => _buildLoadingWidget(),
        error: (error) => _buildErrorWidget(error.error),
      ),
    );
  }

  Widget _buildCart(Cart cart) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: cart.products.entries
                    .map((e) => _buildItemCartProduct(e.key, e.value))
                    .toList(),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Total: ${cart.totalPrice}',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildItemCartProduct(Product product, num amount) {
    return ListTile(
      title: Text(product.name),
      trailing: Text("x$amount"),
    );
  }

  Widget _buildLoadingWidget() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildErrorWidget(String? error) {
    return Center(
      child: Text(error ?? 'Unknown error'),
    );
  }
}
