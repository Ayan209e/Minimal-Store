import 'package:flutter/material.dart';
import 'package:minimal_store/models/product.dart';
import 'package:minimal_store/models/shop.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final Product product;
  const MyCartTile({
    super.key,
    required this.product,
  });

  void removeItemFromCart(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Remove ',
            style: TextStyle(fontSize: 16, color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: product.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(text: ' from cart?'),
            ],
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () => Navigator.pop(context),
                child: Text('No'),
              ),
              MaterialButton(
                onPressed: () => {
                  Navigator.pop(context),
                  context.read<Shop>().removeFromCart(product),
                },
                child: Text('Yes'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AspectRatio(aspectRatio: 1, child: Image.asset(product.image)),
      title: Text(
        product.name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      subtitle: Text(
        '\$${product.price.toStringAsFixed(2)}',
        style: TextStyle(
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
      ),
      trailing: IconButton(
        onPressed: () => removeItemFromCart(context),
        icon: Icon(
          Icons.minimize,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
      ),
    );
  }
}
