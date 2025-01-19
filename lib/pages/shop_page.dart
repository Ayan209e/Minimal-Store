import 'package:flutter/material.dart';
import 'package:minimal_store/components/my_app_bar.dart';
import 'package:minimal_store/components/my_drawer.dart';
import 'package:minimal_store/components/my_product_card.dart';
import 'package:minimal_store/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // access the shop products
    final products = context.watch<Shop>().shop;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: MyAppBar(title: 'Shop'),
      drawer: MyDrawer(),
      body: ListView(
        children: [
          SizedBox(height: 24),
          Center(
            child: Text(
              'Pick from a selected range of premium products',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
          SizedBox(
            height: 550,
            child: ListView.builder(
              padding: EdgeInsets.all(16),
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return MyProductCard(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}
