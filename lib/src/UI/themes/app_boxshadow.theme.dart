import 'package:demo_kss/src/constants/color.theme.dart';
import 'package:demo_kss/src/constants/sizes.constants.dart';
import 'package:flutter/material.dart';

class AppShadow {
  const AppShadow._();

  static final BoxShadow defaultShadow = BoxShadow(
    blurRadius: Sizes.sizes_dimen_10,
    color: const Color(ColorTheme.kprimaryColor).withAlpha(25),
    offset: const Offset(
      Sizes.sizes_dimen_0,
      Sizes.sizes_dimen_10,
    ),
  );
}
