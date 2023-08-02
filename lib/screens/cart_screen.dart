import 'package:flutter/material.dart';
import 'package:shop_smart_user/services/assets_mangr.dart';
import 'package:shop_smart_user/widgets/subtitle_text.dart';
import 'package:shop_smart_user/widgets/title_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Image.asset(
                AssetsManger.shoppingCart,
                height: size.height * 0.34,
                width: double.infinity,
              ),
            ),
            const TitleTextWidget(
              lebal: 'Whoops!',
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
            const SizedBox(
              height: 25,
            ),
            const SubTitleTextWidget(
              lebal: 'Your cart is empty',
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(
              height: 25,
            ),
            const SubTitleTextWidget(
              lebal:
                  'Looks like you have not added anything to your cart\nGo ahead & explore top categories',
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              ),
              onPressed: () {},
              child: TitleTextWidget(
                lebal: 'Shop Now',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
