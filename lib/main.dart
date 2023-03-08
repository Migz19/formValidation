import 'package:firstapp/src/views/authentication/login/LoginScreen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      // home:AnimatedSplashScreen(splash: WelcomeScreen(),nextScreen: LoginScreen()),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


