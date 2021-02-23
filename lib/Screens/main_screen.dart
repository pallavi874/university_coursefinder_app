import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:university_coursefinder_app/Screens/main_drawer.dart';
import 'package:university_coursefinder_app/constants.dart';
import 'Components/appbar.dart';
// import 'package:university_coursefinder_app/components/bottom_nav_bar.dart';
import 'package:university_coursefinder_app/Screens/Components/appbar.dart';
import 'package:university_coursefinder_app/Screens/Components/body.dart';

class HomeScreen extends StatelessWidget {
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
