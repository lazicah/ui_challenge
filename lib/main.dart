import 'package:flutter/material.dart';
import 'package:ui_challenge/constants.dart';
import 'package:ui_challenge/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: WelcomeScreen(),
    );
  }
}
