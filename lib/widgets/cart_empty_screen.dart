import 'package:flutter/material.dart';
import 'package:shop_smart_user/widgets/subtitle_text.dart';
import 'package:shop_smart_user/widgets/title_text.dart';

class CartEmpty extends StatelessWidget {
  const CartEmpty(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.imagePath,
      required this.textBtn,
      this.onPressed});
  final String title, subTitle, imagePath, textBtn;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Image.asset(
              imagePath,
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
          SubTitleTextWidget(
            lebal: title,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(
            height: 25,
          ),
          SubTitleTextWidget(
            lebal: subTitle,
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
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            ),
            onPressed: onPressed,
            child: TitleTextWidget(
              lebal: textBtn,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
