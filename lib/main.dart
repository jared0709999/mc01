import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/autores': (context) => AutoresScreen(),
        '/galeria': (context) => GaleriaScreen(),
        '/lenguamaterna': (context) => LmaternaScreen(),
        '/informacion': (context) => InformacionScreen(),
      },
      title: 'Flutter Demo',
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
            gradient: LinearGradient(
                colors: [Colors.lightBlue, Colors.blue, Colors.blueAccent, Colors.indigoAccent, Colors.indigo],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(widget.title, style: const TextStyle(color: Colors.white)),
          ),
          body: Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(

                  child: Padding(padding: const EdgeInsets.all(20.0),

                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.album),
                            title: Text('The Enchanted Nightingale'),
                            subtitle: Text(
                                'Music by Julie Gable. Lyrics by Sidney Stein.'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              TextButton(
                                child: const Text('BUY'),
                                onPressed: () {
                                  /* ... */
                                },
                              ),
                              const SizedBox(width: 8),
                              TextButton(
                                child: const Text('LISTEN'),
                                onPressed: () {
                                  /* ... */
                                },
                              ),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ],
                      ),
                    ),



                  ),
                ),

                RaisedButton(
                  child: Text('Autor'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/autores');
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: const FloatingActionButton(
            onPressed: null,
            tooltip: 'Increment',
            child: Icon(Icons.add),
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
                  leading: const Icon(Icons.home_filled, color: Colors.lightBlue
                  ),
                  title: const Text('Inicio'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.people, color: Colors.lightBlue,),
                  title: const Text('Autores'),
                  onTap: () {
                    Navigator.pushNamed(context, '/autores');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.image, color: Colors.lightBlue,),
                  title: const Text('Fotografías'),
                  onTap: () {
                    Navigator.pushNamed(context, '/galeria');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.pages, color: Colors.lightBlue,),
                  title: const Text('Lengua Materna'),
                  onTap: () {
                    Navigator.pushNamed(context, '/lenguamaterna');
                  },
                ),

                Divider(),

                ListTile(
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                  leading: const Icon(Icons.info, color: Colors.lightBlue,),
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

class AutoresScreen extends StatelessWidget {
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

class LmaternaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lengua Materna", style: TextStyle(color: Colors.white),)
      ),
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

class InformacionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.info),
        title: const Text("Información", style: TextStyle(color: Colors.white),)
      ),
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
