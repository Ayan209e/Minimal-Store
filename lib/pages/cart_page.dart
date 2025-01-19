import 'package:flutter/material.dart';
import 'package:minimal_store/components/my_app_bar.dart';
import 'package:minimal_store/components/my_drawer.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: MyAppBar(title: 'Cart'),
      drawer: MyDrawer(),
    );
  }
}
