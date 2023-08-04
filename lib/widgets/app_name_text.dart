import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop_smart_user/widgets/title_text.dart';

class AppNameTextWidget extends StatelessWidget {
  const AppNameTextWidget({super.key, this.fontSize = 20, required this.title});
  final double fontSize;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(seconds: 7),
      baseColor: Colors.purple,
      highlightColor: Colors.red,
      child: TitleTextWidget(
        lebal: title,
        fontSize: fontSize,
      ),
    );
  }
}
