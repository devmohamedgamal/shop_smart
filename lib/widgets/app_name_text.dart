import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop_smart_user/widgets/title_text.dart';

class AppNameTextWidget extends StatelessWidget {
  const AppNameTextWidget({super.key, this.fontSize = 20});
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(seconds: 7),
      baseColor: Colors.purple,
      highlightColor: Colors.red,
      child: TitleTextWidget(
        lebal: 'Shop Smart',
        fontSize: fontSize,
      ),
    );
  }
}
