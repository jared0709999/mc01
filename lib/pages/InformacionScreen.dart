import 'package:flutter/material.dart';

class InformacionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.info),
          title: const Text(
            "Información",
            style: TextStyle(color: Colors.white),
          )),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // ¡Regrese a la primera pantalla cuando la pulsen!
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}