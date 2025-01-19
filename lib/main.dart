import 'package:flutter/material.dart';
import 'package:minimal_store/pages/cart_page.dart';
import 'package:minimal_store/pages/intro_page.dart';
import 'package:minimal_store/pages/shop_page.dart';
import 'package:minimal_store/themes.dart/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: IntroPage(),
      routes: {
        '/intro_page': (context) => IntroPage(),
        '/shop_page': (context) => ShopPage(),
        '/cart_page': (context) => CartPage(),
      },
    );
  }
}
