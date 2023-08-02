import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart_user/Providers/theme_provider.dart';
import 'package:shop_smart_user/widgets/subtitle_text.dart';
import 'package:shop_smart_user/widgets/title_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SubTitleTextWidget(
            lebal: 'Hi Agin!',
            fontSize: 40,
            textDecoration: TextDecoration.overline,
          ),
          const TitleTextWidget(
            lebal: 'Hello evryone how areyou doing now',
            fontSize: 50,
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Hello world')),
          SwitchListTile(
            title: Text(themeProvider.getDarkTheme ? 'Dark Mode' : 'lightMode'),
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
