import 'package:flutter/material.dart';

class LmaternaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Lengua Materna",
            style: TextStyle(color: Colors.white),
          )),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // ¡Regrese a la primera pantalla cuando la pulsen!
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}