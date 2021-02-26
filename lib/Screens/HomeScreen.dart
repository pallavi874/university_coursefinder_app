import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:university_coursefinder_app/constants.dart';

import 'Components/Appbar.dart';
// import 'package:university_coursefinder_app/components/bottom_nav_bar.dart';
import 'package:university_coursefinder_app/Screens/Components/Appbar.dart';
import 'package:university_coursefinder_app/Screens/Components/Body.dart';
import 'package:university_coursefinder_app/Screens/main_drawer.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(context),
      drawer: MainDrawer(),
      // bottomNavigationBar: BottomNavBar(),
         body: Body(),
    );
  }
}
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: Appbar(context),
//       // bottomNavigationBar: BottomNavBar(),
//          body: Body(),
//     );
//   }
// }
