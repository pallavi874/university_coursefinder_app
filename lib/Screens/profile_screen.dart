import 'package:flutter/material.dart';
import 'package:university_coursefinder_app/Screens/main_drawer.dart';

class ProfileScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('We are in the Profile Page Now,',
            style: TextStyle(
            fontSize: 22,
        ),
      ),
          ],
        ),
      ),
    );
  }
}