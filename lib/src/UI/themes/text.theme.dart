import 'package:demo_kss/src/constants/sizes.constants.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  const AppTextTheme._();

  static const TextTheme textTheme = TextTheme(
    headline1: _headline1,
    headline2: _headline2,
    bodyText1: _bodyText1,
  );

  static const TextStyle _headline1 = TextStyle(
    fontSize: Sizes.sizes_dimen_20,
    fontFamily: '',
  );
  static const TextStyle _headline2 = TextStyle(
    fontSize: Sizes.sizes_dimen_5,
    fontFamily: '',
  );
  static const TextStyle _bodyText1 = TextStyle(
    fontSize: Sizes.sizes_dimen_15,
    fontFamily: '',
  );
}
