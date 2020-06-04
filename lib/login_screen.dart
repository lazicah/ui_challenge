import 'package:flutter/material.dart';
import 'package:ui_challenge/constants.dart';
import 'package:ui_challenge/signup_screen.dart';
import 'package:ui_challenge/welcome_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Hero(
              tag: 'image',
              child: Image(image: AssetImage('images/Ok-pana.png'))),
        ),
        Container(
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              color: color2, borderRadius: BorderRadius.circular(15)),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ),
        Container(
          height: double.infinity,
          decoration: BoxDecoration(
              color: color2,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3),
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Email adsress'),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(15.0),
                      ),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Password'),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye, color: color1,),
                    hintText: 'Enter your password',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(15.0),
                      ),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                   
                    fillColor: Colors.grey.withOpacity(0.1),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Forgot Password?',
                  textAlign: TextAlign.end,
                ),
                SizedBox(
                  height: 20,
                ),
                MyButton(
                  title: 'Log In',
                  textColor: Colors.white,
                  color: color1,
                  onPressed: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Or',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: color1, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {},
                        textColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: <Widget>[
                              Image(
                                image: AssetImage('images/facebook.png'),
                                width: 24,
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text('facebook',
                                  style: TextStyle(color: Color(0xFF8A97BF))),
                            ],
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        color: Colors.white,
                      ),
                      FlatButton(
                        onPressed: () {},
                        textColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: <Widget>[
                              Image(
                                image: AssetImage('images/google.png'),
                                width: 24,
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                'Google',
                                style: TextStyle(color: Color(0xFFBECFF7)),
                              ),
                            ],
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        color: Colors.white,
                      ),
                    ]),
                SizedBox(
                  height: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Dont have and account?'),
                      SizedBox(width: 5),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ));
                          },
                          child:
                              Text('Sign Up', style: TextStyle(color: color1)))
                    ]),
              ],
            ),
          )),
        )
      ]),
    ));
  }
}
