import 'package:flutter/material.dart';

import 'app_colors.dart';

class Style {
  static ThemeData themeData(
      {required bool isDarktheme, required BuildContext context}) {
    return ThemeData(
      iconTheme: IconThemeData(
        color: isDarktheme ? Colors.white : Colors.black,
      ),
      scaffoldBackgroundColor: isDarktheme
          ? AppColors.darkScaffoldColor
          : AppColors.lightScaffoldColor,
      cardColor:
          isDarktheme ? AppColors.darkCardColor : AppColors.lightCardColor,
      brightness: isDarktheme ? Brightness.dark : Brightness.light,
      appBarTheme: AppBarTheme(
        backgroundColor: isDarktheme
            ? AppColors.darkScaffoldColor
            : AppColors.lightScaffoldColor,
        elevation: 0,
        titleTextStyle:
            TextStyle(color: isDarktheme ? Colors.white : Colors.black),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        contentPadding: const EdgeInsets.all(10),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: isDarktheme ? Colors.white : Colors.black,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Theme.of(context).colorScheme.error,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Theme.of(context).colorScheme.error,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
