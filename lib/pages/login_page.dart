import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String id= 'LoginScreen'
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Autores', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text('Autores'),
          onPressed: () {
            Navigator.pushNamed(context, '/autores');
          },
        ),
      ),
    );
  }
}