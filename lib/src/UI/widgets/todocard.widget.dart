import 'package:demo_kss/src/UI/themes/app_boxshadow.theme.dart';
import 'package:demo_kss/src/constants/sizes.constants.dart';
import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.sizes_dimen_10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: Sizes.sizes_dimen_60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: <BoxShadow>[AppShadow.defaultShadow],
        ),
        child: Padding(
          padding: const EdgeInsets.all(Sizes.sizes_dimen_10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: Colors.black,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
