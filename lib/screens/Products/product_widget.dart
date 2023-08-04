import 'package:flutter/material.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shop_smart_user/widgets/subtitle_text.dart';
import 'package:shop_smart_user/widgets/title_text.dart';

import '../../consts/app_constants.dart';
import '../product_details_screen.dart';
import 'icon_heart_widget.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const DetialsScreen();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FancyShimmerImage(
                height: size.height * 0.22,
                width: double.infinity,
                imageUrl: AppConstants.imageUrl,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                          flex: 3,
                          child: TitleTextWidget(
                            lebal: 'Title' * 10,
                            fontSize: 18,
                            maxLine: 2,
                          )),
                      IconHeartWidget(
                        size: 24,
                        onTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        flex: 3,
                        child: SubTitleTextWidget(
                          lebal: '163.3\$',
                          color: Colors.blue,
                        ),
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.2),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10),
                          splashColor: Colors.yellowAccent,
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Icon(Icons.add_shopping_cart_rounded),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
