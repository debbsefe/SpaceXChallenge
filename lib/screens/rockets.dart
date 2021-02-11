import 'package:SpaceXChallenge/widgets/cards.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class Rocket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
        child: Column(
          children: [
            RocketCard(
              image: './assets/images/space2.png',
              leading: 'Launch',
              title: 'Falcon 1',
              subtitle1: 'INACTIVE',
              color: CustomTheme.buttonred,
            ),
            RocketCard(
              image: './assets/images/f9.png',
              leading: 'Rocket',
              title: 'Falcon 9',
              subtitle1: 'ACTIVE',
              color: CustomTheme.green,
            ),
            RocketCard(
              image: './assets/images/falcon9.png',
              leading: 'Rocket',
              title: 'Big Falcon Rocket',
              subtitle1: 'INACTIVE',
              color: CustomTheme.buttonred,
            ),
          ],
        ),
      ),
    );
  }
}
