import 'package:demo_kss/src/UI/widgets/default_shimmer.widget.dart';
import 'package:flutter/material.dart';

class TodoCardShimmer extends StatelessWidget {
  const TodoCardShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (context, _) {
        return const DefaultShimmer(
          alignment: Alignment.centerLeft,
        );
      },
    );
  }
}
