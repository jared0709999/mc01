import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String id= 'login_page';

  @override
  _LoginPageState createState() => _LoginPageState();
  }

  class _LoginPageState extends State <LoginPage> {
  @override
    Widget build(BuildContext contest) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Image.asset('images/memorialogo.png',
              height: 300.0,
              ),
           SizedBox(height: 15.0,),
             _userTextField(),
             SizedBox(height: 15,),
             _passwordTextField(),

            ],
          ),

        )
      )
    );
  }
  }