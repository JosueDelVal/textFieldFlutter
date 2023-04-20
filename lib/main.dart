import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Crear cuenta'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title),
        ),
        body: Container(
            child: ListView(padding: EdgeInsets.all(20), children: const [
          Text(
            'Ingresa los siguientes datos',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "Correo Electronico",
                helperText: "Ingresa tu correo ",
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.green,
                )),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "Nombre de usuario",
                helperText: "Elije tu usuario ",
                prefixIcon: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.green,
                )),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: "Contraseña",
                helperText: "Escribe tu contraseña",
                prefixIcon: Icon(
                  Icons.password,
                  color: Colors.green,
                )),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: "Confirmar contraseña",
                helperText: "Vuelve a escribir tu contraseña ",
                prefixIcon: Icon(
                  Icons.password,
                  color: Colors.green,
                )),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "Numero de telefono",
                helperText: "Ingresa un numero de celular ",
                prefixIcon: Icon(
                  Icons.phone,
                  color: Colors.green,
                )),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "Cumpleaños",
                helperText: "Ingresa tu fecha de nacimiento ",
                prefixIcon: Icon(
                  Icons.cake,
                  color: Colors.green,
                )),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "¿Eres humano?",
                helperText: "Responde Si o No ",
                prefixIcon: Icon(
                  Icons.settings,
                  color: Colors.green,
                )),
          ),
        ])));
  }
}
