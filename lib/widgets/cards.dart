import 'package:flutter/material.dart';
import 'package:space_x_challenge/widgets/sized_box.dart';
import 'package:sizer/sizer.dart';
import '../theme.dart';

class LaunchCard extends StatelessWidget {
  final String image, leading, title, subtitle1, subtitle2;
  const LaunchCard(
      {@required this.image,
      @required this.leading,
      @required this.title,
      @required this.subtitle1,
      @required this.subtitle2});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
        child: Row(
          children: [
            Image.asset(
              image,
              scale: 4,
            ),
            Width(5.0.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  leading,
                  style: CustomTheme.bodyText3red,
                ),
                Text(
                  title,
                  style: CustomTheme.headline3,
                ),
                Text(
                  subtitle1,
                  style: CustomTheme.subtitle,
                ),
                Text(
                  subtitle2,
                  style: CustomTheme.subtitle53,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
