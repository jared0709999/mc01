import 'package:flutter/material.dart';

class GaleriaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Galería", style: TextStyle(color: Colors.white)),
      ),
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