import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String id='LoginScreen';

  @override

  _LoginScreenState CreateState() => _LoginScreen();
}
class LoginScreenState extends  State<_LoginScreenState>{
  @override
  Widget build(BuildContext context){
    return SafeArea(
        child: Scaffold(
            body: Center(

            )
        )
    );
  }
}