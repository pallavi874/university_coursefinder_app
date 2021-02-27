import 'package:flutter/material.dart';
// import 'package:university_coursefinder_app/Screens/SplashScreen.dart';
// import 'package:firebase_core/firebase_core.dart';

// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SplashScreen(),
      
//     );
//   }
// }
import 'package:university_coursefinder_app/Screens/Auth/SignUp.dart';
import 'package:university_coursefinder_app/Screens/WelcomeScr.dart';
import 'package:university_coursefinder_app/constants.dart';
// import 'package:university_coursefinder_app/Screens/main_screen.dart';
import 'package:university_coursefinder_app/Screens/SplashScreen.dart';

import 'package:university_coursefinder_app/Screens/Auth/Login.dart';
 import 'package:firebase_core/firebase_core.dart';
 import './Screens/HomeScreen.dart';
import 'Screens/Auth/SignUp.dart';
import 'Screens/Form/Form_Submission.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
    
      @override
      Widget build(BuildContext context) {
        return FutureBuilder(
          // Initialize FlutterFire:
          future: _initialization,
          builder: (context, snapshot) {
            // Check for errors
            if (snapshot.hasError) {
              print('${snapshot.error}');
            }
    
            // Once complete, show your application
            if (snapshot.connectionState == ConnectionState.done) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Unicour',
                theme: ThemeData(
                  primaryColor: kPrimaryColor,
                  scaffoldBackgroundColor: Colors.white,
                  textTheme: TextTheme(
                    body1: TextStyle(color: kSecondaryColor),
                    body2: TextStyle(color: kSecondaryColor),
                  ),
                ),
                home: WelcomeSrc(),
              );
            }
    
            // Otherwise, show something whilst waiting for initialization to complete
            return CircularProgressIndicator();
          },
        );
      }
    }

    
    
    
