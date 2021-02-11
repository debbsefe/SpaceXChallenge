import 'package:SpaceXChallenge/screens/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:SpaceXChallenge/widgets/sized_box.dart';
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
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => DetailPage(
                    image: image,
                    leading: leading,
                    title: title,
                    subtitle1: subtitle1,
                    subtitle2: subtitle2,
                  )),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: Card(
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
            child: Row(
              children: [
                Image.asset(
                  image,
                  scale: 5,
                ),
                Width(7.0.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
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
        ),
      ),
    );
  }
}

class RocketCard extends StatelessWidget {
  final String image, leading, title, subtitle1;

  final Color color;
  const RocketCard({
    @required this.image,
    @required this.leading,
    @required this.title,
    @required this.subtitle1,
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          child: Row(
            children: [
              Image.asset(
                image,
                scale: 5,
              ),
              Width(7.0.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    leading,
                    style: CustomTheme.bodyText3red,
                  ),
                  Text(
                    title,
                    style: CustomTheme.headline3,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      subtitle1,
                      style: CustomTheme.buttonText,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
