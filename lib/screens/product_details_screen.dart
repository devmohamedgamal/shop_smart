import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shop_smart_user/consts/app_constants.dart';
import 'package:shop_smart_user/widgets/subtitle_text.dart';
import 'package:shop_smart_user/widgets/title_text.dart';

import 'Products/icon_heart_widget.dart';

class DetialsScreen extends StatelessWidget {
  const DetialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            IconlyLight.arrowLeft2,
            color: Theme.of(context).primaryColorLight,
          ),
        ),
        title: const TitleTextWidget(
          lebal: 'Shope Smart',
          color: Colors.purple,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: IconButton(
              onPressed: () {},
              icon: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Material(
                  color: Colors.grey.withOpacity(0.3),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Badge(
                      label: Text('6'),
                      child: Icon(
                        IconlyLight.bag2,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FancyShimmerImage(
              imageUrl: AppConstants.imageUrl,
              height: size.height * 0.4,
              width: double.infinity,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleTextWidget(lebal: 'Apple iphone 14 pro (128GB) - black'),
                SubTitleTextWidget(
                  lebal: '\$1200',
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 26,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconHeartWidget(
                  size: 20,
                  color: Colors.lightBlue.withOpacity(0.5),
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    elevation: 3,
                    backgroundColor: Colors.lightBlue.shade300,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 16),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const SubTitleTextWidget(
                    lebal: 'Add to cart',
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleTextWidget(
                  lebal: 'About this item',
                ),
                SubTitleTextWidget(
                  lebal: 'in Shoes',
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              children: [
                SubTitleTextWidget(
                  lebal:
                      '48MP Main camera for up to 4x greater resolution Cinematic mode now in 4K Dolby Vision up to 30 fps Action mode for smooth, steady, handheld videos Vital safety features Emergency SOS via satellite and Crash Detection',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
