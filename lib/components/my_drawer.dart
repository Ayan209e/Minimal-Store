import 'package:flutter/material.dart';
import 'package:minimal_store/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(0)),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 100, bottom: 48),
            child: Center(
              child: Icon(
                Icons.shopping_bag_rounded,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
          MyListTile(
            title: 'Shop',
            icon: Icons.home,
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/shop_page');
            },
          ),
          MyListTile(
            title: 'Cart',
            icon: Icons.shopping_cart,
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/cart_page');
            },
          ),
          Spacer(),
          MyListTile(
            title: 'Exit',
            icon: Icons.logout_rounded,
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/intro_page');
            },
          ),
        ],
      ),
    );
  }
}
