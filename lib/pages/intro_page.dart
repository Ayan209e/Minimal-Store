import 'package:flutter/material.dart';
import 'package:minimal_store/components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_bag_rounded,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            SizedBox(height: 24),
            Text(
              'Minimal Store',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              'Premium Quality Products',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(height: 24),
            MyButton(
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/shop_page'),
              child: Icon(
                Icons.arrow_forward,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
