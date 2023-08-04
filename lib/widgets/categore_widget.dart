import 'package:flutter/material.dart';
import 'package:shop_smart_user/widgets/subtitle_text.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.imageUrl, required this.name});
  final String imageUrl, name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {},
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                imageUrl,
                height: 50,
                width: 50,
              )),
          const SizedBox(
            height: 7,
          ),
          SubTitleTextWidget(lebal: name),
        ],
      ),
    );
  }
}
