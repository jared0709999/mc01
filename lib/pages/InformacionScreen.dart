import 'package:flutter/material.dart';
import 'package:link_text/link_text.dart';

class InformacionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String info =
        "Memoria colectiva es un proyecto iniciado por Ingeniería Informática del Instituto Tecnológico Superior de Teziutlán. El objetivo es promover el intercambio de ideas y compartir material escrito";

    Uri url = Uri.parse("https://memoriacolectiva.mapaches.info");
    const _text = 'https://memoriacolectiva.mapaches.info';

    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.info),
          title: const Text(
            "Información",
            style: TextStyle(color: Colors.white),
          )),
      body: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
        child: Column(
        children: <Widget>[
          const Spacer(
            flex: 20,
          ),
          const Text(
            "Memoria Colectiva",
            style: TextStyle(fontSize: 14),
          ),
          Text('$info', textAlign: TextAlign.justify, style: TextStyle(fontSize: 20)),
          const Spacer(
            flex: 5,
          ),
          const Text(
            "Website",
            style: TextStyle(fontSize: 14),
          ),

          LinkText('Texto',
            textAlign: TextAlign.center,
            // You can optionally handle link tap event by yourself
            // onLinkTap: (url) => ...
          ),

          Text(
            'LinkText Widget with trimmed URL parameters',
            textAlign: TextAlign.center,
            style: TextStyle().copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12.0),
          LinkText(
            _text,
            textAlign: TextAlign.center,
            shouldTrimParams: true,
          ),


          Text('$url', textAlign: TextAlign.justify, style: TextStyle(fontSize: 20)),
          const Spacer(
            flex: 5,
          ),
          const Text(
            'Desarrollador',
            style: TextStyle(fontSize: 14),
          ),
          const Text(
            'Jared del Rosario Rojas Juárez',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 20),
          ),
          const Spacer(
            flex: 5,
          ),
        ],
      ))),
    );
  }
}
