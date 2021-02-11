import 'package:flutter/material.dart';
import 'package:space_x_challenge/theme.dart';
import 'package:space_x_challenge/widgets/cards.dart';
import 'package:space_x_challenge/widgets/sized_box.dart';
import 'package:sizer/sizer.dart';

class Upcoming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
        child: Column(
          children: [
            LaunchCard(
              image: './assets/images/launch.png',
              leading: 'Launch',
              title: 'Starlink 2',
              subtitle1: 'CCAES SLC 40',
              subtitle2: '16-10-2016',
            ),
            Height(3.0.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textTile('LAUNCH DATE', 'Thu Oct 17 5:30:00 2019'),
                textTile('LAUNCH SITE',
                    'Cape Canaveral Air Force Station Space Launch Complex 40'),
                textTile('COUNT DOWN', '5 Hrs 30mins more...'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget textTile(String title, String subtitle) {
  return ListTile(
    contentPadding: EdgeInsets.zero,
    title: Text(
      title,
      style: CustomTheme.bodyText3red,
    ),
    subtitle: Text(
      subtitle,
      textAlign: TextAlign.justify,
      style: CustomTheme.headline4,
    ),
  );
}
