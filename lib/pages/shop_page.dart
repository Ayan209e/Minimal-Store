import 'package:flutter/material.dart';
import 'package:minimal_store/components/my_app_bar.dart';
import 'package:minimal_store/components/my_drawer.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: MyAppBar(title: 'Shop'),
      drawer: MyDrawer(),
    );
  }
}
