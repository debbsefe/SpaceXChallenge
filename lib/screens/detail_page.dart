import 'package:SpaceXChallenge/widgets/list_tiles.dart';
import 'package:SpaceXChallenge/widgets/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../theme.dart';

class DetailPage extends StatelessWidget {
  final String image, leading, title, subtitle1, subtitle2;
  const DetailPage(
      {@required this.image,
      @required this.leading,
      @required this.title,
      @required this.subtitle1,
      @required this.subtitle2});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Icon(Icons.share),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  image,
                  scale: 5,
                ),
              ),
              textTile2('Rocket', title),
              textTile2('Launch Date', subtitle2),
              textTile2('LAUNCH SITE', subtitle1),
              textTile2('LAUNCH STATUS', 'Success'),
              textTile2(
                'DETAILS',
                "Last launch of the original Falcon 9 v1.0 launch vehicle",
              ),
              textTile2('ROCKET SUMMARY', title),
              textTile2('TYPE', "v1.0"),
              Row(
                children: [
                  Expanded(child: textTile2('FIRST STAGE', 'Cores: 4')),
                  Spacer(),
                  Expanded(child: textTile2('SECOND STAGE', "Payloads: 150kg")),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'YOUTUBE',
                    style: CustomTheme.bodyText3red,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 2.0.h,
                    ),
                    child: Text(
                      'REDDIT',
                      style: CustomTheme.bodyText3red,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 32.0),
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    decoration: BoxDecoration(
                      color: CustomTheme.deepRed,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Image.asset(
                      './assets/images/play.png',
                      scale: 5.0,
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(right: 2.0.h, top: 8.0, bottom: 8.0),
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 32.0),
                    decoration: BoxDecoration(
                      color: CustomTheme.orange,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Image.asset(
                      './assets/images/child.png',
                      scale: 5.0,
                    ),
                  ),
                ],
              ),
              Height(3.0.h),
              Text(
                'SNEAK PEAK',
                style: CustomTheme.bodyText3red,
              ),
              Height(3.0.h),
              Image.asset(
                './assets/images/rocket.png',
                scale: 3.0,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
