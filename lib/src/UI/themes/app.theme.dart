import 'package:demo_kss/src/UI/themes/text.theme.dart';
import 'package:demo_kss/src/constants/color.theme.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: const Color(
      ColorTheme.kprimaryColor,
    ),
    textTheme: AppTextTheme.textTheme,
    appBarTheme: appBarTheme,
    scaffoldBackgroundColor: const Color(ColorTheme.kBackgroundColor),
    iconTheme: const IconThemeData(
      color: Color(
        ColorTheme.kSecondaryColor,
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: Color(
        ColorTheme.kprimaryColor,
      ),
      secondary: Color(
        ColorTheme.kSecondaryColor,
      ),
    ),
  );
}

const AppBarTheme appBarTheme = AppBarTheme(
  centerTitle: false,
  elevation: 2,
);
