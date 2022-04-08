import 'package:flutter/material.dart';

class SimpleWidget extends StatelessWidget {
  const SimpleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Theme.of(context).primaryColor,
      child: Center(
        child: Text(
          'Test',
          style: TextStyle(
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
      ),
    );
  }
}
