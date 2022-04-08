import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldentest/presentation/bloc/cart_cubit.dart';
import 'package:goldentest/presentation/widgets/cart_widget.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: CartWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<CartCubit>().addRandomProduct(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
