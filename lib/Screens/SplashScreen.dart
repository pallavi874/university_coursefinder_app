import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:university_coursefinder_app/Screens/Auth/Login.dart';
import 'package:university_coursefinder_app/Screens/Auth/SignUp.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column( children: <Widget>[
          SizedBox(height: 45.0),
          Container(
            height:300,
            child: Image(image: AssetImage('assets/images/pic1.png'),
            fit: BoxFit.contain,
            )
          ),

          SizedBox(height: 20),

          RichText(
            text: TextSpan(
              text: 'Welcome to', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,
              color:Colors.deepOrange[600]
              ),
              children: <TextSpan> [
                TextSpan(
                  text: ' UNICOUR', style: TextStyle(fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent)
                )
              ]

            )
          ),
          SizedBox(height:10.0),
          Text('Find Your Dream College and course at one click',style:TextStyle(color:Colors.black),),

          SizedBox(height: 30.0),

          Row( mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[

              RaisedButton(
                 padding: EdgeInsets.only(left:30,right:30),


                onPressed: (){
                  Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => SignUp(),
                ));
              },
                child: Text('Sign Up', style: TextStyle(fontSize: 20,
                 fontWeight: FontWeight.bold,
                 color: Colors.white
                 ),),
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10.0),
                   
                   ),
                   color: Colors.deepOrange[600]
              ),

              SizedBox(width:20.0),

              RaisedButton(
                padding: EdgeInsets.only(left:30,right:30),

                onPressed: (){
                  Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Login(),
                ));
                },
                child: Text('Sign In', style: TextStyle(fontSize: 20,
                 fontWeight: FontWeight.bold,
                 color: Colors.white
                 ),),
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10.0),
                   
                   ),
                   color: Colors.deepPurpleAccent
              ),
              
            ],
          ),
          SizedBox(height: 20.0),

              SignInButton(
                Buttons.Google,
                text: "Sign up with Google",
                onPressed: () {
                  Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Login(),
                ));
              },
                )
        ],)
      )
      
    );
  }
}
