import 'package:flutter/material.dart';
import 'package:space_x_challenge/rockets.dart';
import 'package:space_x_challenge/theme.dart';
import 'package:space_x_challenge/upcoming.dart';

import 'launches.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
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
          labelStyle: CustomTheme.headline3red.copyWith(),
          labelColor: Colors.red,
          unselectedLabelColor: Colors.grey,
        ),
        backgroundColor: Colors.white,
      ));
}
