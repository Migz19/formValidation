
import 'package:firstapp/src/view/Profile/ProfileScreen.dart';
import 'package:firstapp/src/view/WelcomeScreen.dart';
import 'package:firstapp/src/view/home/HomeScreen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      // home:AnimatedSplashScreen(splash: WelcomeScreen(),nextScreen: LoginScreen()),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}


