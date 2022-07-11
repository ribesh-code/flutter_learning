import 'package:demo_kss/src/constants/color.theme.dart';
import 'package:demo_kss/src/constants/sizes.constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class DefaultShimmer extends StatelessWidget {
  const DefaultShimmer(
      {Key? key,
      required this.alignment,
      this.height,
      this.width,
      this.baseColor,
      this.highlightColor})
      : super(key: key);

  final Alignment alignment;
  final double? height;
  final double? width;
  final Color? baseColor;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Shimmer.fromColors(
        period: const Duration(minutes: 1),
        baseColor: baseColor ?? const Color(ColorTheme.gray),
        highlightColor: highlightColor ?? const Color(ColorTheme.shimmerColor),
        child: Align(
          alignment: alignment,
          child: Container(
            width: width ?? MediaQuery.of(context).size.width,
            height: height ?? Sizes.sizes_dimen_60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
