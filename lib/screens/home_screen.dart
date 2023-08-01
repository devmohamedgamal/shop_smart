import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart_user/Providers/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Hello Again',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.w800),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Hello world')),
          SwitchListTile(
            title: Text(themeProvider.getDarkTheme ? 'Dark Mode' :'lightMode'),
            value: themeProvider.getDarkTheme,
            onChanged: (value) {
              themeProvider.setDarkTheme(themeValue: value);
            },
          ),
        ],
      ),
    );
  }
}
