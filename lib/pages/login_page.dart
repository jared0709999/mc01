import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String id= 'login_page';

  @override
  _LoginPageState createState() => _LoginPageState();
  }

  class _LoginPageState extends State <LoginPage> {
  @override
    Widget build(BuildContext contest) {
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                  child: Image.asset('images/memorialogo.png',
                   height: 250.0,
                  ),
              ),
           SizedBox(height: 15.0,),
             _userTextField(),
             SizedBox(height: 15,),
             _passwordTextField(),
              SizedBox(height: 20.0,),
              _bottonLogin(),
            ],
          ),
        )
      )


    );
  }

  Widget _userTextField(){
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              hintText: 'ejemplo@correo.com',
              labelText: 'Correo electrónico',
            ),
            onChanged: (value){

            },
          ),
        );
      }
    );
  }

  Widget _passwordTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.password),
                hintText: 'Contraseña',
                labelText: 'Contraseña',
              ),
              onChanged: (value){

              },
            ),
          );
        }
    );
  }
  Widget _bottonLogin(){
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return RaisedButton(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal:80.0, vertical: 15.0),
              child: Text('Iniciar Sesión',
                style:TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation:10.0,
            color: Colors.lightBlueAccent,
            onPressed: (){
            },
          );
        }
    );
  }
  }




