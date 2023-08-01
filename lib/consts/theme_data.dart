import 'package:flutter/material.dart';

import 'app_colors.dart';

class Style {
  static ThemeData themeData(
      {required bool isDarktheme, required BuildContext context}) {
    return ThemeData(
      scaffoldBackgroundColor: isDarktheme
          ? AppColors.darkScaffoldColor
          : AppColors.lightScaffoldColor,
      cardColor:
          isDarktheme ? AppColors.darkCardColor : AppColors.lightCardColor,
          brightness: isDarktheme ? Brightness.dark : Brightness.light,
    );
  }
}
