import 'package:flutter/material.dart';
import 'package:ui_challenge/constants.dart';
import 'package:ui_challenge/login_screen.dart';
import 'package:ui_challenge/signup_screen.dart';
import 'package:undraw/undraw.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Text(
              'Welcome Back',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 28, fontWeight: FontWeight.w700, color: color1),
            ),
            Expanded(
                child: Hero(
                    tag: 'image',
                    child: Image(image: AssetImage('images/Ok-pana.png')))),
            MyButton(
              title: 'Sign Up',
              textColor: Colors.white,
              color: color1,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpScreen(),
                    ));
              },
            ),
            MyButton(
              title: 'Log In',
              textColor: Colors.black,
              color: color2,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;

  const MyButton(
      {Key key, this.title, this.color, this.textColor, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
        onPressed: onPressed,
        textColor: textColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(title),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        color: color,
      ),
    );
  }
}

//  UnDraw(
//                     illustration: UnDrawIllustration.mobile_login,
//                     color: color2)),
