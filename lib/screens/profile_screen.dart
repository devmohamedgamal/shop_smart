import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart_user/widgets/app_name_text.dart';
import 'package:shop_smart_user/widgets/title_text.dart';

import '../Providers/theme_provider.dart';
import '../services/assets_mangr.dart';
import '../widgets/subtitle_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(AssetsManger.shoppingCart),
        title: const AppNameTextWidget(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Visibility(
              visible: false,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: TitleTextWidget(
                    lebal: 'Please Login to have ultimate access to order'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).cardColor,
                      border: Border.all(
                          color: Theme.of(context).colorScheme.background,
                          width: 3),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleTextWidget(lebal: 'Mohamed Gamal'),
                      SizedBox(
                        height: 4,
                      ),
                      SubTitleTextWidget(lebal: 'devmogamal@gmail.com'),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TitleTextWidget(lebal: 'General'),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomListTile(
                    imagePath: AssetsManger.orderSvg,
                    title: 'All Orders',
                    function: () {},
                  ),
                  CustomListTile(
                    imagePath: AssetsManger.wishList,
                    title: 'Wishlist',
                    function: () {},
                  ),
                  CustomListTile(
                    imagePath: AssetsManger.recent,
                    title: 'Viewed Recently',
                    function: () {},
                  ),
                  CustomListTile(
                    imagePath: AssetsManger.address,
                    title: 'Address',
                    function: () {},
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 1.4,
              indent: 50,
              endIndent: 50,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: TitleTextWidget(lebal: 'Settings'),
            ),
            const SizedBox(
              height: 20,
            ),
            SwitchListTile(
              secondary: Image.asset(
                AssetsManger.theme,
                height: 40,
              ),
              title:
                  Text(themeProvider.getDarkTheme ? 'Dark Mode' : 'lightMode'),
              value: themeProvider.getDarkTheme,
              onChanged: (value) {
                themeProvider.setDarkTheme(themeValue: value);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              thickness: 1.4,
              indent: 50,
              endIndent: 50,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: TitleTextWidget(lebal: 'Others'),
            ),
            CustomListTile(
              imagePath: AssetsManger.privacy,
              title: 'Privacy & Policy',
              function: () {},
            ),
            Center(
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(IconlyLight.logout),
                  label: const Text('Logout')),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.function});
  final String imagePath;
  final String title;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: ListTile(
        onTap: () {
          function();
        },
        title: TitleTextWidget(lebal: title),
        leading: Image.asset(
          imagePath,
          height: 40,
        ),
        trailing: const Icon(IconlyLight.arrowRight2),
      ),
    );
  }
}
