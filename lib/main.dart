import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const ShopSmartApp());
}


class ShopSmartApp extends StatelessWidget {
  const ShopSmartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomeScreen(),
    );
  }
}