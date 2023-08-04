import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shop_smart_user/consts/app_constants.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:shop_smart_user/widgets/subtitle_text.dart';
import 'package:shop_smart_user/widgets/title_text.dart';
import 'dart:developer';

class ArrivalWidget extends StatelessWidget {
  const ArrivalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          log('The user taped');
        },
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FancyShimmerImage(
                imageUrl: AppConstants.imageUrl,
                height: size.height * 0.1,
                width: size.height * 0.1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Flexible(
                    child: FittedBox(
                      child: TitleTextWidget(lebal: 'Shose Nike new '),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_shopping_cart_rounded,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          IconlyLight.heart,
                        ),
                      ),
                    ],
                  ),
                  const SubTitleTextWidget(
                    lebal: '133\$',
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
