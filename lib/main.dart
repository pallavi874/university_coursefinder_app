import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:university_coursefinder_app/constants.dart';
import 'package:university_coursefinder_app/Screens/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UNICOUR',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
        // textTheme: GoogleFonts.montserratTextTheme(),
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
        body1: TextStyle(color: kSecondaryColor),
        body2: TextStyle(color: kSecondaryColor),
        ),
      ),
      home: HomeScreen(),
    );
  }
}