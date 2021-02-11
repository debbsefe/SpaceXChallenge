import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:space_x_challenge/screens/rockets.dart';
import 'package:space_x_challenge/theme.dart';
import 'package:space_x_challenge/screens/upcoming.dart';
import 'screens/launches.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizerUtil().init(constraints, orientation);
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              toolbarHeight: 70,
              backgroundColor: Colors.black,
              title: Text(
                'SpaceX',
                style: TextStyle(fontSize: 20),
              ),
              centerTitle: true,
              leading: Icon(Icons.menu),
              actions: [
                Icon(Icons.search),
              ],
            ),
            body: Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    child: tabs())),
          ),
        );
      });
    });
  }
}

DefaultTabController tabs() {
  return DefaultTabController(
      length: 3,
      child: new Scaffold(
        body: TabBarView(
          children: <Widget>[
            Upcoming(),
            Launch(),
            Rocket(),
          ],
        ),
        appBar: new TabBar(
          tabs: [
            Tab(
              child: Text(
                'Upcoming',
              ),
            ),
            Tab(
              child: Text(
                'Launches',
              ),
            ),
            Tab(
              child: Text(
                'Rockets',
              ),
            ),
          ],
          indicatorPadding: EdgeInsets.only(right: 30),
          indicatorColor: Colors.red,
          indicatorWeight: 5,
          labelStyle: CustomTheme.bodyTextred.copyWith(),
          labelColor: Colors.red,
          unselectedLabelColor: Colors.grey,
        ),
        backgroundColor: Colors.white,
      ));
}
