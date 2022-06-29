import 'dart:convert';
import 'apis/wordpress.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;
import 'package:mc01/apis/wordpress.dart';
import 'package:mc01/pages/InformacionScreen.dart';
import 'package:mc01/pages/AutoresScreen.dart';
import 'package:mc01/pages/GaleriaScreen.dart';
import 'package:mc01/pages/LmaternaScreen.dart';
import 'package:mc01/pages/NuevoScreen.dart';
import 'package:mc01/pages/login_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '',
      routes: {
        '/LoginPage': (context) => LoginPage(),
        '/autores': (context) => AutoresScreen(),
        '/galeria': (context) => GaleriaScreen(),
        '/lenguamaterna': (context) => LmaternaScreen(),
        '/informacion': (context) => InformacionScreen(),
        '/nuevo': (context) => NuevoScreen(),
      },
      title: 'Memoria Colectiva',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Memoria colectiva'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.lightBlue,
          Colors.blue,
          Colors.blueAccent,
          Colors.indigoAccent,
          Colors.indigo
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),

        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title:
                Text(widget.title, style: const TextStyle(color: Colors.white)),
          ),
          body: FutureBuilder(
            future:contenido(),
            builder: (BuildContext context, AsyncSnapshot snapshot){
              if (snapshot.hasData) {
                var post = snapshot.data;
                return ListView.builder(
                    itemCount: post.lenght,
                    itemBuilder:(context, index){
                      Map post = snapshot.data[index];
                      return Text(post['title']['rendered']);
                    }
                );

              } else {
                return Center (child: CircularProgressIndicator(),);

              }
            },
          ),


          floatingActionButton: const FloatingActionButton(
            onPressed: (null),
            tooltip: 'Increment',
            child: Icon(Icons.add),
            backgroundColor: Colors.lightBlue,
          ),
          drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.indigo,
                    image: DecorationImage(
                        image: AssetImage('images/logomc.png'),
                        fit: BoxFit.fitHeight,
                        scale: 0.1),
                  ),
                  child: Stack(
                    children: const [
                      Positioned(
                        bottom: 8.0,
                        left: 4.0,
                        child: Text(
                          "Memoria Colectiva",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      )
                    ],
                  ),
                ),
                ListTile(
                  leading:
                      const Icon(Icons.home_filled, color: Colors.lightBlue),
                  title: const Text('Inicio'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.people,
                    color: Colors.lightBlue,
                  ),
                  title: const Text('Autores'),
                  onTap: () {
                    Navigator.pushNamed(context, '/autores');
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.image,
                    color: Colors.lightBlue,
                  ),
                  title: const Text('Fotografías'),
                  onTap: () {
                    Navigator.pushNamed(context, '/galeria');
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.pages,
                    color: Colors.lightBlue,
                  ),
                  title: const Text('Lengua Materna'),
                  onTap: () {
                    Navigator.pushNamed(context, '/lenguamaterna');
                  },
                ),
                Divider(),
                ListTile(
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                  leading: const Icon(
                    Icons.info,
                    color: Colors.lightBlue,
                  ),
                  title: const Text('Información'),
                  onTap: () {
                    Navigator.pushNamed(context, '/informacion');
                  },
                ),
              ],
            ),
          ),
        ));
  }
}








