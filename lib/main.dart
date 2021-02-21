import 'package:flutter/material.dart';
import 'package:university_coursefinder_app/Screens/main_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Destino',
       home: MainScreen(),
       theme: ThemeData(),
    );
  }
}

