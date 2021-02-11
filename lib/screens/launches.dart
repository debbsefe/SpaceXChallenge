import 'package:SpaceXChallenge/widgets/cards.dart';
import 'package:flutter/material.dart';

class Launch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
        child: Column(
          children: [
            LaunchCard(
              image: './assets/images/space2.png',
              leading: 'Launch',
              title: 'Starlink 2',
              subtitle1: 'CCAES SLC 40',
              subtitle2: '16-12-2014',
            ),
            LaunchCard(
              image: './assets/images/demosat.png',
              leading: 'Launch',
              title: 'DemoSat',
              subtitle1: 'AAAES SLC 40',
              subtitle2: '06-07-2018',
            ),
            LaunchCard(
              image: './assets/images/falcon9.png',
              leading: 'Launch',
              title: 'Falcon 9 Test',
              subtitle1: 'CCAES SEC 40',
              subtitle2: '18-03-2019',
            ),
            LaunchCard(
              image: './assets/images/launch.png',
              leading: 'Launch',
              title: 'CRS - 2',
              subtitle1: 'CAAES SLC 40',
              subtitle2: '18-12-2019',
            ),
          ],
        ),
      ),
    );
  }
}
