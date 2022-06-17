import 'package:flutter/material.dart';

class NuevoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Nuevo Registro",
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