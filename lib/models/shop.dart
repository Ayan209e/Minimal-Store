import 'package:flutter/material.dart';
import 'package:minimal_store/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    Product(
      name: 'Jordan Hoop Fleece',
      description: "Men's Dri-FIT Full-Zip Hoodie",
      price: 90,
      image: 'assets/hoodie.png',
    ),
    Product(
      name: 'Air Jordan 4 RM',
      description: "Men's Sneakers",
      price: 180.0,
      image: 'assets/shoes.png',
    ),
    Product(
      name: 'IWC Schaffhausen',
      description: 'AquaTimer Chronograph Edition Galapagos Islands',
      price: 400.0,
      image: 'assets/watch.png',
    ),
    Product(
      name: 'John Jacobs',
      description: 'Black Full Rim Wayfarer',
      price: 40.0,
      image: 'assets/glasses.png',
    ),
  ];

  // products in cart
  final List<Product> _cart = [];

  // get all products
  List<Product> get shop => _shop;

  // get all products in cart
  List<Product> get cart => _cart;

  // add product to cart
  void addToCart(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  // remove product from cart
  void removeFromCart(Product product) {
    _cart.remove(product);
    notifyListeners();
  }

  double getCartTotal() {
    double total = 0;
    for (var product in _cart) {
      total += product.price;
    }
    return total;
  }
}
