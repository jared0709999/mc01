import 'package:flutter/material.dart';

class NuevosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo Registro', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text('Nuevo Registro'),
          onPressed: () {
            Navigator.pushNamed(context, '/Nuevo Registro');
          },
        ),
      ),
    );
  }
}