import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart_user/Providers/theme_provider.dart';
import 'consts/theme_data.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const ShopSmartApp());
}

class ShopSmartApp extends StatelessWidget {
  const ShopSmartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(builder: (context, ThemeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Shope Smart',
          theme: Style.themeData(
              isDarktheme: ThemeProvider.getDarkTheme, context: context),
          home: const HomeScreen(),
        );
      }),
    );
  }
}
