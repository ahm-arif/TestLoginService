import 'package:flutter/material.dart';
import 'package:wellness_center/Screens/Login/login_screen.dart';
import 'package:wellness_center/constants.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: wellness,
      theme: ThemeData(
        primaryColor: blueColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LoginScreen(),
    );
  }
}
